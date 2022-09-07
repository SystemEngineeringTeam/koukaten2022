import * as L from 'leaflet';
import setTimetable from './ait-map/setTimetable';

const DISPLAY_RANGE: [[number, number], [number, number]] = [
    [35.18760, 137.103485],
    [35.17910, 137.125330]
];

const EXAMPLE_ROUTE = [
    { lat: 35.18187265927957, lng: 137.1096004941501 },
    { lat: 35.182183312934555, lng: 137.10973846027628 },
    { lat: 35.182555796201996, lng: 137.11021184921267 },
    { lat: 35.18272236183807, lng: 137.1102547645569 },
    { lat: 35.18279691647735, lng: 137.1108448505402 },
    { lat: 35.18282322788574, lng: 137.1109199523926 },
    { lat: 35.18368695672517, lng: 137.1108448505402 },
    { lat: 35.18387548034768, lng: 137.11355388164523 },
    { lat: 35.18399385843732, lng: 137.11372017860415 },
    { lat: 35.184353385627205, lng: 137.11368799209598 },
    { lat: 35.18441037736941, lng: 137.1148467063904 },
    { lat: 35.18441479053015, lng: 137.11518466472629 },
    { lat: 35.18439676331936, lng: 137.1152597665787 },
    { lat: 35.184813443458225, lng: 137.11556017398837 },
    { lat: 35.185081746496195, lng: 137.11551725864413 }
];

const main = () => {
    const map = creatMap();

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '<a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    L.polyline(EXAMPLE_ROUTE, { color: 'red', opacity: 0.5 }).addTo(map);

    setTimetable();
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
};

window.onload = main;
