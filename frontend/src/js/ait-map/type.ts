export type PointData = {
    id: string,
    jp?: string,
    latlng: { lat: number, lng: number }
};
export type PathData = { from: string, to: string };
export type RouteData = { points: PointData[], paths: PathData[] };
