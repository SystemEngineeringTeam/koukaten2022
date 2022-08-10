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
    for (const point of routeData.points) {
        pointMarker(point).addTo(map);
    }

    map.on('click', (e) => {
        const settings = getSettings();
        switch (settings.mode) {
            case 0: {
                const data = {
                    id: DataManager.getId(),
                    jp: "",
                    latlng: e.latlng
                };
                pointMarker(data).addTo(map);
                break;
            }
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
    const marker = L.marker(data.latlng, { draggable: true, opacity: 0.5 });
    const updateSelected = updateSelectedGene(marker, data);
    marker.on('moveend', (e) => {
        updateSelected()
        data.latlng = marker.getLatLng();
        dataManager.add('point', data);
    });

    marker.on('click', (e) => {
        updateSelected();
    });

    updateSelected();
    dataManager.add('point', data);
    return marker;
};

const getSettings = () => {
    const mode = Number(Array.from(modeElms).find(v => v.checked)?.value ?? 0);
    const isAutoConnect = isAutoConnectElm?.checked ?? false;
    const displayName = displayNameElm?.value ?? "";

    return { mode, isAutoConnect, displayName };
};

let selected: L.Marker | undefined;
const updateSelectedGene = (marker: L.Marker, data: PointData) => () => {
    selected?.setOpacity(0.5);
    marker.setOpacity(1);

    selected = marker;

    if (displayNameElm) {
        displayNameElm.value = data.jp ?? "";
        displayNameElm.onchange = (e) => {
            data.jp = displayNameElm.value;
            dataManager.add('point', data);
        }
    }
}

export default registerRouteData;
