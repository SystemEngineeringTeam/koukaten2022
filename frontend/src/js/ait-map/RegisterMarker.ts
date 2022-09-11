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
                this.connectTo(RegisterMarker.selected)?.addTo(map);
            } else if (settings.mode === 2) {
                this.select(false);
                this.deleat();
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
        if (point.id) this.id = point.id;
        if (point.jp) this.jp = point.jp;
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
        if (this.id === to.id) return;
        const path = new Path(from, to);

        from.reach.set(to.id, path);
        to.reach.set(from.id, path);
        return path.line;
    }

    deleat () {
        for (const [key, path] of this.reach) path.deleat();
        this.marker.remove();
        POINT_DB.delete(this.id);
    }

    static getId () {
        return Date.now().toString(36);
    }

    static toString() {
        const ids = new Id((i) => {
            const ALPHABET = 'abcdefghijklmnopqrstuvwxyz';
            let result = '';

            while (true) {
                if (i < ALPHABET.length) return ALPHABET[i] + result;
                result = ALPHABET[i % ALPHABET.length] + result;
                i = i / ALPHABET.length - 1 | 0;
            }
        });

        const points = Array.from(POINT_DB.values(), v => ({ ...v, id: ids.get(v.id) }));
        const paths = Array.from(PATH_DB.values(), v => ({ ...v, from: ids.get(v.from), to: ids.get(v.to) }));

        return JSON.stringify({ points, paths });
    }
}

class Path {
    from: RegisterMarker;
    to: RegisterMarker;
    line: L.Polyline;
    id: string;
    constructor (from: RegisterMarker, to: RegisterMarker) {
        this.id = Path.getId();
        this.from = from;
        this.to = to;
        this.line = L.polyline(
            [],
            { color: 'green', opacity: 0.5 }
        );
        this.line.on('click', () => {
            if (getSettings().mode === 2) {
                this.deleat();
            }
        });
        this.update();
    }

    setVia (from: RegisterMarker | undefined, to: RegisterMarker | undefined) {
        if (from !== undefined) this.from = from;
        if (to !== undefined) this.to = to;
    }

    update () {
        PATH_DB.set(this.id, {
            from: this.from.id,
            to: this.to.id,
            distance: this.getDistance()
        });
        this.line.setLatLngs(this.getLatlngs());
    }

    deleat () {
        this.from.reach.delete(this.to.id);
        this.to.reach.delete(this.from.id);
        this.line.remove();
        PATH_DB.delete(this.id);
    }

    getLatlngs () {
        return [this.from.marker.getLatLng(), this.to.marker.getLatLng()];
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
        return distance * 1e5 | 0;
    }

    static getId () {
        const now = new Date();
        return Date.now().toString(36);
    }
}

class Id {
    table: Map<string, string>;
    generator: (index: number) => string;

    constructor (generator: (index: number) => string = String) {
        this.table = new Map();
        this.generator = generator;
    }

    get (id: string): string {
        if (this.table.has(id)) {
            return this.table.get(id)!;
        } else {
            const generated = this.generator(this.table.size);
            this.table.set(id, generated);
            return generated;
        }
    }
}

export default RegisterMarker;
