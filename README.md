# Lab 4 - Mincer Wage Regression

## About This Lab

For this lab, I use the Household Pulse data to look at the relationship between education and income.

I focus on people between the ages of 25 and 55 who have information about their work status. I use this age group because these people are more likely to be part of the labor force.

The main question I am looking at is whether people with higher levels of education also have higher predicted income.

---

## Main Regression

My main regression uses income as the dependent variable.

The variables I use to help explain income are:

- Age
- Gender
- Education
- Race
- Hispanic status

The regression shows a strong relationship between education and income.

For example, compared with the less-than-high-school group:

- College graduates are predicted to have about **$67,093 higher income**.
- People with an advanced degree are predicted to have about **$88,508 higher income**.

These results hold the other variables in the model constant.

Age also has a positive relationship with income. One more year of age is associated with about **$1,239 more in predicted income**.

Most of the results are statistically significant. The "some high school" education group is the main exception.

---

## Predicted Income

I also use the regression to predict income for two people with the same age, gender, race, and Hispanic status, but different education levels.

I compare:

- A Hispanic Black female with an advanced degree
- A Hispanic Black female with a high school education

At age 25:

- Advanced degree predicted income: about **$81,549**
- High school predicted income: about **$8,149**

The model predicts higher income for the advanced degree group at every age.

Predicted income also increases with age for both groups.

---

## Predicted Income Graph

The graph below shows the predicted income for the two education groups from ages 25 to 55.

<img width="1344" height="960" alt="image" src="https://github.com/user-attachments/assets/364d24b1-f9f7-48cf-8b52-ef4f8694aa0a" />


The two lines both go up as age increases.

The advanced degree line stays much higher than the high school line. This shows the large difference in predicted income between the two education groups in this model.

---

## Robust Standard Errors

I also use robust standard errors to see if the results change.

The numbers change a little, but the main results stay the same.

Most of the variables are still statistically significant, and education is still strongly related to income.

The "some high school" group is still not statistically significant.

---

## Log Income Model

I also run another regression using the **log of income** instead of income in dollars.

This is another way to look at the relationship between the variables and income.

The main results are similar, and education is still strongly related to income.

The average predicted income from the regular model is about:

**$112,008**

The average predicted income after changing the log predictions back into dollars is about:

**$95,028**

The numbers are different because one model uses income in dollars and the other model uses the log of income.

---

## Female Only Model

I also run the regression again using only females.

Education still has a strong relationship with income.

Compared with females in the less-than-high-school group:

- Female college graduates are predicted to have about **$71,055 higher income**.
- Females with an advanced degree are predicted to have about **$93,496 higher income**.

This shows that the relationship between education and income is still strong when I only look at females.

---

## Joint F Tests

I also use F-tests to check whether groups of variables are statistically significant together.

In the main model:

- Age is statistically significant
- Gender is statistically significant
- Education is statistically significant
- Race is statistically significant
- Hispanic status is statistically significant

Education is also jointly significant in the female-only model.

This tells me that education is an important variable in the model.

---

## Conclusion

Overall, I find a strong relationship between education and income.

People with higher levels of education generally have higher predicted income in these models.

This relationship stays strong when I:

- Use robust standard errors
- Use the log of income
- Look only at females

However, these results only show a relationship between education and income. They do not prove that education directly causes someone to have a higher income.


