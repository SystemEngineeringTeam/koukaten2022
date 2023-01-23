package controller

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/karasuneo/aikodai-annai-suru-zo/go/model"
)

// AND検索して科目データを返す
func GetResponse(c *gin.Context) {
	result := []*model.Responce{}
	bn := c.Query("bn")
	rn := c.Query("rn")
	sn := c.Query("sn")
	from_bn := model.GetBuildingName(bn)
	from_rn := model.GetRoomName(rn)
	from_sn := model.GetSubjectName(sn)

	// キーワードのうちいずれかがヒットしてなかった時何も返さない
	if from_bn == nil || from_rn == nil || from_sn == nil {
		c.JSON(http.StatusOK, result)
		return
	}

	if len(from_bn) == 0 || len(from_rn) == 0 || len(from_sn) == 0 {
		// 空白の時はその検索ワード以外でAND検索する
		if len(from_bn) == 0 {
			result = SetResponce(from_rn, from_sn)
		} else if len(from_rn) == 0 {
			result = SetResponce(from_sn, from_bn)
		} else if len(from_sn) == 0 {
			result = SetResponce(from_bn, from_rn)
		}

		// 空白の複数の時は残りをそのまま返す
		if len(from_bn) == 0 && len(from_rn) == 0 {
			result = from_sn
		} else if len(from_rn) == 0 && len(from_sn) == 0 {
			result = from_bn
		} else if len(from_sn) == 0 && len(from_bn) == 0 {
			result = from_rn
		}
	} else {
		// 全てが空白でもなく、ヒットした場合または全てが空白の時はは全てでAND検索する
		for _, fb := range from_bn {
			for _, fr := range from_rn {
				for _, fs := range from_sn {
					if (fb.ID == fr.ID) && (fr.ID == fs.ID) && (fs.ID == fb.ID) {
						result = append(result, fb)
					}
				}
			}
		}
	}

	c.JSON(http.StatusOK, result)
}

func SetResponce(res1, res2 []*model.Responce) []*model.Responce {
	result := []*model.Responce{}

	for _, r1 := range res1 {
		for _, r2 := range res2 {
			if r1.ID == r2.ID {
				result = append(result, r1)
			}
		}
	}

	return result
}
