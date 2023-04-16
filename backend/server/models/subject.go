package models

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
func GetSubjectName(sn string) []*Response {
	b := []*Building{}
	s := []*Subject{}
	res := []*Response{}
	// subject_nameが空文字だった時
	if sn == "" {
		return res
	}
	db.Where("subject_name LIKE ?", "%"+sn+"%").Find(&s)
	b = CombineSubjectTable(s)
	res = PerseResponse(b)
	if len(res) == 0 {
		res = nil
	}
	return res
}

// Subjectテーブル検索の時テーブルを結合
func CombineSubjectTable(s []*Subject) []*Building {
	//構造体の定義
	result := []*Building{}
	b := []*Building{}
	cr := []*ClassRoom{}
	cr1 := []*ClassRoom{}
	cr2 := []*ClassRoom{}
	cr3 := []*ClassRoom{}
	//DBのデータを構造体の配列に格納
	db.Find(&b)
	db.Find(&cr1)
	//ClassRoomのSubjectに構造体を入れる
	for _, cr1 := range cr1 {
		for _, s := range s {
			if cr1.RoomNumber == s.ClassRoom {
				db.Where("room_number LIKE ?", cr1.RoomNumber).Find(&cr2)
				cr3 = append(cr3, cr2...)
				for _, ct3 := range cr3 {
					if ct3.RoomNumber == s.ClassRoom {
						ct3.Subjects = append(ct3.Subjects, *s)
					}
				}
			}
		}
	}
	// ClassRoomをユニークにするためのmapの定義
	m := make(map[string]bool)
	for _, cr3 := range cr3 {
		if !m[cr3.RoomNumber] {
			m[cr3.RoomNumber] = true
			cr = append(cr, cr3)
		}
	}
	//BuilgingのClassRoomに構造体を入れる
	for _, b := range b {
		for _, cr := range cr {
			if b.BuildingName == cr.BuildingName {
				b.ClassRooms = append(b.ClassRooms, *cr)
			}
		}
	}
	// ClassRoomに何も入っていないスライスは返さないようにする
	for _, b := range b {
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
