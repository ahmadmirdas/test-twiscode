package main

import (
	"fmt"
	"math"
)

func convertBinaryToDecimal(number int) int {
	var (
		decimal, remainder int
		counter            float64
	)

	for number != 0 {
		remainder = number % 10
		decimal += remainder * int(math.Pow(2.0, counter))
		number = number / 10
		counter++
	}
	return decimal
}

func main() {
	var binary int
	fmt.Print("Input Binary Number:")
	fmt.Scanln(&binary)

	fmt.Printf("Output %d", convertBinaryToDecimal(binary))

}
