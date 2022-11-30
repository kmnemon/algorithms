package insertsort

import (
	"fmt"
	"testing"
)

func TestInsertsort(t *testing.T) {
	a := []int{3, 6, 5, 4, 3}
	insertsort(a)

	fmt.Println(a)

}
