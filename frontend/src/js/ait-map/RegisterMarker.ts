import * as L from 'leaflet';
import { displayNameElm, getSettings } from './RegisterMenu';
import { PathData, PointData } from './type';

const POINT_DB = new Map<string, PointData>();
const PATH_DB = new Map<string, PathData>();

const OPACITY = { UNSELECT: 0.5, SELECT: 1 };

class RegisterMarker {
    point: PointData;
    marker: L.Marker;
    reach: Map<string, Path>;

    static selected: RegisterMarker | undefined;

    constructor (map: L.Map, point: PointData) {
        this.point = point;
        this.marker = L.marker(point.latlng, { draggable: true });
        this.reach = new Map();

        this.marker.on('movestart', (e) => {
            this.select(true);
        });

        this.marker.on('move', (e) => {
            for (const path of this.reach.values()) {
                path.update();
            }
        })

        this.marker.on('moveend', (e) => {
            point.latlng = this.marker.getLatLng();
            POINT_DB.set(point.id, point);
        });

        this.marker.on('click', (e) => {
            const settings = getSettings();
            if (settings.mode === 1 && RegisterMarker.selected) {
                const line = this.connectTo(RegisterMarker.selected);
                console.log(line);
                line?.addTo(map);
            }

            if (this.marker === RegisterMarker.selected?.marker) {
                this.select(false);
            } else {
                this.select(true);
            }
        });

        this.select(true);
        this.marker.addTo(map);
        POINT_DB.set(point.id, point);
    }

    setPoint (point: Partial<PointData>) {
        Object.assign(this.point, point);
        POINT_DB.set(this.point.id, this.point);
    }

    select (selectThis: boolean) {
        RegisterMarker.selected?.marker.setOpacity(OPACITY.UNSELECT);
        if (selectThis) this.marker.setOpacity(OPACITY.SELECT);
        displayNameElm.value = selectThis ? this.point.jp ?? "" : "";
        RegisterMarker.selected = selectThis ? this : undefined;
    }

    connectTo (to: RegisterMarker) {
        const from: RegisterMarker = this;
        if (from.reach.has(to.point.id)) return;
        const path = new Path(from, to);

        from.reach.set(to.point.id, path);
        to.reach.set(from.point.id, path);
        return path.line;
    }

    static getId () {
        const now = new Date();
        return Number("" + now.getFullYear() + now.getMonth() + now.getDate() + now.getHours() + now.getMinutes() + now.getSeconds() + now.getMilliseconds()).toString(36);
    }

    static toString() {
        return JSON.stringify({
            points: [...POINT_DB.values()],
            paths: [...PATH_DB.values()]
        });
    }
}

class Path {
    via: RegisterMarker[];
    line: L.Polyline;
    id: string;
    constructor (...via: RegisterMarker[]) {
        this.id = Path.getId();
        this.via = via;
        this.line = L.polyline(
            this.getLatlngs(),
            { color: 'green', opacity: 0.5 }
        );
    }

    setVia (...via: RegisterMarker[]) {
        this.via = via;
    }

    update () {
        this.line.setLatLngs(this.getLatlngs());
    }

    getLatlngs () {
        return this.via.map(v => v.marker.getLatLng());
    }

    static getId () {
        const now = new Date();
        return Number("" + now.getFullYear() + now.getMonth() + now.getDate() + now.getHours() + now.getMinutes() + now.getSeconds() + now.getMilliseconds()).toString(36);
    }
}

export default RegisterMarker;
