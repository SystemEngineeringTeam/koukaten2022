package models

// ClassRoom テーブル情報
type ClassRoom struct {
	RoomNumber   string `gorm:"primaryKey:RoomNumber"`
	RoomName     string
	BuildingName string
	Subjects     []Subject `gorm:"foreignKey:ClassRoom"`
	Floor        string
}

// 教室名を検索してデータを取得
func GetRoomName(rn string) []*Response {
	b := []*Building{}
	cr := []*ClassRoom{}
	res := []*Response{}

	// room_nameが空文字だった時
	if rn == "" {
		return res
	}

	db.Where("room_number LIKE ?", "%"+rn+"%").Find(&cr)
	b = CombineClassRoomTable(cr)
	res = PerseResponse(b)

	if len(res) == 0 {
		res = nil
	}

	return res
}

// ClassRoomテーブル検索の時テーブルを結合
func CombineClassRoomTable(cr []*ClassRoom) []*Building {
	//構造体の定義
	b := []*Building{}
	s := []*Subject{}
	res := []*Building{}
	//DBのデータを構造体の配列に格納
	db.Find(&b)
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
		for _, cr := range cr {
			if b.BuildingName == cr.BuildingName {
				db.Where("building_name LIKE ?", "%"+cr.BuildingName+"%").Find(&res)
				for _, k := range res {
					k.ClassRooms = append(k.ClassRooms, *cr)
				}
			}
		}
	}
	return res
}
