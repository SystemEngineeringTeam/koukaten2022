package controller

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/karasuneo/aikodai-annai-suru-zo/go/model"
)

func GetSearchRoomNameResult(c *gin.Context) {
	rn := c.Query("rn")
	result := model.GetRoomName(rn)
	c.JSON(http.StatusOK, result)
}
