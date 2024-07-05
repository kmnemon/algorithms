package breadthfirstsearch

import (
	"errors"
	"fmt"
)

type Queue[T any] struct {
	items []T
}

// Enqueue adds an element to the queue
func (q *Queue[T]) Enqueue(item T) {
	q.items = append(q.items, item)
}

// Dequeue removes and returns the front element of the queue
func (q *Queue[T]) Dequeue() (T, error) {
	if q.IsEmpty() {
		var defaultValue T
		return defaultValue, errors.New("Queue is empty")
	}
	item := q.items[0]
	q.items = q.items[1:]
	return item, nil
}

// IsEmpty checks if the queue is empty
func (q *Queue[T]) IsEmpty() bool {
	return len(q.items) == 0
}

func (q *Queue[T]) addSliceToQueue(s []T) {
	for _, v := range s {
		q.Enqueue(v)
	}
}

func breadthFirstSearch(graph map[string][]string, name string) bool {
	var searchDeque Queue[string]
	searchDeque.addSliceToQueue(graph["you"])
	searched := map[string]struct{}{}

	for !searchDeque.IsEmpty() {
		person, _ := searchDeque.Dequeue()
		_, ok := searched[person]
		if !ok {
			if findPerson(person, name) {
				fmt.Println("found the person")
				return true
			} else {
				searchDeque.addSliceToQueue(graph[person])
				searched[person] = struct{}{}
			}
		}

	}

	return false
}

func findPerson(person string, name string) bool {
	if person == name {
		return true
	} else {
		return false
	}
}
