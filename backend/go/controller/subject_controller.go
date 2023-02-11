package controller

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/karasuneo/aikodai-annai-suru-zo/go/model"
)

func GetSearchSubjectNameResult(c *gin.Context) {
	sn := c.Query("sn")
	result := model.GetSubjectName(sn)
	c.JSON(http.StatusOK, result)
}
