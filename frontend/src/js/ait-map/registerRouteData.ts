import * as L from "leaflet";

const registerRouteData = (map: L.Map) => {
    map.on('click', (e) => {
        console.log(getSettings());
    });
};

const getSettings = () => {
    const modeElms = document.getElementsByName('register-mode') as NodeListOf<HTMLInputElement>;
    const mode = Number(Array.from(modeElms).find(v => v.checked)?.value ?? 0);
    const isAutoConnectElm = document.getElementById('auto-connect') as HTMLInputElement;
    const isAutoConnect = isAutoConnectElm.checked;
    const displayNameElm = document.getElementById('display-name') as HTMLInputElement;
    const displayName = displayNameElm.value;

    return { mode, isAutoConnect, displayName };
};

export default registerRouteData;
