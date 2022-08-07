const main = () => {
    const point = [35.18005, 137.1091];
    const size = [0.006545, 0.0114];
    const bounds = L.latLngBounds(
        point,
        point.map((v, k) => v + size[k])
    );

    const map = L.map('main-map', {
        zoom: 17,
        minZoom: 17,
        maxZoom: 18,
        center: bounds.getCenter()
    });

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '<a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

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

    const cityBounds = [
        [35.18760, 137.103485],
        [35.17910, 137.125330]
    ];
    map.setMaxBounds(cityBounds);
};

main();
