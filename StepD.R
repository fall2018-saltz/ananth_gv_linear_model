
#Step D

# 6.	Next, create a different regression model predicting the overall customer satisfaction from the one variable you think is best.  

# hotelFriendly is the best single predicator for the customer satisfaction since the adjsuted rsquare for this variable is 0.4587 contributing to nearly half of the total adjusted r square including all variables.
predictor_model6 <- lm(data$overallCustSat~data$hotelFriendly, data = data)
# the dendent variable ~ and list of independent variables appended by + with each variable
# the data source which is data frame data
summary(predictor_model6)





# 7.	Write a block comment comparing the two lm models.

# of the 2 lm predicative models. the first model is an improved version. Since it includes all the variables which influence the dependedn variable
# the customer satifaction is not limited to one variable. hence when creating a multlinear regression model, variuous variables have to be considered since they influence the dependent variables 
# signiicanlty and helps improve the model.
# with a single independent variables , its similar to a pratial solution in predicting a model.


