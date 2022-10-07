import * as L from 'leaflet';
import routeData from '../../data/aitData.json';
import Dijkstra from './Dijkstra';

const NAMED_POINT = routeData.points.filter(v => v.jp);
const routeSerch = (map: L.Map) => {
    const { from, to } = setDom();
    const d = new Dijkstra(...routeData.paths.map(
        ({ from, to, distance }) => ({ from, to, weight: distance })
    ));
    let routeLine: L.Polyline | undefined;

    from.onchange = to.onchange = () => {
        const route = d.getRoute(from.value, to.value);
        if (route === undefined) return;
        const viaIds = [route[0].to, ...route.map(v => v.from)];
        console.log(viaIds);
        const viaLatlngs = viaIds.map(v => routeData.points.find(w => w.id === v)!.latlng);
        routeLine?.remove();
        routeLine = L.polyline(viaLatlngs, { color: 'green', opacity: 0.5 }).addTo(map);
    };


};

const setDom = () => {
    const optionDoms = NAMED_POINT.map((v, k) =>
        `<option value="${v.id}"${k ? "" : " selected"}>${v.jp}</option>`
    ).join();

    document.querySelector('body')!.insertAdjacentHTML('beforeend', `
        <div class="wrapper">
            <label>
                From
                <select id="route-from">${optionDoms}</select>
            <label>
                To
                <select id="route-to">${optionDoms}</select>
            </label>
        </div>
    `);

    return {
        from: document.querySelector<HTMLSelectElement>('#route-from')!,
        to: document.querySelector<HTMLSelectElement>('#route-to')!
    };
};

export default routeSerch;