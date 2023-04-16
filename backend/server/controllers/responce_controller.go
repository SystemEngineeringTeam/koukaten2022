package controllers

import (
	"net/http"

	"github.com/gin-gonic/gin"

	"github.com/karasuneo/aikodai-annai-suru-zo/backend/models"
)

// AND検索して科目データを返す
func SearchSchoolInformation(c *gin.Context) {
	res := []*models.Response{}
	bn := c.Query("bn")
	rn := c.Query("rn")
	sn := c.Query("sn")
	frBn := models.GetBuildingName(bn)
	frRn := models.GetRoomName(rn)
	frSn := models.GetSubjectName(sn)
	// キーワードのうちいずれかがヒットしてなかった時何も返さない
	if frBn == nil || frRn == nil || frSn == nil {
		c.JSON(http.StatusOK, res)
		return
	}
	if len(frBn) == 0 || len(frRn) == 0 || len(frSn) == 0 {
		// 空白の時はその検索ワード以外でAND検索する
		if len(frBn) == 0 {
			res = SetResponse(frRn, frSn)
		} else if len(frRn) == 0 {
			res = SetResponse(frSn, frBn)
		} else if len(frSn) == 0 {
			res = SetResponse(frBn, frRn)
		}
		// 空白の複数の時は残りをそのまま返す
		if len(frBn) == 0 && len(frRn) == 0 {
			res = frSn
		} else if len(frRn) == 0 && len(frSn) == 0 {
			res = frBn
		} else if len(frSn) == 0 && len(frBn) == 0 {
			res = frRn
		}
	} else {
		// 全てが空白でもなく、ヒットした場合または全てが空白の時はは全てでAND検索する
		for _, fb := range frBn {
			for _, fr := range frRn {
				for _, fs := range frSn {
					if (fb.ID == fr.ID) && (fr.ID == fs.ID) && (fs.ID == fb.ID) {
						res = append(res, fb)
					}
				}
			}
		}
	}
	c.JSON(http.StatusOK, res)
}

func SetResponse(res1, res2 []*models.Response) []*models.Response {
	res := []*models.Response{}
	for _, r1 := range res1 {
		for _, r2 := range res2 {
			if r1.ID == r2.ID {
				res = append(res, r1)
			}
		}
	}
	return res
}
