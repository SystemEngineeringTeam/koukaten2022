import * as L from 'leaflet';
import registerRouteData from './ait-map/registerRouteData';
import routeSerch from './ait-map/routeSerch';

const DISPLAY_RANGE: [[number, number], [number, number]] = [
    [35.18760, 137.103485],
    [35.17910, 137.125330]
];

const main = () => {
    const map = creatMap();

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '<a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    // registerRouteData(map);
    // routeSerch(map);
};

const creatMap = () => {
    const bounds = L.latLngBounds(...DISPLAY_RANGE);
    const map = L.map('main-map', {
        zoom: 20,
        minZoom: 17,
        maxZoom: 18,
        center: bounds.getCenter(),
        maxBounds: bounds
    });
    return map;
}

main();
