require(rCharts)

shinyServer(
        function(input, output){
                        stat <- reactive({
                                a = as.character(input$statistics)
                                return(a)
                                })
                        
                        output$myChart = renderChart({
                        d = input$dateIn
                        d = strptime(as.character(d), "%Y-%m-%d")
                        df = subset(data, date == d)
                        if(stat() == "2"){
                                pie.df = data.frame(label = df$base, value = df$trips)   
                        }else{
                                pie.df = data.frame( label = df$base, value = df$active_vehicles)
                        }
#                         plot.pie.df = data.frame(base = rep(pie.df$label, pie.df$value))
#                         p1 = nPlot(~base, data = plot.pie.df, type = 'pieChart' )
#                         p1$chart(donut = TRUE)
                        h1 = hPlot( x = "label", y = "value", data = pie.df, type = "pie" )
                        h1$addParams(dom = 'myChart')
                        return(h1)
                                        })
                        
                        
        }
)