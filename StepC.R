
#Part C: Generate a linear model  

#3.	Next, create one regression model predicting the overall customer satisfaction from the other variables (but not the freeText response). Refer to page 202 in the text for syntax and explanations of lm( ). Make sure to include all predictors in one model – NOT different models each with one predictor

options(scipen = 999)                             # options(scipen =999) is used to eliminate the scintific notation representaiton and to get floating point representation.
predictor_model <- lm(data$overallCustSat~data$whenBookedTrip + data$hotelSize + data$checkInSat + data$hotelState + data$hotelClean + data$hotelFriendly + data$gender + data$guestAge + data$lengthOfStay + data$whenBookedTrip, data = data)
                                                  # lm function is used to get the predication model by passing the necessary paramnets which are
                                                  # the dendent variable ~ and list of independent variables appended by + with each variable
                                                  # the data source which is data frame data
summary(predictor_model)                          # summary function is called on predicative model, to enlost the characteristics of the model
                                                  # the adjusted r square, r square and the p values. The closer the adjusted r sqyuare to 1 the better the model.








# 4.	Report the R-Squared in a comment. Which of the predictors are statistically significant in the model? In a comment, report the coefficients (AKA slopes or B-weights) for each predictor that is statistically significant
# 5.	Write a block comment that explains in a narrative your overall interpretation of the model. Make sure to refer to each variable (one dependent and three independent) by a descriptive name (i.e., not X1, X2, etc.).



# R squared is a measure of predicative model which increase with eavery addition of independent variable that determines the dependent variable. It always increase and not a measure of how good the preective model is.
# the adjusted r square is however a better determinannt of the predective model. With every variable closely related to dependednt variable it shows an increased value closer to 1 indicating a good model 
# adjusted r sqaure = -1 < adjusted rsquare < 1
# adjusted r square varies on the order the independent variables are added in multiregression model.


# the coffecients of the predicators that are signifacnt include - 
# 1. data$lengthOfStay                    0.58749119
# 2. data$hotelFriendly                   0.28495062
# 3. data$hotelClean                      0.24207796
# 4. data$checkInSat                      0.16844471
# 5. data$hotelStateMontana               0.13960104 (nominal state Montana)


# of the plots 

# based on the observation total adjusted r square of the entire model with all predicators is 0.8196, hence taking into consideration 3 variables
# hotel friendlyness, hotel cleanliness, guest age gives 0.4, 0.3, 0.2 as adjusted r square. Hence these are the best predicators.

options(scipen = 999)                             # options(scipen =999) is used to eliminate the scintific notation representaiton and to get floating point representation.
predictor_model2 <- lm(data$overallCustSat~data$hotelFriendly, data = data)
# the dendent variable ~ and list of independent variables appended by + with each variable
# the data source which is data frame data
summary(predictor_model2)  

options(scipen = 999)                             # options(scipen =999) is used to eliminate the scintific notation representaiton and to get floating point representation.
predictor_model3 <- lm(data$overallCustSat~data$hotelClean, data = data)
# the dendent variable ~ and list of independent variables appended by + with each variable
# the data source which is data frame data
summary(predictor_model3)  

options(scipen = 999)                             # options(scipen =999) is used to eliminate the scintific notation representaiton and to get floating point representation.
predictor_model4 <- lm(data$overallCustSat~data$guestAge, data = data)
# the dendent variable ~ and list of independent variables appended by + with each variable
# the data source which is data frame data
summary(predictor_model4)  





# best 3 predicators combined - hotelfrienliness, hotelcleanlines, guestage.

options(scipen = 999)                             # options(scipen =999) is used to eliminate the scintific notation representaiton and to get floating point representation.
predictor_model5 <- lm(data$overallCustSat~data$hotelFriendly + data$hotelClean + data$guestAge, data = data)
# the dendent variable ~ and list of independent variables appended by + with each variable
# the data source which is data frame data
summary(predictor_model5)  





