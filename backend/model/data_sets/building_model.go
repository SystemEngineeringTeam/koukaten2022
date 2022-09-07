package model_data_sets

// Building テーブル情報
type Building struct {
	BuildingName string      `gorm:"primarykey:BuildingName"`
	ClassRooms   []ClassRoom `gorm:"foreignKey:BuildingName"`
	Latitude     string
	Longitude    string
}

// func GetBuildingAll(building_name string) []*Building {
// 	db := sqlConnect()
// 	result := []*Building{}
// 	db.Where("building_name LIKE ?", "%"+building_name+"%").Find(&result)
// 	return result
// }
func GetBuildingAll() []*Building {
	result := []*Building{}
	db.Find(&result)
	return result
}

func GetBuildingBuildingName(building_name string) []*Building {
	result := []*Building{}
	db.Where("building_name LIKE ?", "%"+building_name+"%").Find(&result)
	return result
}

func GetLatitude(latitude string) []*Building {
	result := []*Building{}
	db.Where("latitude LIKE ?", "%"+latitude+"%").Find(&result)
	return result
}

func GetLongitude(longitude string) []*Building {
	result := []*Building{}
	db.Where("longitude LIKE ?", "%"+longitude+"%").Find(&result)
	return result
}
