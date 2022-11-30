package insertsort

func insertsort(a []int) {
	for i := 2; i < len(a); i++ {
		key := a[i]
		//insert a[i] into the sorted subarray a[1: i-1]
		j := i - 1
		for j > 0 && a[j] > key {
			a[j+1] = a[j]
			j = j - 1
		}
		a[j+1] = key
	}

}
