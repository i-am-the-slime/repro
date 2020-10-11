package repro

import (
	. "github.com/purescript-native/go-runtime"
)

func init() {

	exports := Foreign("Repro")

	var anInt int = 1
	var aFloat float64 = 1.0
	var example map[string]Any = make(map[string]Any)
	example["int"] = anInt
	example["float"] = aFloat

	exports["example"] = example
}
