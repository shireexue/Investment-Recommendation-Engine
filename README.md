# Investment-Recommendation-Engine

###Goal
To build a investment recommendation tool to help beginner investers build an optimal portfolio based on their risk preferences and demographics. 
Time horizon:  one year 
####Data
200 securities: 150 domestics stocks, 25 international ETFs, and 25 bond ETFs.  
Historical data taken daily going back 5 years, 1260 trading days.

####Assumption:
Past five years’ stock market performance will still be applicable to the upcoming year; No transaction cost; Single-period investment 

###Methodology

  -  Modern Portfolio Theory
  -  Sharpe's Ratio

###Models : Non-linear Program
#####Objective function – Sharpe Ratio
#####Process

   -  Stocks prices download from Yahoo! Finance
   -  Format data and calculate annualized return and risk
   -  Covariance matrix – Look for portfolio with uncorrelated assets
   
#####Traditional mix model

   -  Decision variables:  weight of each assets
   -  Objective function – Sharpe Ratio
   -  Constraints:  predefined asset mix for different ages
   
#####Flexible allocation model

   -  Decision variables:  weight of each assets
   -  Objective function – Sharpe Ratio
   -  Test the ‘Flexible Asset Allocation’ approach and compare result    -  Constraints: Same risk level but higher return

