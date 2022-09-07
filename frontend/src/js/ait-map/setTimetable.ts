import { getStrTimetable } from "./timetableStorage";
import { HasLessonDay } from "./type";

const setTimetable = () => {
    const doms = document.querySelectorAll<HTMLElement>('.timetable-classname');
    const data = getStrTimetable();

    document.querySelectorAll<HTMLElement>('.timetable-week').forEach((day, k) => {
        day.querySelectorAll<HTMLElement>('.timetable-classname').forEach((dom, k) => {
            dom.innerText = data[day.dataset.day as HasLessonDay][k] || '---';
        })
    });
};

export default setTimetable;
