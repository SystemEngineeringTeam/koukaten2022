import * as L from 'leaflet';
import routeData from '../../data/routeData.json';
import DataManager from './dataManager';
import { PointData } from './type';

const modeElms = document.querySelectorAll<HTMLInputElement>('input[type="radio"][name="register-mode"]');
const isAutoConnectElm = document.querySelector<HTMLInputElement>('#auto-connect');
const displayNameElm = document.querySelector<HTMLInputElement>('#display-name');
const outputBtnElm = document.querySelector<HTMLButtonElement>('#output-btn');
const outputField = document.querySelector<HTMLDivElement>('#output');

const dataManager = new DataManager(routeData);

const registerRouteData = (map: L.Map) => {
    map.on('click', (e) => {
        const settings = getSettings();
        switch (settings.mode) {
            case 0:
                const data = {
                    id: DataManager.getId(),
                    jp: settings.displayName,
                    latlng: e.latlng
                };
                pointMarker(data).addTo(map);
                break;
            default:
                break;
        }
    });

    if (outputBtnElm && outputField){
        outputBtnElm.onclick = (e) => {
            outputField.innerText = dataManager.toString();
        }
    };
};

const pointMarker = (data: PointData) => {
    const marker = L.marker(data.latlng, { draggable: true });
    marker.on('moveend', (e) => {
        data.latlng = marker.getLatLng();
        dataManager.add('point', data);
    });

    dataManager.add('point', data);
    return marker;
};

const getSettings = () => {
    const mode = Number(Array.from(modeElms).find(v => v.checked)?.value ?? 0);
    const isAutoConnect = isAutoConnectElm?.checked ?? false;
    const displayName = displayNameElm?.value ?? "";

    return { mode, isAutoConnect, displayName };
};

export default registerRouteData;
