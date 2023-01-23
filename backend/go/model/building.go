package model

import (
	"github.com/karasuneo/aikodai-annai-suru-zo/go/lib"
)


// Building テーブル情報
type Building struct {
	BuildingName string      `gorm:"primarykey:BuildingName"`
	ClassRooms   []ClassRoom `gorm:"foreignkey:BuildingName"`
	Latitude     string
	Longitude    string
}

var db = lib.SqlConnect()

// 建物名を検索してデータを取得
func GetBuildingName(building_name string) []*Responce {
	building := []*Building{}
	result := []*Responce{}

	// building_nameが空文字だった時
	if building_name == "" {
		return result
	}
	
	db.Where("building_name LIKE ?", "%"+building_name+"%").Find(&building)
	building = CombineBuilding(building)
	result = PerseResponse(building)

	if len(result) == 0 {
		result = nil
	}
	return result
}

// Buildingテーブル検索の時テーブルを結合
func CombineBuilding(building []*Building) []*Building {
	//構造体の定義
	class_room := []*ClassRoom{}
	subject := []*Subject{}

	//DBのデータを構造体の配列に格納
	db.Find(&class_room)
	db.Find(&subject)

	//ClassRoomのSubjectに構造体を入れる
	for _, c := range class_room {
		for _, s := range subject {
			if c.RoomNumber == s.ClassRoom {
				c.Subjects = append(c.Subjects, *s)
			}
		}
	}

	//BuilgingのClassRoomに構造体を入れる
	for _, b := range building {
		for _, c := range class_room {
			if b.BuildingName == c.BuildingName {
				b.ClassRooms = append(b.ClassRooms, *c)
			}
		}
	}
	return building
}

