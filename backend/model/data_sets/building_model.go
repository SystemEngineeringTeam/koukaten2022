package model_data_sets

// Building テーブル情報
type Building struct {
	BuildingName string      `gorm:"primarykey:BuildingName"`
	ClassRooms   []ClassRoom `gorm:"foreignkey:BuildingName"`
	Latitude     string
	Longitude    string
}

//Buildingの全てのデータを取得
func GetBuildingAll() []*Building {
	result := CombineBuildingWithClassRoom()
	return result
}

//建物名を検索してデータを取得
func GetBuildingBuildingName(building_name string) []*Building {
	result := CombineBuildingWithClassRoom()
	for _, r := range result {
		if r.BuildingName != building_name {
			r = result[len(result)-1]
		}
	}
	return result
}

//経度を検索してデータを取得
func GetLatitude(latitude string) []*Building {
	result := CombineBuildingWithClassRoom()
	for _, r := range result {
		if r.BuildingName != latitude {
			r = result[len(result)-1]
		}
	}
	return result
}

//緯度を検索してデータを取得
func GetLongitude(longitude string) []*Building {
	result := CombineBuildingWithClassRoom()
	for _, r := range result {
		if r.BuildingName != longitude {
			r = result[len(result)-1]
		}
	}
	return result
}
