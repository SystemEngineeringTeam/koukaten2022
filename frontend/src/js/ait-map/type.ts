export type PointData = {
    id: Symbol,
    jp?: string,
    latlng: { lat: number, lng: number }
};
export type PathData = { from: Symbol, to: Symbol, distance: number };
export type RouteData = { points: PointData[], paths: PathData[] };
export type HasLessonDay = 'mon' | 'tue' | 'wed' | 'thu' | 'fri' | 'sat';
export type TimetableData = Record<HasLessonDay, (string | null)[]>;
