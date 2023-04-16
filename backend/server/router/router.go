package router

import (
	"github.com/gin-gonic/gin"
	"github.com/karasuneo/aikodai-annai-suru-zo/backend/controllers"
)

func Init() {
	r := gin.Default()
	r.GET("/search", controllers.SearchSchoolInformation)
	r.GET("/coordinate", controllers.RouteSearch)
	// r.GET("/building", controllers.GetSearchBuildingResult)
	// r.GET("/classroom", controllers.GetSearchRoomNameResult)
	// r.GET("/subject", controllers.GetSearchSubjectNameResult)
	r.Run()
}
