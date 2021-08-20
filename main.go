package main

import (
	"fmt"
	"log"
	"net/http"
)

func RootHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Hello world!")
}
func HealthCheck(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "ok")
}
func main() {
	log.Println("start")
	http.HandleFunc("/", RootHandler)
	http.HandleFunc("/health_check", HealthCheck)
	log.Fatal(http.ListenAndServe(":8000", nil))
}
