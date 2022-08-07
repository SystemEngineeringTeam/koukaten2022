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

// TODO いずれファイル分割する
const points = {
    "MainGate": {
        "jp": "正門",
        "coordinate": [35.18186301683754, 137.10961639881137]
    },
    "BusStopMainGate": {
        "jp": "バス停(正門)",
        "coordinate": [35.18225761957009, 137.10985243320468]
    },
    "BusStopDormitoryFront": {
        "jp": "バス停(合宿寮前)",
        "coordinate": [35.182814444611296, 137.11092531681064]
    },
    "BuildingNew1Front": {
        "jp": "新1号館前",
        "coordinate": [35.18369571109226, 137.11085557937625]
    },
    "HeadquartersBuilding": {
        "jp": "本部棟",
        "coordinate": [35.183090663491726, 137.11204111576083]
    }
};
/*


*/
const loads = [
    {
        "start": "MainGate",
        "end": "BusStopMainGate",
        "via": [[35.18215239236206, 137.10972368717196]]
    },
    {
        "start": "BusStopMainGate",
        "end": "BusStopDormitoryFront",
        "via": [[35.18256891592947, 137.11022257804873], [35.18273552475875, 137.11026012897494]]
    },
    {
        "start": "BusStopDormitoryFront",
        "end": "BuildingNew1Front"
    },
    {
        "start": "BusStopDormitoryFront",
        "end": "HeadquartersBuilding",
        "via": [[35.182840751211785, 137.11113989353183], [35.182836366778965, 137.11178898811343], [35.18293720867404, 137.11223959922793], [35.18311258558489, 137.11222887039187]]
    }
];

main();
