# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

<img width="499" alt="Screen Shot 2021-11-27 at 2 33 46 PM" src="https://user-images.githubusercontent.com/89358080/143719907-333d6cf0-c396-45d5-86db-9ceee27b9e2e.png">

From the statistics shown above, we are able to answer the questions below:

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

    - Vehicle weight, spoiler_angle & AWD provided a non-random amount of variance. The two variables that had the most amount of random variance are ground_clearance and vehicle_length. The vehicle length, and vehicle ground clearance are statistically likely to provide non-random amounts of variance to the model. That is to say, the vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype. Conversely, the vehicle weight, spoiler angle, and All Wheel Drive (AWD) have p-Values that indicate a random amount of variance with the dataset.

- Is the slope of the linear model considered to be zero? Why or why not?

    - No, the slope of our model is not considered to be zero. With a p-value of 5.35e-11, we reject the null hypothesis given this value is much smaller than the significance level of 0.05%. We also see the values of the linear model coefficients that the slope is not zero.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

    - The multiple R-squared value of 0.7149 shows approximately 71% of the predictions are resolved by this model is able to effectively predict the mpg of MechaCar prototypes. 
