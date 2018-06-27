# Tidy Tuesday Week 13 - Global Alcohol Consumption

This week's [#tidytuesday](https://twitter.com/hashtag/tidytuesday?src=hash) was looking at global alcohol consumption. I went basic and straightforward this week and just used [maps](https://cran.r-project.org/web/packages/maps/index.html) to color a world map by average drinking.

One thing I came across was having to make sure all the country names were the same in both datasets - unfortunately this was not something I could automate, so instead I just generated lists of differences and manually matched them up and changed them. Also one slight quibble was that the data is from 2010, but the country of South Sudan formed in 2011, so I put the Sudan numbers into South Sudan as well. 

Unfortunately, I don't think these maps really show too much, other than things like the Middle East/ North Africa regions have basically no alcohol consumption, and France having the most wine consumption. I might revisit this data set to see if high consumption of one type of alcohol also means lower consumption of other types of alcohol
