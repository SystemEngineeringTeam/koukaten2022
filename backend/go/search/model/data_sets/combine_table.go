package model_data_sets

//BuildingテーブルとClassRoomテーブルを結合
func CombineBuildingWithClassRoom() []*Building {
	//構造体の定義
	building := []*Building{}
	class_room := CombineClassRoomWithSubject()

	//DBのデータを構造体の配列に格納
	db.Find(&building)

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

//ClassRoomテーブルとSubjectテーブルを結合
func CombineClassRoomWithSubject() []*ClassRoom {
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

	return class_room
}
