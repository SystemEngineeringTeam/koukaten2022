package models

import (
	"github.com/karasuneo/aikodai-annai-suru-zo/backend/databases"
)

// Building テーブル情報
type Building struct {
	BuildingName string      `gorm:"primarykey:BuildingName"`
	ClassRooms   []ClassRoom `gorm:"foreignkey:BuildingName"`
	Latitude     string
	Longitude    string
}

var db = databases.GetDB()

// 建物名を検索してデータを取得
func GetBuildingName(bn string) []*Response {
	b := []*Building{}
	res := []*Response{}
	// building_nameが空文字だった時
	if bn == "" {
		return res
	}

	db.Where("building_name LIKE ?", "%"+bn+"%").Find(&b)
	b = CombineBuildingTable(b)
	res = PerseResponse(b)

	if len(res) == 0 {
		res = nil
	}
	return res
}

// Buildingテーブル検索の時テーブルを結合
func CombineBuildingTable(b []*Building) []*Building {
	//構造体の定義
	cr := []*ClassRoom{}
	s := []*Subject{}
	//DBのデータを構造体の配列に格納
	db.Find(&cr)
	db.Find(&s)
	//ClassRoomのSubjectに構造体を入れる
	for _, cr := range cr {
		for _, s := range s {
			if cr.RoomNumber == s.ClassRoom {
				cr.Subjects = append(cr.Subjects, *s)
			}
		}
	}
	//BuildingのClassRoomに構造体を入れる
	for _, b := range b {
		for _, j := range cr {
			if b.BuildingName == j.BuildingName {
				b.ClassRooms = append(b.ClassRooms, *j)
			}
		}
	}
	return b
}
