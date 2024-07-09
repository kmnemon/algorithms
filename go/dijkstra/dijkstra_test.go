package dijkstra

import (
	"fmt"
	"testing"
)

func initGraph() map[string]map[string]int {
	graph := make(map[string]map[string]int)

	graph["start"] = make(map[string]int)
	graph["start"]["a"] = 6
	graph["start"]["b"] = 2

	graph["a"] = make(map[string]int)
	graph["a"]["fin"] = 1

	graph["b"] = make(map[string]int)
	graph["b"]["a"] = 3
	graph["b"]["fin"] = 5

	graph["fin"] = make(map[string]int)

	return graph
}

func initCosts() map[string]int {
	costs := make(map[string]int)
	costs["a"] = 6
	costs["b"] = 2
	costs["fin"] = 9999

	return costs
}

func initParents() map[string]string {
	parents := make(map[string]string)
	parents["a"] = "start"
	parents["b"] = "start"
	parents["fin"] = ""

	return parents
}

func TestDijkstra(t *testing.T) {
	costs := dijkstra(initGraph(), initCosts(), initParents())
	fmt.Println(costs)
}
