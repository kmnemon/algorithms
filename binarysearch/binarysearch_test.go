package binarysearch

import (
	"fmt"
	"testing"
)

func TestBinarySearch(t *testing.T) {
	a := []int{1, 2, 3, 4, 5, 6}

	pos, _ := binarysearch(a, 3)

	fmt.Println(pos)

	pos, err := binarysearch(a, 7)

	fmt.Println(pos)
	fmt.Println(err)

}
