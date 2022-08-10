type PointData = {
    id: string,
    jp?: string,
    latlng: { lat: number, lng: number }
};
type PathData = { from: string, to: string };
type RouteData = { points: PointData[], paths: PathData[] };

class DataManager {
    routeData: RouteData;

    constructor (initialData?: RouteData) {
        this.routeData = initialData ?? { points: [], paths: [] };
    }

    add (type: 'point', data: PointData): boolean;
    add (type: 'path', data: PathData): boolean;
    add (...[type, data]: ['point', PointData] | ['path', PathData]) {
        if (type === 'point') {
            const existData = this.routeData.points.find(v => v.id === data.id);
            if (existData) {
                Object.assign(existData, data);
                return false;
            } else {
                this.routeData.points.push(data);
                return true;
            }
        } else {
            const isExist = this.routeData.paths.find(v => v.from === data.from || v.from === data.to);
            if (isExist) return false;
            this.routeData.paths.push(data);
            return true;
        }
    }

    remove (type: 'point', id: string): boolean;
    remove (type: 'path', [from, to]: [string, string]): boolean;
    remove (...[type, args]: ['point', string] | ['path', [string, string]]) {
        if (type === 'point') {
            const id = args;
            const index = this.routeData.points.findIndex(v => v.id === id);
            if (index === -1) return false;
            this.routeData.points.splice(index, 1);
            return true;
        } else {
            const [from, to] = args;
            const index = this.routeData.paths.findIndex(v => (
                (v.from === from && v.to === to)
                || (v.from === to && v.to === from)
            ));
            if (index === -1) return false;
            this.routeData.paths.splice(index, 1);
            return true;
        }
    }

    get (type: 'point', id: string): PointData | undefined;
    get (type: 'path', [from, to]: [string, string]): PathData | undefined;
    get (...[type, args]: ['point', string] | ['path', [string, string]]): any {
        if (type === 'point') {
            const id = args;
            const existData = this.routeData.points.find(v => v.id === id);
            return existData;
        } else {
            const [from, to] = args;
            const existData = this.routeData.paths.find(v => (
                (v.from === from && v.to === to)
                || (v.from === to && v.to === from)
            ));
            return existData;
        }
    }

    toString () {
        return JSON.stringify(this.routeData);
    }
}

export default DataManager;
