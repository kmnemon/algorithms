package mergesort

func mergesort(a []int, p, r int) {
	//only one element recursive return
	if p >= r {
		return
	}

	q := (p + r) / 2

	mergesort(a, p, q)
	mergesort(a, q+1, r)

	merge(a, p, q, r)

}

func merge(a []int, p, q, r int) {
	var la []int = make([]int, q+1-p)
	var ra []int = make([]int, r-q)

	copy(la, a[p:q+1])
	copy(ra, a[q+1:r+1])

	i := 0
	j := 0
	k := p

	for i < len(la) && j < len(ra) {
		if la[i] <= ra[j] {
			a[k] = la[i]
			i = i + 1
		} else {
			a[k] = ra[j]
			j = j + 1
		}
		k = k + 1
	}

	for i < len(la) {
		a[k] = la[i]
		i = i + 1
		k = k + 1
	}

	for j < len(ra) {
		a[k] = ra[j]
		j = j + 1
		k = k + 1
	}
}
