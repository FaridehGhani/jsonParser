package main

import (
	"fmt"
	json_parser "jsonParser/json-parser"
	"os"
)

func main() {
	if len(os.Args) != 2 {
		fmt.Println("usage: json-parser <input>")
		os.Exit(1)
	}

	fileName := os.Args[1]
	data, err := os.ReadFile(fileName)
	if err != nil {
		fmt.Println("error reading file:", err)
		os.Exit(1)
	}

	content := string(data)
	if json_parser.IsValid(content) {
		fmt.Println("valid json")
		os.Exit(0)
	} else {
		fmt.Println("invalid json")
		os.Exit(1)
	}
}
