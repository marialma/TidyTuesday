## Who shot first?

I wanted to look at who thinks that Greedo shot first (because everyone knows Han shot first).

Major takeaway: Did not learn very much. 

![graph](https://github.com/marialma/TidyTuesday/blob/master/StarWars/eprank.png?raw=true)

* People who say Greedo shot first and people who say Han shot first have very similar orderings for how much they liked each movie. 
* People who don't understand the question seem to rank episodes 1-3 higher. 
* Violin plots combined with facet_grid aren't a fantastic way to display this data. It makes it look like there are many more people who liked eps 1-3 than the full dataset shows.

So, I thought it might be an age thing. 

![ages](https://github.com/marialma/TidyTuesday/blob/master/StarWars/ages.png?raw=true)

* People who didn't understand the question skewed older. 
* But, nothing obvious one way or the other.

![missing](https://github.com/marialma/TidyTuesday/blob/master/StarWars/missingdata.png?raw=true)

Missing data accounted for a huge part of this dataset. Omitting NAs was probably not a methodologically sound thing to do here. 

### Conclusion
I got nothin'. Could probably do more with a little more digging, but I'm relatively happy with what I've learned today already. Going to leave it here with "Further exploration is needed to tease out differences between people who think Greedo shot first and people who think Han shot first."
