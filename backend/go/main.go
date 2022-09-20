package main

import (
	"html/template"
	"io"

	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

type Template struct {
	templates *template.Template
}

func (t *Template) Render(w io.Writer, name string, data interface{}, c echo.Context) error {
	return t.templates.ExecuteTemplate(w, name, data)
}

func main() {

	// t := &Template{
	// 	templates: template.Must(template.ParseGlob("../../*.html")),
	// }

	//インスタンスの作成
	e := echo.New()

	// e.Renderer = t

	//ミドルウェアを設定
	e.Use(middleware.Logger())
	e.Use(middleware.Recover())

	e.Static("", "frontend/dist")

	//ルートを設定
	e.GET("/", Start)

	// e.GET("/", func(c echo.Context) error {
	// 	return c.String(http.StatusOK, "Hello, World!!")
	// })

	//サーバをポート番号8000で起動
	e.Logger.Fatal(e.Start(":8080"))
}

func Start(c echo.Context) error {
	// return c.String(http.StatusOK, "Hello, World!!")
	// return c.File("../../frontend/src/ait-map.html")
	return c.File("dist/dist/ait-map.html")
	// return c.File("ait-map.html")

}
