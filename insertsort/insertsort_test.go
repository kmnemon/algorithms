package insertsort

import (
	"fmt"
	"testing"
)

func TestInsertsort(t *testing.T) {
	a := []int{6, 3, 5, 4, 3}
	insertsort(a)

	fmt.Println(a)

}
