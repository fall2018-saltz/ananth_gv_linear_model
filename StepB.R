
#Part B: Explore the data  

# easier method to have a scatter plot using simple plot fucntion .

plot(data$hotelSize, data$overallCustSat)                                        # independent variables goes on the x axis and independent variables go into y.
plot(data$checkInSat, data$overallCustSat)

                                                  
library(ggplot2)                                                                  # load the ggplot2 library to plot the bivariate graphs


# since customer satisfaction is the dependent variable which gives us a predication it should go on the y axis in the format - y(predicted/ dependent)  = independent variables + constants
# independent variables are on the x axis which help in determining the dependent variable.

# hotelsize vs customer satisfaction
plot1 <- ggplot(data,aes(jitter(hotelSize),overallCustSat))+ geom_point()         # ggplot function is called with 2 paraments the data source and the aes aesthetic mapping of hotelsize and overalcustomer satisfaction. These go into respective x and y axis.
                                                                             # plot displays the plot defined in previous statement.
                                                                                  # jitter function is used to add noise so that cramped data points are more visible.
# Obervation -
# the range is between 4-10 with few outliers. the plot shows that that the 2 variables may not be linearly related.



plot2 <- ggplot(data,aes(jitter(checkInSat),overallCustSat))+ geom_point()         # ggplot function is called with 2 paraments the data source and the aes aesthetic mapping of checkinSat and overalcustomer satisfaction. These go into respective x and y axis.
                                                                              # plot displays the plot defined in previous statement.
# jitter function is used to add noise so that cramped data points are more visible.
# Obervation -
# the range is between 4-10 with 2 or 3 possible outliers, this may not be outliers and can infact be valid points, the plot shows that that the 2 variables are related. As number of people who checkin on saturday increase determines that customer satisfaction is great. deriving trh predicative model, we can determine the type of realtion


state <- as.factor(data$hotelState)                                                # type safing it so that state is taken as factors for conversion
states_categorical <- unclass(state)                                               # unclass fucntion is used to convert the factor categorical variables into numerical nomianal variables.   
plot3 <- ggplot(data,aes(jitter(states_categorical),overallCustSat))+ geom_point()  # ggplot function is called with 2 paraments the data source and the aes aesthetic mapping of hotelsize and overalcustomer satisfaction. These go into respective x and y axis.
                                                                               # plot displays the plot defined in previous statement.
# jitter function is used to add noise so that cramped data points are more visible.
# Obervation -
# the range is between 4-10. The plot shows that that the 2 variables may not be linearly related as the y axis plots are uniform. THere could be a non linear relation or no realtion at all. Unless we draw a relation using a predicative model. We cannot conclude anything.



plot4 <- ggplot(data,aes(jitter(hotelClean),overallCustSat))+ geom_point()         # ggplot function is called with 2 paraments the data source and the aes aesthetic mapping of hotelsize and overalcustomer satisfaction. These go into respective x and y axis.
                                                                             # plot displays the plot defined in previous statement.
# jitter function is used to add noise so that cramped data points are more visible.
# Obervation -
# the range is between 0 to 10 The plot shows that that the 2 variables are definetly related as there is an increasing trend with respect to cleaniliness o fhotel and satisfaction




plot5 <- ggplot(data,aes(jitter(hotelFriendly),overallCustSat))+ geom_point()         # ggplot function is called with 2 paraments the data source and the aes aesthetic mapping of hotelsize and overalcustomer satisfaction. These go into respective x and y axis.
                                                                             # plot displays the plot defined in previous statement.
# jitter function is used to add noise so that cramped data points are more visible.
# Obervation -
# the range is between 4-10. the plot shows that that the 2 variables are related as there is an increasing trend with increase in hotel friendliness the customer satifaction increases.
# 10 being maximum score across the 2 axis.






gender <- as.factor(data$hotelState)                                                       # type safing it so that state is taken as factors for conversion
gender_categorical <- unclass(state)                                                       # unclass fucntion is used to convert the factor categorical variables into numerical nomianal variables. 
plot6 <- ggplot(data,aes(jitter(gender_categorical),overallCustSat))+ geom_point()         # ggplot function is called with 2 paraments the data source and the aes aesthetic mapping of hotelsize and overalcustomer satisfaction. These go into respective x and y axis.
                                                                                      # plot displays the plot defined in previous statement.
# jitter function is used to add noise so that cramped data points are more visible.
# Obervation -
# the range is between 0-10 with few outliers. the plot shows that that the 2 variables may not be linearly related or related at all. Unless we draw a relation using a predicative model. We cannot conclude anything.






plot7 <- ggplot(data,aes(jitter(guestAge),overallCustSat))+ geom_point()         # ggplot function is called with 2 paraments the data source and the aes aesthetic mapping of hotelsize and overalcustomer satisfaction. These go into respective x and y axis.
                                                                             # plot displays the plot defined in previous statement.
# jitter function is used to add noise so that cramped data points are more visible.
# Obervation -
# the range is between -2to 10. The negative value could be a legit or outlier. has to be determined and decided. the plot shows that that the 2 variables guest age and customer satifaction are closely related.The plot almost looks like they are linealy related. As age increase the customer satisfaction in likely to be more.





plot8 <- ggplot(data,aes(jitter(lengthOfStay),overallCustSat))+ geom_point()         # ggplot function is called with 2 paraments the data source and the aes aesthetic mapping of hotelsize and overalcustomer satisfaction. These go into respective x and y axis.
                                                                             # plot displays the plot defined in previous statement.
# jitter function is used to add noise so that cramped data points are more visible.
# Obervation -
# the range is between 4-10 with few outliers. the plot shows that that the 2 variables may not be linearly related. There could be a non linear relation. This can be determined by a predective model.



plot9 <- ggplot(data,aes(jitter(whenBookedTrip),overallCustSat))+ geom_point()         # ggplot function is called with 2 paraments the data source and the aes aesthetic mapping of hotelsize and overalcustomer satisfaction. These go into respective x and y axis.                                                                            # plot displays the plot defined in previous statement.
# jitter function is used to add noise so that cramped data points are more visible.
# Obervation -
# the range is between 0 to 10. the plot shows that that the 2 variables are related closely. linearly related. As length of stay increases to a the likelihood that the customer satisfaction increase is more.





