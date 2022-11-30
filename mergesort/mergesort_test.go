package mergesort

import (
	"fmt"
	"testing"
)

func TestMergesort(t *testing.T) {
	a := []int{12, 3, 7, 9, 14, 6, 11, 2}

	mergesort(a, 0, 7)

	fmt.Println(a)

}
