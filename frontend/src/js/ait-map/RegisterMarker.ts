import * as L from 'leaflet';
import { displayNameElm, getSettings } from './RegisterMenu';
import { PathData, PointData } from './type';

const POINT_DB = new Map<string, PointData>();
const PATH_DB = new Map<string, PathData>();

const OPACITY = { UNSELECT: 0.5, SELECT: 1 };

class RegisterMarker {
    id: string;
    jp: string | undefined;
    marker: L.Marker;
    reach: Map<string, Path>;

    static selected: RegisterMarker | undefined;

    constructor (map: L.Map, point: PointData) {
        this.id = point.id;
        this.jp = point.jp;
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
                line?.addTo(map);
            } else if (settings.mode === 2) {
                this.select(false);
                for (const path of this.reach.values()) {
                    for (const point of path.via) {
                        point.reach.delete(this.id);
                    }
                    path.line.remove();
                    PATH_DB.delete(path.id);
                }
                this.marker.remove();
                POINT_DB.delete(this.id);
                return;
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
        this.id = point.id ?? this.id;
        this.jp = point.jp ?? this.jp;
        const latlng = this.marker.getLatLng();
        if (point.latlng !== undefined && !latlng.equals(point.latlng)) {
            this.marker.setLatLng(point.latlng);
        }
        POINT_DB.set(this.id, {
            latlng, id: this.id, jp: this.jp
        });
    }

    select (selectThis: boolean) {
        RegisterMarker.selected?.marker.setOpacity(OPACITY.UNSELECT);
        if (selectThis) this.marker.setOpacity(OPACITY.SELECT);
        displayNameElm.value = selectThis ? this.jp ?? "" : "";
        RegisterMarker.selected = selectThis ? this : undefined;
    }

    connectTo (to: RegisterMarker) {
        const from: RegisterMarker = this;
        if (from.reach.has(to.id)) return;
        const path = new Path(from, to);

        from.reach.set(to.id, path);
        to.reach.set(from.id, path);
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
            [],
            { color: 'green', opacity: 0.5 }
        );
        this.update();
    }

    setVia (...via: RegisterMarker[]) {
        this.via = via;
    }

    update () {
        PATH_DB.set(this.id, {
            from: this.via[0].id,
            to: this.via[1].id,
            distance: this.getDistance()
        });
        this.line.setLatLngs(this.getLatlngs());
    }

    getLatlngs () {
        return this.via.map(v => v.marker.getLatLng());
    }

    getDistance () {
        let distance = 0;
        let prev: undefined | L.LatLng;
        for (const curr of this.getLatlngs()) {
            if (prev === undefined) {
                prev = curr;
                continue;
            }
            distance += Math.sqrt((prev.lat - curr.lat) ** 2 + (prev.lng - curr.lng) ** 2);
        }
        return distance;
    }

    static getId () {
        const now = new Date();
        return Number("" + now.getFullYear() + now.getMonth() + now.getDate() + now.getHours() + now.getMinutes() + now.getSeconds() + now.getMilliseconds()).toString(36);
    }
}

export default RegisterMarker;
