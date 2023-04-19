package models

type Response struct {
	ID             int    `json:"id"`
	SubjectName    string `json:"subjectName"`
	BuildingName   string `json:"buildingName"`
	RoomName       string `json:"roomName"`
	RoomNumber     string `json:"roomNumber"`
	Grade          string `json:"grade"`
	DayTime        string `json:"dayTime"`
	FolderName     string `json:"folderName"`
	Floor          string `json:"floor"`
	Classification string `json:"classification"`
}

func PerseResponse(b []*Building) []*Response {
	res := []*Response{}
	for i := 0; i < len(b); i++ {
		for j := 0; j < len(b[i].ClassRooms); j++ {
			for k := 0; k < len(b[i].ClassRooms[j].Subjects); k++ {
				res = append(res,
					&Response{b[i].ClassRooms[j].Subjects[k].ID, b[i].ClassRooms[j].Subjects[k].SubjectName,
						b[i].BuildingName, b[i].ClassRooms[j].RoomName, b[i].ClassRooms[j].RoomNumber,
						b[i].ClassRooms[j].Subjects[k].Grade, b[i].ClassRooms[j].Subjects[k].DayTime,
						b[i].ClassRooms[j].Subjects[k].FolderName, b[i].ClassRooms[j].Floor,
						b[i].ClassRooms[j].Subjects[k].Classification})
			}
		}
	}
	return res
}
