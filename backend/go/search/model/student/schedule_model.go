package model_student

type Schedule struct {
	Id     int
	UserID int
	Ma1    string
	Ma2    string
	Ma3    string
	Ma4    string
	Ma5    string
	Ma6    string
	Tu1    string
	Tu2    string
	Tu3    string
	Tu4    string
	Tu5    string
	Tu6    string
	We1    string
	We2    string
	We3    string
	We4    string
	We5    string
	We6    string
	Th1    string
	Th2    string
	Th3    string
	Th4    string
	Th5    string
	Th6    string
	Fr1    string
	Fr2    string
	Fr3    string
	Fr4    string
	Fr5    string
	Fr6    string
}

func GetScheduleAll() []*Schedule {
	result := []*Schedule{}
	db.Find(&result)
	return result
}

func GetScheduleID(id string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+id+"%").Find(&result)
	return result
}

func GetMa1(ma1 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+ma1+"%").Find(&result)
	return result
}

func GetMa2(ma2 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+ma2+"%").Find(&result)
	return result
}

func GetMa3(ma3 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+ma3+"%").Find(&result)
	return result
}

func GetMa4(ma4 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+ma4+"%").Find(&result)
	return result
}

func GetMa5(ma5 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+ma5+"%").Find(&result)
	return result
}

func GetTu1(tu1 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+tu1+"%").Find(&result)
	return result
}

func GetTu2(tu2 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+tu2+"%").Find(&result)
	return result
}

func GetTu3(tu3 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+tu3+"%").Find(&result)
	return result
}

func GetTu4(tu4 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+tu4+"%").Find(&result)
	return result
}

func GetTu5(tu5 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+tu5+"%").Find(&result)
	return result
}

func GetWe1(we1 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+we1+"%").Find(&result)
	return result
}

func GetWe2(we2 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+we2+"%").Find(&result)
	return result
}

func GetWe3(we3 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+we3+"%").Find(&result)
	return result
}

func GetWe4(we4 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+we4+"%").Find(&result)
	return result
}

func GetWe5(we5 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+we5+"%").Find(&result)
	return result
}

func GetTh1(th1 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+th1+"%").Find(&result)
	return result
}

func GetTh2(th2 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+th2+"%").Find(&result)
	return result
}

func GetTh3(th3 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+th3+"%").Find(&result)
	return result
}

func GetTh4(th4 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+th4+"%").Find(&result)
	return result
}

func GetTh5(th5 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+th5+"%").Find(&result)
	return result
}

func GetFr1(fr1 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+fr1+"%").Find(&result)
	return result
}

func GeFra2(fr2 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+fr2+"%").Find(&result)
	return result
}

func GetFr3(fr3 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+fr3+"%").Find(&result)
	return result
}

func GetFr4(fr4 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+fr4+"%").Find(&result)
	return result
}

func GetFr5(fr5 string) []*Schedule {
	result := []*Schedule{}
	db.Where("id LIKE ?", "%"+fr5+"%").Find(&result)
	return result
}
