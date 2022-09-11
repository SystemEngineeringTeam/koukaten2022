import { getStrTimetable } from "./ait-map/timetableStorage";
import { HasLessonDay, TimetableData } from "./ait-map/type";

// const popupMenu = (target: HTMLElement) => {
//     const { day, lecture } = getDataset(target);


//     // テストとして一旦prompt
//     const name = window.prompt('授業の名前');
//     if (name === null) return;
//     const data = getStrTimetable()
//     data[day][lecture] = name;
//     target.innerText = name;

//     localStorage.setItem('timetable', JSON.stringify(data));
// };

// const getDataset = (target: HTMLElement) => ({
//     day: target.dataset.day as HasLessonDay,
//     lecture: Number(target.dataset.lecture)
// });

// window.onload = () => {
//     const data = getStrTimetable();
//     document.querySelectorAll<HTMLElement>('.timetable-cell').forEach((cell) => {
//         const { day, lecture } = getDataset(cell);

//         cell.innerText = data[day][lecture] || '---';
//         cell.onclick = popupMenu.bind(null, cell);
//     })
// };



