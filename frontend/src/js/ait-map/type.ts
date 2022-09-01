export type PointData = {
    id: string,
    jp?: string,
    latlng: { lat: number, lng: number }
};
export type PathData = { from: string, to: string, distance: number };
export type RouteData = { points: PointData[], paths: PathData[] };
export type HasLessonDay = 'mon' | 'tue' | 'wed' | 'thu' | 'fri' | 'sat';
export type TimetableData = Record<HasLessonDay, (string | null)[]>;
