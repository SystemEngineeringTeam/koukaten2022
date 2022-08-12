import * as L from 'leaflet';
import { displayNameElm, getSettings } from './RegisterMenu';
import { PathData, PointData } from './type';

const POINT_DB = new Map<string, PointData>();
const PATH_DB = new Map<string, PathData>();

const OPACITY = { UNSELECT: 0.5, SELECT: 1 };

class RegisterMarker {
    point: PointData;
    marker: L.Marker;
    reach: Map<string, RegisterMarker>;

    static selected: RegisterMarker | undefined;

    constructor (map: L.Map, point: PointData) {
        this.point = point;
        this.marker = L.marker(point.latlng, { draggable: true });
        this.reach = new Map();

        this.marker.on('movestart', (e) => {
            this.select(true);
        });

        this.marker.on('moveend', (e) => {
            point.latlng = this.marker.getLatLng();
            POINT_DB.set(point.id, point);
        });

        this.marker.on('click', (e) => {
            const settings = getSettings();
            if (settings.mode === 1 && RegisterMarker.selected) {
                const line = this.connectTo(RegisterMarker.selected, RegisterMarker.getId());
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

    connectTo (to: RegisterMarker, id: string, turn: boolean = false): L.Polyline | undefined {
        if (this.reach.has(to.point.id)) return;
        const distance = L.latLng(this.point.latlng).distanceTo(to.point.latlng);
        this.reach.set(to.point.id, to);

        if (turn) {
            PATH_DB.set(id, {
                from: this.point.id,
                to: to.point.id,
                distance
            });
            const line = L.polyline([this.point.latlng, to.point.latlng], { color: 'red', opacity: 0.5 });
            return line;
        } else {
            return to.connectTo(this, id, true);
        }
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

export default RegisterMarker;
