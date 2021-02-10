package main

import (
	"fmt"
)

func main() {
	var kalimat string
	kalimat = "di rumah saya ada kasur rusak"

	var result = Palindrome(kalimat)
	fmt.Println(result)
}

func Palindrome(s string) string {
	var s_len = len(s)
	var left = 0
	var right = 0
	var len = 0
	if s_len < 2 {
		return s
	}

	var palin [][]bool
	for i := 0; i < s_len; i++ {
		var temp []bool
		for j := 0; j < s_len; j++ {
			temp = append(temp, false)
		}
		palin = append(palin, temp)
	}

	for i := 0; i < s_len; i++ {
		for j := 0; j < i; j++ {
			palin[j][i] = (s[j] == s[i]) && (i-j < 2 || palin[j+1][i-1])
			if palin[j][i] && len < i-j {
				len = i - j
				left = j
				right = i
			}
		}
		palin[i][i] = true
	}
	return s[left : right+1]
}
