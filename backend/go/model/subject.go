package model

import (
	"reflect"
)

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

// 科目名を検索してデータを取得
func GetSubjectName(subject_name string) []*Responce {
	building := []*Building{}
	subject := []*Subject{}
	result := []*Responce{}

	// subject_nameが空文字だった時
	if subject_name == "" {
		return result
	}

	db.Where("subject_name LIKE ?", "%"+subject_name+"%").Find(&subject)
	building = CombineSubject(subject)
	result = PerseResponse(building)

	if len(result) == 0 {
		result = nil
	}
	
	return result
}

// Subjectテーブル検索の時テーブルを結合
func CombineSubject(subject []*Subject) []*Building {
	//構造体の定義
	result := []*Building{}
	building := []*Building{}
	class_room := []*ClassRoom{}
	class_room_tmp1 := []*ClassRoom{}
	class_room_tmp2 := []*ClassRoom{}
	class_room_tmp3 := []*ClassRoom{}

	//DBのデータを構造体の配列に格納
	db.Find(&building)
	db.Find(&class_room_tmp1)

	//ClassRoomのSubjectに構造体を入れる
	for _, ct := range class_room_tmp1 {
		for _, s := range subject {
			if ct.RoomNumber == s.ClassRoom {
				db.Where("room_number LIKE ?", ct.RoomNumber).Find(&class_room_tmp2)
				class_room_tmp3 = append(class_room_tmp3, class_room_tmp2...)
				for _, ct3 := range class_room_tmp3 {
					if ct3.RoomNumber == s.ClassRoom {
						ct3.Subjects = append(ct3.Subjects, *s)
					}
				}
			}
		}

	}

	// ClassRoomをユニークにするためのmapの定義
	m := make(map[string]bool)
	for _, ct3 := range class_room_tmp3 {
		if !m[ct3.RoomNumber] {
			m[ct3.RoomNumber] = true
			class_room = append(class_room, ct3)
		}
	}

	//BuilgingのClassRoomに構造体を入れる
	for _, b := range building {
		for _, c := range class_room {
			if b.BuildingName == c.BuildingName {
				b.ClassRooms = append(b.ClassRooms, *c)
			}
		}
	}

	// ClassRoomに何も入っていないスライスは返さないようにする
	for _, b := range building {
		if (b.ClassRooms != nil) || !reflect.ValueOf(b.ClassRooms).IsNil() {
			result = append(result, *&b)
		}
	}

	return result
}

// 受講可能学年を検索してデータを取得
func GetGrade(grade string) []*Subject {
	result := []*Subject{}
	db.Where("grade LIKE ?", "%"+grade+"%").Find(&result)
	return result
}

// 受講可能学期を検索してデータを取得
func GetSemester(semester string) []*Subject {
	result := []*Subject{}
	db.Where("semester LIKE ?", "%"+semester+"%").Find(&result)
	return result
}

// 対象科目の開講日時を取得
func GetDayTime(day string, time string) []*Subject {
	result := []*Subject{}
	db.Where("day_time LIKE ? AND day_time LIKE ?", "%"+day+"%", "%"+time+"%").Find(&result)
	return result
}

// 必修か選択かを検索してデータを取得
func GetClassification(classification string) []*Subject {
	result := []*Subject{}
	db.Where("classification LIKE ?", "%"+classification+"%").Find(&result)
	return result
}
