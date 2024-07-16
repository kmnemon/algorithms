package greedy

func initStates() []string {
	statesNeeded := []string{"mt", "wa", "or", "id", "nv", "ut", "ca", "az"}
	// states_needed["mt"] = struct{}{}
	// states_needed["wa"] = struct{}{}
	// states_needed["or"] = struct{}{}
	// states_needed["id"] = struct{}{}
	// states_needed["nv"] = struct{}{}
	// states_needed["ut"] = struct{}{}
	// states_needed["ca"] = struct{}{}
	// states_needed["az"] = struct{}{}
	return statesNeeded
}

func initStations() map[string][]string {
	stations := map[string][]string{
		"kone":   {"id", "nv", "ut"},
		"ktwo":   {"wa", "id", "mt"},
		"kthree": {"or", "nv", "ca"},
		"kfour":  {"nv", "ut"},
		"kfive":  {"ca", "az"},
	}

	return stations
}
