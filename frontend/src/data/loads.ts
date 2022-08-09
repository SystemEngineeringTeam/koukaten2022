import points from './points';

type Loads = {
    start: typeof points[number]['id'],
    end: typeof points[number]['id'],
    via?: [number, number][]
}[];

const loads: Loads = [
    {
        start: 'MainGate',
        end: 'Busstop-MainGate',
        via: [[35.18215239236206, 137.10972368717196]]
    },
    {
        start: 'Busstop-MainGate',
        end: 'Busstop-nDormitory',
        via: [[35.18256891592947, 137.11022257804873], [35.18273552475875, 137.11026012897494]]
    },
    {
        start: 'Busstop-nDormitory',
        end: 'Bn1-sCross',
        via: [[35.18369571109226, 137.11085557937625]]
    },
    {
        start: 'Busstop-nDormitory',
        end: 'BHeadquarters-Entrance',
        via: [[35.182840751211785, 137.11113989353183], [35.182836366778965, 137.11178898811343], [35.18293720867404, 137.11223959922793], [35.18311258558489, 137.11222887039187]]
    },
    {
        start: 'Bn1-sCross',
        end: 'B10-sEntrance'
    },
    {
        start: 'Bn1-sCross',
        end: 'Bn1-seCross'
    },
    {
        start: 'Bn1-seCross',
        end: 'Bn1-eCross'
    },
    {
        start: 'Bn1-eCross',
        end: 'Bn1-eEntrance'
    }
];

export default loads;
