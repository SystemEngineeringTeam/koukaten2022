package model_student

type User struct {
	Id        int        `gorm:"primaryKey:id"`
	Schedules []Schedule `gorm:"foreignKey:user_id"`
	UserName  string
	Password  string
	Time      string
}

func GetUserAll() []*User {
	result := []*User{}
	db.Find(&result)
	return result
}

func GetID(id string) []*User {
	result := []*User{}
	db.Where("id LIKE ?", "%"+id+"%").Find(&result)
	return result
}

func GetUserName(user_name string) []*User {
	result := []*User{}
	db.Where("id LIKE ?", "%"+user_name+"%").Find(&result)
	return result
}

func GetPassword(password string) []*User {
	result := []*User{}
	db.Where("id LIKE ?", "%"+password+"%").Find(&result)
	return result
}

func GetTime(time string) []*User {
	result := []*User{}
	db.Where("id LIKE ?", "%"+time+"%").Find(&result)
	return result
}
