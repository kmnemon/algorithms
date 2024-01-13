package binarysearch

import "errors"

func binarysearch(a []int, item int) (pos int, err error) {
	low := 0
	high := len(a) - 1

	for low <= high {
		mid := (low + high) / 2
		guess := a[mid]

		if guess == item {
			return mid, nil
		} else if guess > item {
			high = mid - 1
		} else {
			low = mid + 1
		}
	}

	return -1, errors.New("NOT FOUND")
}
