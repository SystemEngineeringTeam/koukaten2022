package model_student

import "strconv"

//User
type User struct {
	Id        int        `gorm:"primaryKey:id"`
	Schedules []Schedule `gorm:"foreignKey:user_id"`
	UserName  string
	Password  string
	Time      string
}

func GetUserAll() []*User {
	result := CombineUserWithSchedule()
	return result
}

func GetID(id string) []*User {
	result := CombineUserWithSchedule()

	for _, r := range result {

		var s string
		s = strconv.Itoa(r.Id)

		if s != id {
			r = result[len(result)-1]
		}
	}
	return result
}

func GetUserName(user_name string) []*User {
	result := CombineUserWithSchedule()
	for _, r := range result {
		if r.UserName != user_name {
			r = result[len(result)-1]
		}
	}
	return result
}

func GetPassword(password string) []*User {
	result := CombineUserWithSchedule()
	for _, r := range result {
		if r.UserName != password {
			r = result[len(result)-1]
		}
	}
	return result
}

func GetTime(time string) []*User {
	result := CombineUserWithSchedule()
	for _, r := range result {
		if r.UserName != time {
			r = result[len(result)-1]
		}
	}
	return result
}
