import { HasLessonDay, TimetableData } from "./ait-map/type";

const popupMenu = (target: HTMLElement) => {
    const { day, lecture } = getDataset(target);

    // テストとして一旦prompt
    const name = window.prompt('授業の名前');
    if (name === null) return;
    const data = getStorageTimetableData()
    data[day][lecture] = name;
    target.innerText = name;

    localStorage.setItem('timetable', JSON.stringify(data));
};

const getStorageTimetableData = () => {
    const storage = localStorage.getItem('timetable');
    if (storage) return JSON.parse(storage) as TimetableData;
    const data: TimetableData = {
        mon: new Array(7).fill(null),
        tue: new Array(7).fill(null),
        wed: new Array(7).fill(null),
        thu: new Array(7).fill(null),
        fri: new Array(7).fill(null),
        sat: new Array(7).fill(null),
    };
    localStorage.setItem('timetable', JSON.stringify(data));
    return data;
}

const getDataset = (target: HTMLElement) => ({
    day: target.dataset.day as HasLessonDay,
    lecture: Number(target.dataset.lecture)
});

window.onload = () => {
    const data = getStorageTimetableData();
    document.querySelectorAll<HTMLElement>('.timetable-cell').forEach((cell) => {
        const { day, lecture } = getDataset(cell);

        cell.innerText = data[day][lecture] ?? '---';
        cell.onclick = popupMenu.bind(null, cell);
    })
};
