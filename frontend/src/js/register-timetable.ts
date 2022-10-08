document.querySelectorAll<HTMLDivElement>(".timetable-cell").forEach(v => {
    v.onclick = (e) => {
        const { day, lecture } = (e.currentTarget as HTMLDivElement).dataset;
        console.log(day, lecture);
        open(`/chooseSubject.html?day=${day}&lecture=${lecture}`);
    };
})
