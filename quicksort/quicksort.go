package quicksort

func quicksort(a []int) []int {
	if len(a) < 2 {
		return a
	} else {
		pivot := a[0]
		less := findArrayLessEqualThanPivot(a[1:], pivot)
		greater := findArrayGreaterThanPivot(a[1:], pivot)

		return composeArray(composeArray(quicksort(less), []int{pivot}), quicksort(greater))
	}
}

func findArrayLessEqualThanPivot(a []int, pivot int) []int {
	r := make([]int, 0)

	for _, v := range a {
		if v <= pivot {
			r = append(r, v)
		}
	}

	return r
}

func findArrayGreaterThanPivot(a []int, pivot int) []int {
	r := make([]int, 0)

	for _, v := range a {
		if v > pivot {
			r = append(r, v)
		}
	}

	return r
}

func composeArray(a []int, b []int) []int {
	if len(a) == 0 {
		return b
	} else if len(b) == 0 {
		return a
	} else {
		return append(a, b...)
	}
}
