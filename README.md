# Climate Change: United States vs. Greenland

### Summary
The goal of this project is to show the difference in warming trends between the United States and Greenland.  In the United States temperature increases haven't been easily perceivable -- potentially a reason for the lack of urgency on the issue.  However, temperature increases in Greenland have been more drastic over the last 25 year or so.  What's more, rising temperatures in Greenland are even more troubling due to the polar ice caps melting causing sea level rise and several other issues.

![alt text](https://github.com/blemi4/climate/blob/master/final-vis.png?raw=true)

### Design
I decided to utilize a line chart in order to properly convey the continuous passage of time that is relevant for any time series.  I used two different lines to convey the difference between the US and Greenland over the years.  I decided not to add points.  The large number of points along with their proximity to eachother made them distracting.

I decided to display the data as a deviation from the average July temperature for each country.  When comparing absolute temperatures, the lines were very far apart making comparison more difficult.  

I also changed the chart title from an HTML element above the SVG, to part of the SVG.  

### Feedback
Throughout the course of the project, I asked three people for feeback on my visualization.  

##### Person 1
"The lines are too far apart.  It makes it difficult to compare the two countries."  I took this advice and changed the measure to deviation from the mean rather than absolute temperature as discussed above.

##### Person 2
"There are too many countries included in the analysis.  I can't tell what is going on."  I took this advice as well, and reduced the number of countries to two.  I originally had five, but this no longer worked after moving the scale to deviation from the mean.  

##### Person 3
"The chart looks good, but the title is off center."  I centered the title by making it a part of the SVG instead of placing and HTML object above.


### Resources
##### Data Source:

Berkely Earth - https://www.kaggle.com/berkeleyearth/climate-change-earth-surface-temperature-data 

##### Analysis and Visualization Sources:

http://dimplejs.org/
https://d3js.org/
http://stackoverflow.com/
https://udacity.com/
