package main

import (
	"net/http"

	"log"

	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()
	router.LoadHTMLGlob("views/*.html")
	router.Static("/resources", "./resources")
	router.GET("/", func(ctx *gin.Context) {
		log.Println(ctx.ClientIP())
		ctx.HTML(http.StatusOK, "index.html", gin.H{})
	})
	router.GET("/hello", func(ctx *gin.Context) {
		log.Println(ctx.ClientIP())
		ctx.HTML(http.StatusOK, "index.html", gin.H{})
	})
	router.Run(":8080")
}
