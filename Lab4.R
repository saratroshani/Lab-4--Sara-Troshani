library(tidyverse)
library(AER)

load("~/Desktop/R Studio Data/Household Data/d_HHP2020_241.Rdata")

prime_age_laborforce_data <- d_HHP2020_24 %>%
  filter(
    !is.na(work_kind),
    Age >= 25,
    Age <= 55
  )
summary(prime_age_laborforce_data)

model_1 <- lm(
  income_midpoint ~ Age + Gender + Education + Race + Hispanic,
  data = prime_age_laborforce_data
)
summary(model_1)
confint(model_1)

to_be_predicted1 <- data.frame(
  Age = 25:55,
  Gender = "female",
  Education = "adv degree",
  Race = "Black",
  Hispanic = "Hispanic"
)
to_be_predicted1$yhat <- predict(
  model_1,
  newdata = to_be_predicted1
)
head(to_be_predicted1)

to_be_predicted2 <- data.frame(
  Age = 25:55,
  Gender = "female",
  Education = "high school",
  Race = "Black",
  Hispanic = "Hispanic"
)
to_be_predicted2
to_be_predicted2$yhat <- predict(
  model_1,
  newdata = to_be_predicted2
)

head(to_be_predicted2)
to_be_predicted2$yhat <- predict(
  model_1,
  newdata = to_be_predicted2
)

head(to_be_predicted2)

to_be_predicted2$yhat <- predict(
  model_1,
  newdata = to_be_predicted2
)

head(to_be_predicted2)
to_be_predicted2$yhat <- predict(
  model_1,
  newdata = to_be_predicted2
)
comparison <- data.frame(
  Age = 25:55,
  Advanced_Degree = to_be_predicted1$yhat,
  High_School = to_be_predicted2$yhat
)
head(comparison)
ggplot(comparison, aes(x = Age)) +
  geom_line(aes(y = Advanced_Degree, color = "Advanced Degree"), linewidth = 1) +
  geom_line(aes(y = High_School, color = "High School"), linewidth = 1) +
  labs(
    title = "Predicted Income by Age and Education",
    x = "Age",
    y = "Predicted Income",
    color = "Education"
  )
library(AER)
coeftest(model_1, vcovHC(model_1))
model_log <- lm(
  log(income_midpoint) ~ Age + Gender + Education + Race + Hispanic,
  data = prime_age_laborforce_data
)
summary(model_log)
pred_level <- predict(model_1)
pred_log <- exp(predict(model_log))
mean(pred_level)
mean(pred_log)
female_data <- prime_age_laborforce_data %>%
  filter(Gender == "female")
model_female <- lm(
  income_midpoint ~ Age + Education + Race + Hispanic,
  data = female_data
)
summary(model_female)
drop1(model_1, test = "F")

drop1(model_female, test = "F")
