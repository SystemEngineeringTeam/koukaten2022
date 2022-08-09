import coordinateLog from './ait-map/coordinateLog';
import loads from '../data/loads';
import points from '../data/points';

import * as L from 'leaflet';

const DISPLAY_RANGE: [[number, number], [number, number]] = [
    [35.18760, 137.103485],
    [35.17910, 137.125330]
];

const main = () => {
    const map = creatMap();

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '<a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    coordinateLog(map);
    displayData(map);
};

const creatMap = () => {
    const bounds = L.latLngBounds(...DISPLAY_RANGE);
    const map = L.map('main-map', {
        zoom: 17,
        minZoom: 17,
        maxZoom: 18,
        center: bounds.getCenter(),
        maxBounds: bounds
    });
    return map;
}

// テスト用
const displayData = (map: L.Map) => {
    for (const [key, val] of Object.entries(points)) {
        if (val.jp === undefined) continue;
        L.marker(val.coordinate as [number, number])
            .addTo(map)
            .bindPopup(val.jp);
    }

    for (const load of loads) {
        const path = [
            points.find(v => v.id === load.start)!.coordinate,
            ...(load.via ?? []),
            points.find(v => v.id === load.end)!.coordinate
        ] as [number, number][];
        L.polyline(path, { color: "red", weight: 5, opacity: 0.5 }).addTo(map);
    }
}

main();
