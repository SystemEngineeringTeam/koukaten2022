package model_data_sets

// Subject テーブル情報
type Subject struct {
	ID             int
	FolderName     string
	SubjectCode    string
	SubjectName    string
	Grade          string
	ClassCode      string
	ClassRoom      string
	Semester       string
	DayTime        string
	Classification string
	Credit         int
}

//Subjectの全てのデータを取得
func GetSubjectAll() []*Subject {
	result := []*Subject{}
	db.Find(&result)
	return result
}


func GetSubjectResult(faculty string, name string, grade string, day string, time string) []*Subject {
	result := []*Subject{}

	search := db.Where("")
	if faculty != "" {
		search.Where("folder_name LIKE ?", "%"+faculty+"%")
	}
	if name != "" {
		search.Where("subject_name LIKE ?", "%"+name+"%")
	}
	if grade != "" {
		search.Where("grade LIKE ?", "%"+grade+"%")
	}
	if day != "" {
		search.Where("day_time LIKE ?", "%"+day+"%")
	}
	if time != "" {
		search.Where("day_time LIKE ?", "%"+time+"%")
	}

	search.Find(&result)

	if len(result) == 190 {
		result = nil
	}

	return result
}

//IDを検索してデータを取得
func GetID(room_number string) []*Subject {
	result := []*Subject{}
	db.Where("id LIKE ?", "%"+room_number+"%").Find(&result)
	return result
}

//科目コードを検索してデータを取得
func GetSubjectCode(subject_code string) []*Subject {
	result := []*Subject{}
	db.Where("subject_code LIKE ?", "%"+subject_code+"%").Find(&result)
	return result
}

//科目名を検索してデータを取得
func GetSubjectName(subject_name string) []*Subject {
	result := []*Subject{}
	db.Where("subject_name LIKE ?", "%"+subject_name+"%").Find(&result)
	return result
}

//受講可能学年を検索してデータを取得
func GetGrade(grade string) []*Subject {
	result := []*Subject{}
	db.Where("grade LIKE ?", "%"+grade+"%").Find(&result)
	return result
}

//教室コードを検索してデータを取得
func GetClassCode(class_code string) []*Subject {
	result := []*Subject{}
	db.Where("class_code LIKE ?", "%"+class_code+"%").Find(&result)
	return result
}

//教室名を検索してデータを取得
func GetClassRoom(class_room string) []*Subject {
	result := []*Subject{}
	db.Where("class_room LIKE ?", "%"+class_room+"%").Find(&result)
	return result
}

//受講可能学期を検索してデータを取得
func GetSemester(semester string) []*Subject {
	result := []*Subject{}
	db.Where("semester LIKE ?", "%"+semester+"%").Find(&result)
	return result
}

//受講可能日を検索してデータを取得
// func GetDay(day string) []*Subject {
// 	result := []*Subject{}
// 	db.Where("day_time LIKE ?", "%"+day+"%").Find(&result)
// 	return result
// }

// //受講可能時間を検索してデータを取得
// func GetTime(time string) []*Subject {
// 	result := []*Subject{}
// 	db.Where("day_time LIKE ?", "%"+time+"%").Find(&result)
// 	return result
// }

func GetDayTime(day string, time string) []*Subject {
	result := []*Subject{}
	//db.Where("day_time LIKE ?", "%"+time+"%").Find(&result)
	db.Where("day_time LIKE ? AND day_time LIKE ?", "%"+day+"%", "%"+time+"%").Find(&result)

	return result
}

//必修か選択かを検索してデータを取得
func GetClassification(classification string) []*Subject {
	result := []*Subject{}
	db.Where("classification LIKE ?", "%"+classification+"%").Find(&result)
	return result
}

//クレジットを検索してデータを取得
func GetCredit(credit string) []*Subject {
	result := []*Subject{}
	db.Where("credit LIKE ?", "%"+credit+"%").Find(&result)
	return result
}
