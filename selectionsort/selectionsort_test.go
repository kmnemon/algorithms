package selectionsort

import (
	"fmt"
	"testing"
)

func TestSelectionSort(t *testing.T) {
	a := []int{3, 1, 5, 8, 6, 6, 9}

	b := selectionSort(a)

	fmt.Println(b)

}
