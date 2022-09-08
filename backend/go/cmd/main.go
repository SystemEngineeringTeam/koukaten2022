package main

import (
	DataSets "go/search/model/data_sets"
	//Student "go/search/model/student"
	"fmt"
)

//動作確認
func main() {
	d := DataSets.GetBuildingBuildingName("1号")
	fmt.Println(d[2])
}
