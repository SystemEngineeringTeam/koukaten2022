import * as L from 'leaflet';

// テスト用、コンソールでの緯度経度表示
const coordinateLog = (map: L.Map) => {
    let marked: L.Marker;
    map.on('click', (e) => {
        if (marked) marked.remove();
        marked = L.marker(e.latlng, { draggable: true }).addTo(map);

        popopLatlng(marked, e.latlng);

        marked.on('dragend', (e) => {
            popopLatlng(marked, marked.getLatLng());
        })
    })
};

const popopLatlng = (marker: L.Marker, latlng: L.LatLng) => {
    marker.bindPopup(`${latlng.lat}, ${latlng.lng}`).openPopup();
}

export default coordinateLog;
