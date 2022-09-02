package model_db

import (
	"fmt"
)

type Building struct {
	Building_name string `json:"building_name"`
	Latitude      string `json:"latitude"`
	Longitude     string `json:"longitude"`
}

// Subject テーブル情報

type Class_room struct {
	Room_number   string `json:"room_number"`
	Room_name     string `json:"room_name"`
	Building_name string `json:"building_name"`
	Floor         int    `json:"floor"`
}

type Subject struct {
	Id             int
	Folder_name    string `json:"folder_name"`
	Subject_code   string `json:"subject_code"`
	Subject_name   string `json:"subject_name"`
	Grade          string `json:"grade"`
	Class_code     string `json:"class_code"`
	Class_room     string `json:"class_room"`
	Semester       string `json:"semester"`
	Day_time       string `json:"day_time"`
	Classification string `json:"classification"`
	Credit         int    `json:"credit"`
}

func search(search string) string {

	//mainに返すための変数
	var value string

	//受け取った値を変数に代入
	var s string = search

	// db接続

	fmt.Println(s + "o")

	db := sqlConnect()

	//mysql上のデータを変数に格納
	//result := []*Subject{}
	result := []*Building{}

	//エラー処理
	error := db.Find(&result).Error
	if error != nil || len(result) == 0 {
		return "データが存在しません"
	}

	//resultの中から受け取った変数を検索して、resultに入れ直す
	db.Where("building_name LIKE ?", "%"+s+"%").Find(&result)

	fmt.Printf("%T\n", db.Where("building_name LIKE ?", "%"+s+"%").Find(&result))
	fmt.Printf("%T\n", db.Where("building_name LIKE ?", "%"+s+"%").Find(&result))

	for _, building := range result {
		value += building.Building_name + " "

		value += "/"
	}

	return value
}
