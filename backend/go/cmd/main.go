package main

import (
	"fmt"
	Data_sets "go/search/model/data_sets"
)

func main() {
	//result := Data_sets.GetDayTime("月", "Ⅳ")

	aaa := Data_sets.GetSubjectResult("", "", "", "", "Ⅳ")

	//fmt.Println(result[0])
	fmt.Println("aa")

	for _, s := range aaa {
		fmt.Println(s)
	}

}

// package main

// import (
// 	"html/template"
// 	"io"

// 	"github.com/labstack/echo/v4"
// 	"github.com/labstack/echo/v4/middleware"
// )

// type Template struct {
// 	templates *template.Template
// }

// func (t *Template) Render(w io.Writer, name string, data interface{}, c echo.Context) error {
// 	return t.templates.ExecuteTemplate(w, name, data)
// }

// func main() {

// 	t := &Template{
// 		templates: template.Must(template.ParseGlob("../../../*.html")),
// 	}

// 	//インスタンスの作成
// 	e := echo.New()

// 	e.Renderer = t

// 	//ミドルウェアを設定
// 	e.Use(middleware.Logger())
// 	e.Use(middleware.Recover())

// 	//ルートを設定
// 	e.GET("/", Start)

// 	//サーバをポート番号8000で起動
// 	e.Logger.Fatal(e.Start(":8000"))
// }

// func Start(c echo.Context) error {
// 	return c.File("../../＊.html")
// }
