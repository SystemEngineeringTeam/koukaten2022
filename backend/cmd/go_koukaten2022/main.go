package main

import (
	DataSets "copy_main/backend/model/data_sets"
	//Student "copy_main/backend/model/student"
	"fmt"
)

//動作確認
func main() {
	d := DataSets.GetBuildingBuildingName("1号")
	fmt.Println(d[2])
}
