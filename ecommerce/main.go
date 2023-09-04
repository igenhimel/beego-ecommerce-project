package main

import (
	_ "ecommerce/routers"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	_ "github.com/lib/pq"
)

func main() {


	dbHost := beego.AppConfig.String("dbhost")
	dbPort := beego.AppConfig.String("dbport")
	dbUser := beego.AppConfig.String("dbuser")
	dbPass := beego.AppConfig.String("dbpass")
	dbName := beego.AppConfig.String("dbname")
	dbSSLMode := beego.AppConfig.String("dbsslmode")



	// Enable session management
	beego.BConfig.WebConfig.Session.SessionOn = true
	beego.BConfig.WebConfig.Session.SessionProvider = "memory"
	beego.BConfig.WebConfig.Session.SessionProviderConfig = ""

	// Initialize Beego ORM
	orm.RegisterDriver("postgres", orm.DRPostgres)
	dbConnection := "user=" + dbUser + " password=" + dbPass + " dbname=" + dbName + " host=" + dbHost + " port=" + dbPort + " sslmode=" + dbSSLMode
	orm.RegisterDataBase("default", "postgres", dbConnection)

	// Automatically create tables based on the models
	orm.RunSyncdb("default", false, true)

	// Start Beego application
	beego.Run()
}
