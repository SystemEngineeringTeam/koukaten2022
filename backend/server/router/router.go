package router

import (
	"github.com/gin-gonic/gin"
	"github.com/SystemEngineeringTeam/koukaten2022/backend/server/controllers"
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
