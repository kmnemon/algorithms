package recursion

func fact(x int) int {
	if x == 1 {
		return 1
	} else {
		return x * fact(x-1)
	}
}

// tail-recursive function
/*
The idea used by compilers to optimize tail-recursive functions is simple, since the recursive call is the last statement, there is nothing left to do in the current function, so saving the current function’s stack frame is of no use
The idea is to use one more argument and accumulate the factorial value in the second argument. When n reaches 0, return the accumulated value.
*/
func factTR(x int, a int) int {
	if x == 1 {
		return a
	}

	return factTR(x-1, x*a)
}

func fact2(x int) int {
	return factTR(x, 1)
}
