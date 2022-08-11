import * as L from 'leaflet';
import RegisterMarker from './RegisterMarker';

const modeElms = document.querySelectorAll<HTMLInputElement>('input[type="radio"][name="register-mode"]');
const isAutoConnectElm = document.querySelector<HTMLInputElement>('#auto-connect');
const displayNameElm = document.querySelector<HTMLInputElement>('#display-name');
const outputBtnElm = document.querySelector<HTMLButtonElement>('#output-btn');
const outputField = document.querySelector<HTMLDivElement>('#output');

const registerRouteData = (map: L.Map) => {
    map.on('click', (e) => {
        const settings = getSettings();
        if (settings.mode === 0) {
            const point = {
                id: RegisterMarker.getId(),
                jp: undefined,
                latlng: e.latlng
            };
            const registerMarker = new RegisterMarker(point).addTo(map);
        }
    });

    if (displayNameElm) {
        displayNameElm.onchange = (e) => {
            RegisterMarker.selected?.setPoint({ jp: displayNameElm.value });
        };
    }

    if (outputBtnElm && outputField){
        outputBtnElm.onclick = (e) => {
            outputField.innerText = RegisterMarker.toString();
        }
    };
};

const getSettings = () => {
    const mode = Number(Array.from(modeElms).find(v => v.checked)?.value ?? 0);
    const isAutoConnect = isAutoConnectElm?.checked ?? false;
    const displayName = displayNameElm?.value ?? "";

    return { mode, isAutoConnect, displayName };
};

export default registerRouteData;
