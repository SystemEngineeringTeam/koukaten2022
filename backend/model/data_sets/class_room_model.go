package model_data_sets

// ClassRoom テーブル情報
type ClassRoom struct {
	RoomNumber   string `gorm:"primaryKey:RoomNumber"`
	RoomName     string
	BuildingName string
	Subjects     []Subject `gorm:"foreignKey:ClassRoom"`
	Floor        string
}

//ClassRoomの全てのデータを取得
func GetClassRoomAll() []*ClassRoom {
	result := CombineClassRoomWithSubject()
	return result
}

//教室番号を検索してデータを取得
func GetRoomNumber(room_number string) []*ClassRoom {
	result := CombineClassRoomWithSubject()
	for _, r := range result {
		if r.BuildingName != room_number {
			r = result[len(result)-1]
		}
	}
	return result
}

//教室名を検索してデータを取得
func GetRoomName(room_name string) []*ClassRoom {
	result := CombineClassRoomWithSubject()
	for _, r := range result {
		if r.BuildingName != room_name {
			r = result[len(result)-1]
		}
	}
	return result
}

//建物名を検索してデータを取得
func GetClassRoomBuildingName(building_name string) []*ClassRoom {
	result := CombineClassRoomWithSubject()
	for _, r := range result {
		if r.BuildingName != building_name {
			r = result[len(result)-1]
		}
	}
	return result
}

//階層を検索してデータを取得
func GetFloor(floor string) []*ClassRoom {
	result := CombineClassRoomWithSubject()
	for _, r := range result {
		if r.BuildingName != floor {
			r = result[len(result)-1]
		}
	}
	return result
}
