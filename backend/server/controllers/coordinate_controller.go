package controllers

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/SystemEngineeringTeam/koukaten2022/backend/server/models"
)

func RouteSearch(c *gin.Context) {
	fr := c.Query("fr")
	to := c.Query("to")
	res := models.FindCoordinate(fr, to)
	c.JSON(http.StatusOK, res)
}
