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

export default coordinateLog;
