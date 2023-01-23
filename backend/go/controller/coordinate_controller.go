package controller

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/karasuneo/aikodai-annai-suru-zo/go/search"
)

func GetSearchCoordinateResult(c *gin.Context) {
	fr := c.Query("fr")
	to := c.Query("to")
	result := search.GetCoordinate(fr, to)
	c.JSON(http.StatusOK, result)
}
