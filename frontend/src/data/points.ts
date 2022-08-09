type Points = {
    [id: string]: {
        jp: string,
        coordinate: [number, number]
    }
};

const points: Points = {
    "MainGate": {
        "jp": "正門",
        "coordinate": [35.18186301683754, 137.10961639881137]
    },
    "BusStopMainGate": {
        "jp": "バス停(正門)",
        "coordinate": [35.18225761957009, 137.10985243320468]
    },
    "BusStopDormitoryFront": {
        "jp": "バス停(合宿寮前)",
        "coordinate": [35.182814444611296, 137.11092531681064]
    },
    "BuildingNew1Front": {
        "jp": "新1号館前",
        "coordinate": [35.18369571109226, 137.11085557937625]
    },
    "HeadquartersBuilding": {
        "jp": "本部棟",
        "coordinate": [35.183090663491726, 137.11204111576083]
    }
};

export default points;