import { getStrTimetable } from "./timetableStorage";

const setTimetable = () => {
    const doms = document.querySelectorAll<HTMLElement>('.timetable-classname');
    const data = getStrTimetable();

    doms.forEach((dom, k) => {
        dom.innerText = data['thu'][k] || '---';
    });
};

export default setTimetable;
