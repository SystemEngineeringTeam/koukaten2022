import * as L from 'leaflet';
import { PathData, PointData } from './type';

const POINT_DB = new Map<string, PointData>();
const PATH_DB = new Map<string, PathData>();

const OPACITY = { UNSELECT: 0.5, SELECT: 1 };

// TODO もうちょっと綺麗にしたい
const displayNameElm = document.querySelector<HTMLInputElement>('#display-name');

class RegisterMarker {
    point: PointData;
    marker: L.Marker;

    static selected: RegisterMarker | undefined;

    constructor (point: PointData) {
        this.point = point;
        this.marker = L.marker(point.latlng, { draggable: true });

        this.marker.on('movestart', (e) => {
            this.select(true);
        });

        this.marker.on('moveend', (e) => {
            point.latlng = this.marker.getLatLng();
            POINT_DB.set(point.id, point);
        });

        this.marker.on('click', (e) => {
            if (this.marker === RegisterMarker.selected?.marker) {
                this.select(false);
            } else {
                this.select(true);
            }
        });

        this.select(true);
        POINT_DB.set(point.id, point);
    }

    setPoint (point: Partial<PointData>) {
        Object.assign(this.point, point);
        POINT_DB.set(this.point.id, this.point);
    }

    addTo (map: L.Map): RegisterMarker {
        this.marker.addTo(map);
        return this;
    }

    select (selectThis: boolean) {
        RegisterMarker.selected?.marker.setOpacity(OPACITY.UNSELECT);
        if (selectThis) this.marker.setOpacity(OPACITY.SELECT);
        if (displayNameElm) displayNameElm.value = selectThis ? this.point.jp ?? "" : "";
        RegisterMarker.selected = selectThis ? this : undefined;
    }

    static getId () {
        const now = new Date();
        return Number("" + now.getFullYear() + now.getMonth() + now.getDate() + now.getHours() + now.getMinutes() + now.getSeconds() + now.getMilliseconds()).toString(36);
    }

    static toString() {
        return JSON.stringify({
            points: Array.from(POINT_DB.values()),
            paths: Array.from(PATH_DB.values())
        });
    }
}

export default RegisterMarker;
