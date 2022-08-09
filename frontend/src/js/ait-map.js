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

// テスト用、コンソールでの緯度経度表示
const coordinateLog = (map) => {
    const crossIcon = L.icon({
        iconUrl: 'https://maps.gsi.go.jp/image/map/crosshairs.png',
        iconSize: [32, 32],
        iconAnchor: [16, 16]
    });

    const crossMarker = L.marker(map.getCenter(), {
        icon: crossIcon,
        zIndexOffset: 1000,
        interactive: false
    }).addTo(map);


    map.on('move', (e) => {
        crossMarker.setLatLng(map.getCenter());
    });

    map.on('moveend', (e) => {
        console.log(`${map.getCenter().lat}, ${map.getCenter().lng}`);
    });
};

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
