package main

import (
	"fmt"
	"os"
	"strings"
	"time"

	"github.com/gin-gonic/gin"
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

// Subject テーブル情報
type Subject struct {
	ID             int
	Folder_name    string `json:"folder_name"`
	Subject_code   string `json:"subject_code"`
	Subject_name   string `json:"subject_name"`
	Grade          string `json:"grade"`
	Class_code     string `json:"class_code"`
	Class_room     string `json:"class_room"`
	Semester       string `json:"semester"`
	Day_time       string `json:"day_time"`
	Classification string `json:"classification"`
	Credit         int    `json:"credit"`
}

type Building struct {
	Building_name string `json:"building_name"`
	Latitude      string `json:"latitude"`
	Longitude     string `json:"longitude"`
}

// Search_result テーブル情報
type Search_result struct {
	Subject_name string
}

func main() {

	search_result := []Search_result{}
	router := gin.Default()
	router.LoadHTMLGlob("backend/view/*.html")

	router.GET("/", func(ctx *gin.Context) {

		//HTMLにsearch_resultを渡す
		ctx.HTML(200, "index.html", gin.H{
			"search_result": search_result,
		})
	})

	router.POST("/new", func(ctx *gin.Context) {

		// 	//スライスの初期化
		search_result = nil

		// 	//HTMLから送られてきたデータを変数に格納
		subject_name := ctx.PostForm("subject_name")

		//var subject_name string = "館"

		fmt.Println(subject_name)

		//データベースにアクセスして subject_name をキーワードとして授業名を取得
		var value string = search(subject_name)

		fmt.Println(value)

		//もしキーワードが何にもヒットしなかった場合適当な文字列をスライスに代入する
		if value == "" {
			search_result_1 := Search_result{Subject_name: "検索できませんでした"}
			search_result = append(search_result, search_result_1)
		} else {

			//返ってきた値をスライスの格納して整理
			value_split := strings.Split(value, "/")

			//末尾の要素は空白となるため削除
			result := remove(value_split, (len(value_split) - 1))

			//整理したvalueを search_result(HTMLに出力させるスライス) に代入
			for _, s := range result {
				dr := strings.Split(s, " ")
				search_result_1 := Search_result{Subject_name: dr[0]}
				search_result = append(search_result, search_result_1)
			}
		}

		ctx.Redirect(302, "/")
	})

	router.Run()
}

//指定されたインデックス番号のスライスの要素を削除するための関数
func remove(slice []string, s int) []string {
	return append(slice[:s], slice[s+1:]...)
}

//mysql上に格納されたデータから値を返してもらうための関数
func search(search string) string {

	//mainに返すための変数
	var value string

	//受け取った値を変数に代入
	var s string = search

	// db接続

	fmt.Println(s + "o")

	db := sqlConnect()

	//mysql上のデータを変数に格納
	//result := []*Subject{}
	result := []*Building{}

	//エラー処理
	error := db.Find(&result).Error
	if error != nil || len(result) == 0 {
		return "データが存在しません"
	}

	//resultの中から受け取った変数を検索して、resultに入れ直す
	db.Where("building_name LIKE ?", "%"+s+"%").Find(&result)

	fmt.Printf("%T\n", db.Where("building_name LIKE ?", "%"+s+"%").Find(&result))
	fmt.Printf("%T\n", db.Where("building_name LIKE ?", "%"+s+"%").Find(&result))

	for _, building := range result {
		value += building.Building_name + " "

		value += "/"
	}

	return value
}

// SQLConnect DB接続
func sqlConnect() (database *gorm.DB) {
	DBMS := "mysql"
	USER := os.Getenv("MYSQL_USER")
	PASS := os.Getenv("MYSQL_PASSWORD")
	PROTOCOL := "tcp(koukaten2022_DB:3306)"
	DBNAME := os.Getenv("MYSQL_DATABASE")

	fmt.Println(DBMS)
	fmt.Println(USER)
	fmt.Println(PASS)
	fmt.Println(DBNAME)

	dsn := USER + ":" + PASS + "@" + PROTOCOL + "/" + DBNAME + "?charset=utf8&parseTime=true&loc=Asia%2FTokyo"
	count := 0
	db, err := gorm.Open(mysql.Open(dsn), &gorm.Config{})
	if err != nil {
		for {
			if err == nil {
				fmt.Println("")
				break
			}
			fmt.Print("")
			time.Sleep(time.Second)
			count++
			if count > 180 {
				fmt.Println("")
				panic(err)
			}
			db, err = gorm.Open(mysql.Open(dsn), &gorm.Config{})
		}
	}
	return db
}
