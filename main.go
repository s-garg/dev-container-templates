package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/health", func(w http.ResponseWriter, _ *http.Request) {
		w.Write([]byte("ok"))
	})

	port := ":8080"
	fmt.Println("Server listening on", port)

	if err := http.ListenAndServe(port, nil); err != nil {
		fmt.Println("Server error:", err)
	}
}
