package controller

import (
	
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/karasuneo/aikodai-annai-suru-zo/go/model"
)

func GetSearchBuildingResult(c *gin.Context) {
	bn := c.Query("bn")
	result := model.GetBuildingName(bn)
	c.JSON(http.StatusOK, result)
}
