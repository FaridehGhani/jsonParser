package json_parser

import (
	"regexp"
	"strings"
)

func IsValid(input string) bool {
	trimmed := strings.TrimSpace(input)

	if trimmed == "{}" {
		return true
	}

	re := regexp.MustCompile(`^\{\s*("(.*?)"\s*:\s*(("(.*?)")|([0-9]+)|(true|false|null)|(\{\})|(\[\]))\s*,?\s*)+\}$`)

	return re.MatchString(trimmed)
}
