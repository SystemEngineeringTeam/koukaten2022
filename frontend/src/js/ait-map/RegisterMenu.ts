export const modeElms = document.querySelectorAll<HTMLInputElement>('input[type="radio"][name="register-mode"]')!;
export const isAutoConnectElm = document.querySelector<HTMLInputElement>('#auto-connect')!;
export const displayNameElm = document.querySelector<HTMLInputElement>('#display-name')!;
export const outputBtnElm = document.querySelector<HTMLButtonElement>('#output-btn')!;
export const inputBtnElm = document.querySelector<HTMLElement>('#input-btn')!;

export const getSettings = () => {
    const mode = Number([...modeElms].find(v => v.checked)?.value ?? 0);
    const isAutoConnect = isAutoConnectElm.checked;
    const displayName = displayNameElm.value;

    return { mode, isAutoConnect, displayName };
};

type setSettingsArg = {
    displayName?: string
};
export const setSettings = (setData: setSettingsArg) => {
    if (setData.displayName !== undefined) displayNameElm.value = setData.displayName;
}
