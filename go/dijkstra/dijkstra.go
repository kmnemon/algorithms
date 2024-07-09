package dijkstra

func dijkstra(graph map[string]map[string]int, costs map[string]int, parents map[string]string) map[string]int {
	processed := make(map[string]struct{}, 0)
	node := findLowestCostNode(costs, processed)
	for node != "" {
		cost := costs[node]
		neighbors := graph[node]
		for n, c := range neighbors {
			newCost := cost + c
			if costs[n] > newCost {
				costs[n] = newCost
				parents[n] = node
			}
		}
		processed[node] = struct{}{}
		node = findLowestCostNode(costs, processed)
	}

	return costs
}

func findLowestCostNode(costs map[string]int, processed map[string]struct{}) string {
	lowestCost := 9999
	lowestCostNode := ""

	for node, cost := range costs {
		_, ok := processed[node]
		if cost < lowestCost && !ok {
			lowestCost = cost
			lowestCostNode = node
		}
	}
	return lowestCostNode
}
