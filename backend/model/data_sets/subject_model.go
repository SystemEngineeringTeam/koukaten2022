package model_data_sets

// Subject テーブル情報
type Subject struct {
	ID             int
	FolderName     string
	SubjectNode    string
	SubjectName    string
	Grade          string
	ClassNode      string
	ClassRoom      string
	Semester       string
	DayTime        string
	Classification string
	Credit         int
}

func GetSubjectAll() []*Building {
	result := []*Building{}
	db.Find(&result)
	return result
}

func GetID(room_number string) []*ClassRoom {
	result := []*ClassRoom{}
	db.Where("id LIKE ?", "%"+room_number+"%").Find(&result)
	return result
}

func GetSubjectCode(subject_code string) []*ClassRoom {
	result := []*ClassRoom{}
	db.Where("subject_code LIKE ?", "%"+subject_code+"%").Find(&result)
	return result
}

func GetSubjectName(subject_name string) []*ClassRoom {
	result := []*ClassRoom{}
	db.Where("subject_name LIKE ?", "%"+subject_name+"%").Find(&result)
	return result
}
func GetGrade(grade string) []*ClassRoom {
	result := []*ClassRoom{}
	db.Where("grade LIKE ?", "%"+grade+"%").Find(&result)
	return result
}

func GetClassCode(class_code string) []*ClassRoom {
	result := []*ClassRoom{}
	db.Where("class_code LIKE ?", "%"+class_code+"%").Find(&result)
	return result
}

func GetClassRoom(class_room string) []*ClassRoom {

	result := []*ClassRoom{}
	db.Where("class_room LIKE ?", "%"+class_room+"%").Find(&result)
	return result
}
func GetSemester(semester string) []*ClassRoom {
	result := []*ClassRoom{}
	db.Where("semester LIKE ?", "%"+semester+"%").Find(&result)
	return result
}

func GetDayTime(day_time string) []*ClassRoom {
	result := []*ClassRoom{}
	db.Where("day_time LIKE ?", "%"+day_time+"%").Find(&result)
	return result
}
func GetClassification(classification string) []*ClassRoom {
	result := []*ClassRoom{}
	db.Where("classification LIKE ?", "%"+classification+"%").Find(&result)
	return result
}

func GetCredit(credit string) []*ClassRoom {

	result := []*ClassRoom{}
	db.Where("credit LIKE ?", "%"+credit+"%").Find(&result)
	return result
}
