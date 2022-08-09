import coordinateLog from './ait-map/coordinateLog';

import points from '../data/points.json';
import loads from '../data/loads.json';

const DISPLAY_RANGE = [
    [35.18760, 137.103485],
    [35.17910, 137.125330]
];

const main = () => {
    const map = creatMap(DISPLAY_RANGE);

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '<a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    coordinateLog(map);
    displayData(map);
};

const creatMap = (range) => {
    const bounds = L.latLngBounds(...range);
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
const displayData = (map) => {
    for (const [key, val] of Object.entries(points)) {
        L.marker(val.coordinate)
            .addTo(map)
            .bindPopup(val.jp);
    }

    for (const load of loads) {
        const path = [
            points[load.start].coordinate,
            ...(load.via ?? []),
            points[load.end].coordinate
        ];
        L.polyline(path, { color: "red", weight: 5, opacity: 0.5 }).addTo(map);
    }
}

main();
