import * as L from 'leaflet';
import routeData from '../../data/routeData.json';
import { PointData } from './type';

const modeElms = document.querySelectorAll<HTMLInputElement>('input[type="radio"][name="register-mode"]');
const isAutoConnectElm = document.querySelector<HTMLInputElement>('#auto-connect');
const displayNameElm = document.querySelector<HTMLInputElement>('#display-name');
const outputBtnElm = document.querySelector<HTMLButtonElement>('#output-btn');
const outputField = document.querySelector<HTMLDivElement>('#output');

const pointData = new Map<string, PointData>();

const registerRouteData = (map: L.Map) => {
    for (const point of routeData.points) {
        pointMarker(point).addTo(map);
        pointData.set(point.id, point);
    }

    map.on('click', (e) => {
        const settings = getSettings();
        switch (settings.mode) {
            case 0: {
                const point = {
                    id: getId(),
                    jp: undefined,
                    latlng: e.latlng
                };
                pointMarker(point).addTo(map);
                break;
            }
            default:
                break;
        }
    });

    if (outputBtnElm && outputField){
        outputBtnElm.onclick = (e) => {
            outputField.innerText = JSON.stringify(Array.from(pointData.values()));
        }
    };
};

const pointMarker = (point: PointData) => {
    const marker = L.marker(point.latlng, { draggable: true, opacity: 0.5 });
    const updateSelected = updateSelectedGene(marker, point);
    marker.on('moveend', (e) => {
        updateSelected()
        point.latlng = marker.getLatLng();
        pointData.set(point.id, point);
    });

    marker.on('click', (e) => {
        if (marker === selected) {
            releaseSelected();
        } else {
            updateSelected();
        }
    });

    updateSelected();
    pointData.set(point.id, point);
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
            pointData.set(data.id, data);
        }
    }
};

const releaseSelected = () => {
    selected?.setOpacity(0.5);
    selected = undefined;
    if (displayNameElm) {
        displayNameElm.onchange = null;
    }
}

const getId = () => {
    const now = new Date();
    return Number("" + now.getFullYear() + now.getMonth() + now.getDate() + now.getHours() + now.getMinutes() + now.getSeconds() + now.getMilliseconds()).toString(36);
};

export default registerRouteData;
