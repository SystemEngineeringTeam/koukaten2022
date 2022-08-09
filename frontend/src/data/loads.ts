import points from './points';

type Loads = {
    start: typeof points[number]['id'],
    end: typeof points[number]['id'],
    via?: [number, number][]
}[];

const loads: Loads = [
    {
        "start": "MainGate",
        "end": "BusStopMainGate",
        "via": [[35.18215239236206, 137.10972368717196]]
    },
    {
        "start": "BusStopMainGate",
        "end": "BusStopDormitoryFront",
        "via": [[35.18256891592947, 137.11022257804873], [35.18273552475875, 137.11026012897494]]
    },
    {
        "start": "BusStopDormitoryFront",
        "end": "BuildingNew1Front"
    },
    {
        "start": "BusStopDormitoryFront",
        "end": "HeadquartersBuilding",
        "via": [[35.182840751211785, 137.11113989353183], [35.182836366778965, 137.11178898811343], [35.18293720867404, 137.11223959922793], [35.18311258558489, 137.11222887039187]]
    }
];

export default loads;
