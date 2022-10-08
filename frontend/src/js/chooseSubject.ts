window.onload = () => {
    const params = new URLSearchParams(window.location.search);
    console.log(params.get('lecture'));
    document.querySelector<HTMLSelectElement>('#day')!.value = params.get('day')!;
    document.querySelector<HTMLSelectElement>('#lecture')!.value = params.get('lecture')!;
};
