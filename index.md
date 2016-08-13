---
title       : Presentation for Data Product Course Project
subtitle    : 
author      : Yue Yin
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Background 

The data used in this app is a small piece of the large dataset obtained by FiveThirtyEight from the  NYC Taxi & Limousine Commission (TLC) by submitting a Freedom of Information Law request on July 20, 2015. The whole directory contains data on over 4.5 million Uber pickups in New York City from April to September 2014, and 14.3 million more Uber pickups from January to June 2015. Trip-level data on 10 other for-hire vehicle (FHV) companies, as well as aggregated data for 329 FHV companies, is also included. Here I only use the file Aggregate_FHV_Data.xlsx, which contains aggregate analysis on taxi and FHV trips between Jan, 2015 and Feb, 2015

---  

## Preview of the data
First let's first take a look at the data

```
##   dispatching_base_number       date active_vehicles trips      base
## 1                  B02512 2015-01-01             190  1132     Unter
## 2                  B02765 2015-01-01             225  1765      Grun
## 3                  B02764 2015-01-01            3427 29421 Danach-NY
## 4                  B02682 2015-01-01             945  7679 Schmecken
## 5                  B02617 2015-01-01            1228  9537    Weiter
## 6                  B02598 2015-01-01             870  6903    Hinter
```


--- 


## Brainstorming 

1. What direct information can we get from the data?

*  The number of vehicles on the road belonging to six TLC base companies
*  The number of trips completed by the vehicles belonging to six TLC base companies

2. What inference can we make from the direct information?

*  .... The daily market share of each company!

*  .... And is the market composition different under different statistics?

--- 

## Final Product: What can we present?
1. A pie chart showing the daily market share of each company
2. Users can get the absolute value by moving cursor on each slice
3. Users can choose the date they are interested in
4. Users can choose the metric they are interested in









