import * as L from 'leaflet';
import RegisterMarker from './RegisterMarker';
import { displayNameElm, outputBtnElm, outputField, getSettings } from './RegisterMenu';

const registerRouteData = (map: L.Map) => {
    map.on('click', (e) => {
        const settings = getSettings();
        if (settings.mode === 0) {
            const point = {
                id: RegisterMarker.getId(),
                jp: undefined,
                latlng: e.latlng
            };
            const registerMarker = new RegisterMarker(map, point);
        }
    });

    displayNameElm.onchange = (e) => {
        RegisterMarker.selected?.setPoint({ jp: displayNameElm.value });
    };

    outputBtnElm.onclick = (e) => {
        outputField.innerText = RegisterMarker.toString();
    }
};

export default registerRouteData;