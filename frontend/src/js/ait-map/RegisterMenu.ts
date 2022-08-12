document.querySelector('body')!.insertAdjacentHTML('beforeend', `
    <div id="for-register-data">
    <div class="wrapper">
        <label><input type="radio" name="register-mode" value="0" checked>ポイントの追加</label>
        <label><input type="radio" name="register-mode" value="1">ルートの追加</label>
        <label><input type="radio" name="register-mode" value="2">ポイント・ルートの削除</label>
    </div>
    <div class="wrapper">
        <label><input type="checkbox" id="auto-connect">連続して接続</label>
    </div>
    <div class="wrapper">
        <label>表示名<input type="text" id="display-name"></label>
    </div>
    <div class="wrapper">
        <input type="button" value="出力" id="output-btn">
    </div>
    <div id="output" style="background: rgb(173, 173, 173)"></div>
    </div>
`);

export const modeElms = document.querySelectorAll<HTMLInputElement>('input[type="radio"][name="register-mode"]')!;
export const isAutoConnectElm = document.querySelector<HTMLInputElement>('#auto-connect')!;
export const displayNameElm = document.querySelector<HTMLInputElement>('#display-name')!;
export const outputBtnElm = document.querySelector<HTMLButtonElement>('#output-btn')!;
export const outputField = document.querySelector<HTMLDivElement>('#output')!;

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
