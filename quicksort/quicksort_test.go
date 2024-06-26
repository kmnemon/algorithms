package quicksort

import (
	"fmt"
	"testing"
)

func TestQuickSort(t *testing.T) {
	a := []int{6, 3, 5, 7, 10, 1}
	b := quicksort(a)
	fmt.Println(b)
}
