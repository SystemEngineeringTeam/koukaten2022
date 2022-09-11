import * as L from 'leaflet';
import RegisterMarker from './RegisterMarker';
import { displayNameElm, outputBtnElm, getSettings, inputBtnElm } from './RegisterMenu';
import { RouteData } from './type';

const registerRouteData = (map: L.Map) => {
    map.on('click', (e) => {
        const settings = getSettings();
        if (settings.mode === 0) {
            const point = {
                id: Symbol(),
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
        if (typeof reader.result !== 'string') return;
        const data = convertToPointData(reader.result);

        const points = new Map<Symbol, RegisterMarker>();
        for (const point of data.points) {
            const registerMarker = new RegisterMarker(map, point);
            points.set(point.id, registerMarker);
        }

        for (const path of data.paths) {
            const fromPoint = points.get(path.from);
            const toPoint = points.get(path.to);
            if (fromPoint === undefined || toPoint === undefined) continue;
            fromPoint.connectTo(toPoint)?.addTo(map);
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

const convertToPointData = (string: string) => {
    const result: RouteData = { points: [], paths: [] };
    const data = JSON.parse(string);

    if (!Array.isArray(data.points) || !Array.isArray(data.paths)) return result;
    for (const inputPoint of data.points) {
        if (inputPoint.id === undefined || inputPoint.latlng === undefined) continue;
        if (!Number.isFinite(inputPoint.latlng.lat) || !Number.isFinite(inputPoint.latlng.lng)) continue;
        result.points.push({
            id: inputPoint.id,
            jp: inputPoint.jp,
            latlng: inputPoint.latlng
        });
    }

    for (const inputPath of data.paths) {
        if (typeof inputPath.from !== 'string' || typeof inputPath.to !== 'string' || !Number.isInteger(inputPath.distance)) continue;
        result.paths.push({
            from: inputPath.from,
            to: inputPath.to,
            distance: inputPath.distance
        });
    }

    return result;
};

export default registerRouteData;
