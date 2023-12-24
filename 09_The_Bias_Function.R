#In R, we can actually quantify bias by comparing the actual outcome of our data with the predicted outcome. 
#Basically the bias function finds the average amount that the actual outcome is greater than the predicted outcome.
install.packages("SimDesign")
library(SimDesign)

#We'll use the bias function to compare forecasted temperatures with actual temperatures. 
#For this example we'll just take a small sample of our weather data and input them here. We'll label this the actual temp.

actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)

#Then, we'll put in the predictions.

predicted_temp <- c(67.9, 69, 71.5, 70, 67, 69)

#And then the bias function.

bias(actual_temp, predicted_temp)

#When we run this we find out that the result Is 0.71. That's pretty close to zero but the prediction seemed biased towards lower temperatures which, means they aren't as accurate as they could be


#Let's try another example, in this scenario we're working for a game store. The store has been keeping a record of how many copies of new games they sell on release day. They want to compare those numbers to their actual sales so that they could find out if they are ordering new stock according to their actual needs. Just like the previous example, we will start by inputting our sales data, will label that actual underscore sales and add the data points.

actual_sales <- c(150, 203, 137, 247, 116, 287)
predicted_sales <- c(200, 300, 150, 250, 150, 300)
bias(actual_sales, predicted_sales)

#An unbiased model should be close to zero. Let's run the bias function on our sales data now, like before we'll just type bias to start the function and then actual underscore sales and predicted underscore sales in the parentheses. When we press enter... Wow, the result is negative 35. That's pretty far from zero. The predicted outcome is larger than the actual outcome which means they may be ordering too much stock for release days. Now that they've used the bias function to compare these data points, they can reevaluate their stocking practices to avoid buying more stock than they need at once.
