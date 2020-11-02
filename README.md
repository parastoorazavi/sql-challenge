# sql-challenge


## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Observable Trends](#trends)
- [Acknowledgments](#acknowledgement)

## 🧐 About <a name = "about"></a>
There are some data of the company "Pewlett Hackard". They are going to work on a project which doing some research on employees of the corporation from the 1980s and 1990s.All that remain of the database of employees from that period are six CSV files. For this project we are donig:
1.	Data Modeling
2.	Data Engineering
3.	Data Analysis


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

**Data Analysis:** <br>
1.	List the following details of each employee: employee number, last name, first name, sex, and salary.
2.	List first name, last name, and hire date for employees who were hired in 1986.
3.	List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
4.	List the department of each employee with the following information: employee number, last name, first name, and department name.
5.	List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
6.	List all employees in the Sales department, including their employee number, last name, first name, and department name.
7.	List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8.	In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.


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
