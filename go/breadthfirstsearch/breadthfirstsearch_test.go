package breadthfirstsearch

import (
	"fmt"
	"testing"
)

func initGraph() map[string][]string {
	graph := make(map[string][]string)

	graph["you"] = []string{"alice", "bob", "claire"}
	graph["bob"] = []string{"anuj", "peggy"}
	graph["alice"] = []string{"peggy"}
	graph["claire"] = []string{"thom", "jonny"}
	graph["anuj"] = []string{}
	graph["peggy"] = []string{}
	graph["thom"] = []string{}
	graph["jonny"] = []string{}

	return graph
}

func TestBreadthFirstSearch(t *testing.T) {
	fmt.Println(breadthFirstSearch(initGraph(), "peggy"))
}
