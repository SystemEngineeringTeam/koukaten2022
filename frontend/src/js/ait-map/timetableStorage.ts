import { TimetableData } from "./type";

const TIMETABLE_KEY = 'timetable';

export const getStrTimetable = () => {
    const storage = localStorage.getItem(TIMETABLE_KEY);
    if (storage) return JSON.parse(storage) as TimetableData;
    const data: TimetableData = {
        mon: new Array(7).fill(null),
        tue: new Array(7).fill(null),
        wed: new Array(7).fill(null),
        thu: new Array(7).fill(null),
        fri: new Array(7).fill(null),
        sat: new Array(7).fill(null),
    };
    setStrTimetable(data);
    return data;
};

export const setStrTimetable = (timetableData: TimetableData) => {
    localStorage.setItem(TIMETABLE_KEY, JSON.stringify(timetableData));
};
