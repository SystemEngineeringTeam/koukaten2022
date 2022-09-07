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

func GetSubjectAll() []*Subject {
	result := []*Subject{}
	db.Find(&result)
	return result
}

func GetID(room_number string) []*Subject {
	result := []*Subject{}
	db.Where("id LIKE ?", "%"+room_number+"%").Find(&result)
	return result
}

func GetSubjectCode(subject_code string) []*Subject {
	result := []*Subject{}
	db.Where("subject_code LIKE ?", "%"+subject_code+"%").Find(&result)
	return result
}

func GetSubjectName(subject_name string) []*Subject {
	result := []*Subject{}
	db.Where("subject_name LIKE ?", "%"+subject_name+"%").Find(&result)
	return result
}
func GetGrade(grade string) []*Subject {
	result := []*Subject{}
	db.Where("grade LIKE ?", "%"+grade+"%").Find(&result)
	return result
}

func GetClassCode(class_code string) []*Subject {
	result := []*Subject{}
	db.Where("class_code LIKE ?", "%"+class_code+"%").Find(&result)
	return result
}

func GetSubject(class_room string) []*Subject {

	result := []*Subject{}
	db.Where("class_room LIKE ?", "%"+class_room+"%").Find(&result)
	return result
}
func GetSemester(semester string) []*Subject {
	result := []*Subject{}
	db.Where("semester LIKE ?", "%"+semester+"%").Find(&result)
	return result
}

func GetDayTime(day_time string) []*Subject {
	result := []*Subject{}
	db.Where("day_time LIKE ?", "%"+day_time+"%").Find(&result)
	return result
}
func GetClassification(classification string) []*Subject {
	result := []*Subject{}
	db.Where("classification LIKE ?", "%"+classification+"%").Find(&result)
	return result
}

func GetCredit(credit string) []*Subject {
	result := []*Subject{}
	db.Where("credit LIKE ?", "%"+credit+"%").Find(&result)
	return result
}
