package main

import (
	DataSets "copy_main/backend/model/data_sets"
	"fmt"
)

func main() {

	var subject_name string = "館"

	fmt.Println(subject_name)

	builds := DataSets.GetBuildingAll()
	aaa := DataSets.GetBuildingBuildingName(subject_name)
	//fmt.Println(model.GetBuildingAll())
	fmt.Println(builds[0])
	fmt.Println(aaa[0])

}
