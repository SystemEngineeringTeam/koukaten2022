package controllers

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/karasuneo/aikodai-annai-suru-zo/backend/models"
)

func RouteSearch(c *gin.Context) {
	fr := c.Query("fr")
	to := c.Query("to")
	res := models.FindCoordinate(fr, to)
	c.JSON(http.StatusOK, res)
}
