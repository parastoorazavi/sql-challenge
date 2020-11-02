# sql-challenge


## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Observable Trends](#trends)
- [Acknowledgments](#acknowledgement)

## 🧐 About <a name = "about"></a>
**Description:**
Analysing the happiness index of the world from the period 2015-2019.
Data clean-up:
1.	Data Modeling
2.	Data Engineering
3.	Data Analysis
4.	Make sure the data frame is consistent for all the data set.
5.	Make sure no rows accidentally deleted


**Summary**
1.	The top 10 and bottom 10 <br>
2.	Factors contributing to Happiness Score: <br>
    •	Freedom to make life choices <br>
    •	GDP per capita <br>
    •	Generosity <br>
    •	Health Life expectancy <br>
    •	Perceptions of corruption <br>
    •	Family/social support <br>
    •	Dystopia Residual <br>

## 🏁 Getting Started <a name = "getting_started"></a>

**Questions to Answer:** <br>
1.	What is the correlation of country happiness and 7 factors?
2.	What is determining factor look like comparing to bottom 10?
3.	Do the countries in top 10 and bottom 10 stay consistent over the year?
4.	What are the countries that making greatest changes?
5.	What are the counties did not make any changes?
6.	Can we do a prediction in year 2020?
7.	Which region has the happiest countries?


## ✍️ Observable Trends <a name = "trends"></a>

![Happiness Ranking 2015-2019](Output/ranking.png)
* The world’s happiest countries are primarily in North Western Europe, North America, and Australia & New Zealand. 

* Economy (GDP per capita) is the most important factor in evaluating a country’s happiness.

* Economy is also strongly positively correlated with other factors like Family and Health. 

* Another interesting observable trend, GDP and generosity has negative correlation factor. Reinforcing that,income does not relate to how generous you are.

![Correaltion_Heatmap](Output/2019_Heatmap.png)

*	Heatmap strongly suggest GDP and family with the score above 75%, has the highest cor-relationship with happiness score.

* In much lower ranked countries even though their score was low, their family score was almost on par with the top 10 countries. Yes, there is a noticeable dip in 2016 but it came back stronger than ever in the last 3 years.

![Top Bottom Analysis](Output/2019_TopBottom_Analysis.png)

* In 2015  australia,north America  , some of European  and Asian countries were dominated by GDP. And again in 2016 majority of world happiness was influenced by GDP.

* From 2017 to 2019 we have another interesting observation – it was not the income, but in fact it was family score which dominated the world happiness score.

### Future Prediction of Australia - Linear Regression
Based on our rankings from the 2015 to 2019, we’ve made some predictions on the happiness score of Australia along with the predicted happiness score of the top 10th country (meaning the minimum score to get into the top 10) to see if we will make it to the top 10. 

![Regression](Output/Australia_Happiness_Score.png)
