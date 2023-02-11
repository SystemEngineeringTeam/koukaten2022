package model

// ClassRoom テーブル情報
type ClassRoom struct {
	RoomNumber   string `gorm:"primaryKey:RoomNumber"`
	RoomName     string
	BuildingName string
	Subjects     []Subject `gorm:"foreignKey:ClassRoom"`
	Floor        string
}

// 教室名を検索してデータを取得
func GetRoomName(room_name string) []*Responce {
	building := []*Building{}
	class_room := []*ClassRoom{}
	result := []*Responce{}

	// room_nameが空文字だった時
	if room_name == "" {
		return result
	}

	db.Where("room_number LIKE ?", "%"+room_name+"%").Find(&class_room)
	building = CombineRoomNumber(class_room)
	result = PerseResponse(building)

	if len(result) == 0 {
		result = nil
	}
	
	return result
}

// ClassRoomテーブル検索の時テーブルを結合
func CombineRoomNumber(class_room []*ClassRoom) []*Building {
	//構造体の定義
	result := []*Building{}
	building := []*Building{}
	subject := []*Subject{}

	//DBのデータを構造体の配列に格納
	db.Find(&building)
	db.Find(&subject)

	//ClassRoomのSubjectに構造体を入れる
	for _, c := range class_room {
		for _, s := range subject {
			if c.RoomNumber == s.ClassRoom {
				c.Subjects = append(c.Subjects, *s)
			}
		}
	}

	//BuildingのClassRoomに構造体を入れる
	for _, b := range building {
		for _, c := range class_room {
			if b.BuildingName == c.BuildingName {
				db.Where("building_name LIKE ?", "%"+c.BuildingName+"%").Find(&result)
				for _, r := range result {
					r.ClassRooms = append(r.ClassRooms, *c)
				}
			}
		}
	}
	return result
}
