import * as L from 'leaflet';
import RegisterMarker from './RegisterMarker';
import { displayNameElm, outputBtnElm, getSettings, inputBtnElm } from './RegisterMenu';
import { PointData } from './type';

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

    inputBtnElm.onclick = async (e) => {
        const inputFile = document.createElement('input');
        inputFile.type = 'file';
        inputFile.accept = '.json';
        await new Promise((r) => {
            inputFile.onchange = r;
            inputFile.click();
        });
        if (inputFile.files === null) return;
        const [file] = inputFile.files;

        const reader = new FileReader();
        await new Promise((r) => {
            reader.onload = r;
            reader.readAsText(file, 'UTF-8');
        });
        console.log(reader.result);
        if (typeof reader.result !== 'string') return;
        const data = JSON.parse(reader.result);
        if (!Array.isArray(data.points) || !Array.isArray(data.paths)) return;
        for (const inputPoint of data.points) {
            if (inputPoint.id === undefined || inputPoint.latlng === undefined) return;
            if (!Number.isFinite(inputPoint.latlng.lat) || !Number.isFinite(inputPoint.latlng.lng)) return;
            const pointData = {
                id: inputPoint.id,
                jp: inputPoint.jp,
                latlng: inputPoint.latlng
            };
            const registerMarker = new RegisterMarker(map, pointData);
        }
    };

    outputBtnElm.onclick = (e) => {
        const blob = new Blob([RegisterMarker.toString()], { type: 'text/json' });
        const link = document.createElement('a');
        link.href = URL.createObjectURL(blob);
        link.download = 'routeData.json';
        link.click();
    };
};

export default registerRouteData;
