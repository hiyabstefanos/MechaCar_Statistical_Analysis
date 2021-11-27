# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Based on the statistics shown below we can determine how effective the linear regression model is at predicting the MPG of the MechaCar prototypes:

<img width="508" alt="Screen Shot 2021-11-27 at 3 23 08 PM" src="https://user-images.githubusercontent.com/89358080/143721232-884ec94d-bc25-4c8f-a540-6a0266bee1eb.png"> <img width="460" alt="Screen Shot 2021-11-27 at 3 23 25 PM" src="https://user-images.githubusercontent.com/89358080/143721237-fcf64c6c-c21d-4dc4-b122-bf35b856beff.png">

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

    - Vehicle weight, spoiler_angle & AWD provided a non-random amount of variance. The two variables that had the most amount of random variance are ground_clearance and vehicle_length. The vehicle length, and vehicle ground clearance are statistically likely to provide non-random amounts of variance to the model. That is to say, the vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype. Conversely, the vehicle weight, spoiler angle, and All Wheel Drive (AWD) have p-Values that indicate a random amount of variance with the dataset.

- Is the slope of the linear model considered to be zero? Why or why not?

    - No, the slope of our model is not considered to be zero. With a p-value of 5.35e-11, we reject the null hypothesis given this value is much smaller than the significance level of 0.05%. We also see the values of the linear model coefficients that the slope is not zero.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

    - The multiple R-squared value of 0.7149 shows approximately 71% of the predictions are resolved by this model is able to effectively predict the mpg of MechaCar prototypes. 

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The current manufacturing data shows that the variance is well below the 100 pounds per square inch requirement as seen in the total summary

<img width="492" alt="Screen Shot 2021-11-27 at 3 06 46 PM" src="https://user-images.githubusercontent.com/89358080/143720788-63e1dc52-33a0-4e6c-b6e9-e501e2d66aa5.png">

Digging a little deeper, we can see the differences based on the lots:

<img width="645" alt="Screen Shot 2021-11-27 at 3 07 34 PM" src="https://user-images.githubusercontent.com/89358080/143720813-4297bc7e-fdd2-4ea1-a73c-0742dac56766.png">

While the variance for Lot 1 and Lot 2 are significantly below 100 PSI at 0.98 and 7.47, respectively. On the other hand, Lot 3 exceeds the limit by nearly double at 170.29 PSI.

## T-Tests on Suspension Coils
Next, we performed a T-test to compare the mean suspension weight of the providied dataset to the population mean of 1500 PSI. Taking the dataset as a whole into account we observe a p-value of 0.06028 and a mean of 1498.78. There is not enough evidence to reject the null hypothesis meaning the manufacturing lots are not statistically significant at the when looking at the dataset as a whole.

<img width="467" alt="Screen Shot 2021-11-27 at 5 48 10 PM" src="https://user-images.githubusercontent.com/89358080/143722506-cd6b8b40-cbf8-460e-8cf8-33c53c9fa4a2.png">

We see a different story when looking at each lot individually.

<img width="402" alt="Screen Shot 2021-11-27 at 5 48 52 PM" src="https://user-images.githubusercontent.com/89358080/143722516-7522d5cf-a2ff-4750-86de-31c896a29719.png">

Based off the statistics shown above, Lot 1 has a sample mean of 1500 with a p-value of 1 and Lot 2 has a smaple mean of 1500.2 and a p-value of 0.6072. Both of these lots a therefore statistically similar from the population mean. On the other hand, Lot 3 has a mean of 1496.14 and a p-value of 0.04168 which is less than the significance level of 0.05. Therefore the null hyposthesis is rejected and the results are statistically significant and we can conclude there are problems with the production of Lot 3 which will need to be resolved.
