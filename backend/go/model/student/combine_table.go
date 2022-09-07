package model_student

func CombineUserWithSchedule() []*User {
	//構造体の定義
	user := []*User{}
	schedule := []*Schedule{}

	//DBのデータを構造体の配列に格納
	db.Find(&user)
	db.Find(&schedule)

	//BuilgingのClassRoomに構造体を入れる
	for _, u := range user {
		for _, s := range schedule {
			if u.Id == s.UserID {
				u.Schedules = append(u.Schedules, *s)
			}
		}
	}
	return user
}
