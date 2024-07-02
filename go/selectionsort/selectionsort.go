package selectionsort

func findSmallest(arr []int) int {
	smallest := arr[0]
	smallestIndex := 0

	for i, v := range arr {
		if v < smallest {
			smallest = v
			smallestIndex = i
		}
	}
	return smallestIndex
}

// O(n * n)
func selectionSort(arr []int) []int {
	newArr := []int{}

	l := len(arr)
	for i := 0; i < l; i++ {
		smallestIndex := findSmallest(arr)
		newArr = append(newArr, arr[smallestIndex])
		arr = append(arr[:smallestIndex], arr[smallestIndex+1:]...)
	}

	return newArr
}
