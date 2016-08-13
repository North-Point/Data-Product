require(rCharts)

xlim <- list(
        min = max(0, min(data$active_vehicles) - 5000),
        max = max(data$active_vehicles) + 5000
)
ylim <- list(
        min = max(0, min(data$trips) - 500),
        max = max(data$trips) + 50
)
start = as.Date("2015-01-01", "%Y-%m-%d")
end = as.Date("2015-02-28", "%Y-%m-%d")
start.string = as.character(start)
options(RCHART_LIB = 'polycharts')
shinyUI(fluidPage(
                
                titlePanel("Aggregate Analysis on Taxi and for-high Vehicle Trips among 8 TLC Base Company between Jan, 2015 and Feb, 2015 in New York"),
                column(8,
                       h4("Documentation:"),
                       p("This is a simple aggregate analysis on taxi and for-high vehicles (FHV) trips in New York between Jan, 2015 and Feb, 2015. The data came directly from the NYC Taxi & Limousine Commission (TLC), recording the number of vehicles on road and the number of trips of 6 TLC base companies (Unter, Hinter, Weiter, Schmecken and Dana-NY). This app is designed for checking the daily market share of each company, using number of active vehicles and number of completed trips as metrics. You can pick a day between Jan, 2015 and Feb, 2015 that you are interested in by selecting a date from right panel. Also, you can alternate the metrics by clicking either number of active vehicles or number of trips on the right panels. The result is shown in a pie chart. You can check the absolute value of each company by moving your cursor to the corresponding slice. Enjoy!", align = "justify")
                ),
                
   
                column(4,
                wellPanel(
                        dateInput('dateIn',
                                label = p('When do you care? (data available between Jan, 2015 and Feb, 2015)', style = " font-si16pt", align = "justify"),
                                value = start.string,
                                min = start, max = end,
                                format = "yyyy-mm-dd",
                                startview = 'year',  weekstart = 1
                                ),
                        radioButtons("statistics", 
                                     label = p("What do you care: number of vehicles on the road or number of trips a day in total?", style = " font-si16pt", align = "justify"),
                                     choices = list("Number of active vehicles" = 1, "Number of trips" = 2), selected = 1)
                        )
                        ),
                showOutput("myChart","Highcharts")
                )
                )
        
        


