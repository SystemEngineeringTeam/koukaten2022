type ConnectData = { from: string, to: string, weight: number };
type PathData = { id: string, distance: number };

class Dijkstra {
    routeNodes: Map<string, ConnectData[]>;

    constructor (...paths: ConnectData[]) {
        this.routeNodes = new Map();
        this.addPaths(...paths);
    }

    addPaths (...paths: ConnectData[]) {
        for (const { to, from, weight } of paths) {
            if (!this.routeNodes.has(from)) this.routeNodes.set(from, []);
            this.routeNodes.get(from)!.push({ from, to, weight });

            if (!this.routeNodes.has(to)) this.routeNodes.set(to, []);
            this.routeNodes.get(to)!.push({ from: to, to: from, weight });
        }
        return this.routeNodes.size;
    }

    getRoute (from: string, to: string) {
        if (!this.routeNodes.has(from) || !this.routeNodes.has(to)) return;
        const distance = new Map<string, number>([[from, 0]]);
        const adjacentNodes: Set<PathData> = new Set();
        adjacentNodes.add({ id: from, distance: 0 });
        while (true) {
            const nowNode = this.popNearestNode(adjacentNodes);
            if (nowNode === undefined) break;
            if (nowNode.distance !== distance.get(nowNode.id)) continue;
            if (nowNode.id === to) break;
            for (const reachable of this.routeNodes.get(nowNode.id)!) {
                const existLength = distance.get(reachable.to);
                const thisLength = nowNode.distance + reachable.weight;
                if (existLength === undefined) {
                    distance.set(reachable.to, thisLength);
                    adjacentNodes.add({ id: reachable.to, distance: thisLength });
                } else if (thisLength < existLength) {
                    distance.set(reachable.to, thisLength);
                }
            }
        }

        const passedPath = Array<ConnectData>();

        while (true) {
            const lastNode = passedPath[0]?.to ?? to;
            const prevPath = this.routeNodes.get(lastNode)!
                .find(v => distance.get(v.to)! + v.weight === distance.get(lastNode))!;
            passedPath.unshift(prevPath);
            if (prevPath.to === from) return passedPath;
        }
    }

    popNearestNode (nodes: Set<PathData>): PathData {
        let nearest: PathData;
        nodes.forEach(v => {
            if (nearest === undefined || v.distance < nearest.distance) {
                nearest = v;
            }
        });
        nodes.delete(nearest!);

        return nearest!;
    }
}

export default Dijkstra;
