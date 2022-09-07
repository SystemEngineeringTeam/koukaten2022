package model_data_sets

// ClassRoom テーブル情報
type ClassRoom struct {
	RoomNumber   string    `gorm:"primaryKey:RoomNumber"`
	Subjects     []Subject `gorm:"foreignKey:ClassRoom"`
	RoomName     string
	BuildingName string
	Floor        string
}

func GetClassRoomAll() []*Building {
	result := []*Building{}
	class_room := []*ClassRoom{}
	db.Find(&class_room)
	db.Find(&result)
	result[0].ClassRooms = append(result[0].ClassRooms, *class_room[0])
	return result
}

func GetRoomNumber(room_number string) []*ClassRoom {
	result := []*ClassRoom{}
	db.Where("room_number LIKE ?", "%"+room_number+"%").Find(&result)
	return result
}

func GetRoomName(room_name string) []*ClassRoom {
	result := []*ClassRoom{}
	db.Where("room_name LIKE ?", "%"+room_name+"%").Find(&result)
	return result
}

func GetClassRoomBuildingName(building_name string) []*ClassRoom {
	result := []*ClassRoom{}
	db.Where("building_name LIKE ?", "%"+building_name+"%").Find(&result)
	return result
}
