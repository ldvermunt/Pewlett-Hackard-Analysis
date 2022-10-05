# Pewlett-Hackard-Analysis
SQL Module
## Overview
The purpose of this analysis is to provide a tech company (Pewlett Hackard) with information regarding the likely upcoming prospect of a mass retirement among their employees.  Employee demographic data suggests that they are weighted heavy with older employees and need to dig into this data to determine future hiring needs.  
## Results
  * Supplied company data included information on all current employees.  Filtered for employees approaching expected retirement age this data showed a company with alot of experienced personnel.  Hiring will be needed to backfill these positions.  But what type of employees will be needed the most?
  
  * When the data is grouped by title and the totals added up a straightforward table shows who is needed the most:![image](https://user-images.githubusercontent.com/111530580/194095573-b0e0f1ba-7d2a-49ae-b76e-6d0d85eb2aa8.png)
  
  * Tens of thousands of Senior Engineers and Senior Staff titles employees are getting close to retiring.  as well as over 9000 engineers.  These are skilled and experienced positions that won't be quick to fill.
  
  * In order to buy some badly needed time, Pewlett Hackard can use their in house mentorship program.  Their criteria for the program is that you must have been born in 1965.  A list of these mentorship elegible employees is supplied to the company to determine if this will aid them in filling positions.  https://github.com/ldvermunt/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_elegibility.csv
  
  ## Summary
  Now that Pewlett Hackard knows what titles to concentrate their efforts on, some additional information related to specific departments may help them in future decision making as well. This table shows what departments are in need of attention:![image](https://user-images.githubusercontent.com/111530580/194108106-56a26375-4f5c-4751-8e75-08be796ee780.png)
  
  Another question for the company is why is the criteria for the mentorship program so specific?  Utilizing only employees born in 1965 limits them to 1549 employees as seen by using the count function on the mentorship eligibility table
  
  ![image](https://user-images.githubusercontent.com/111530580/194110009-e5b9c149-e214-4b42-af18-505267e97354.png)
  
  If they increase the date range to a 5 year span of 1963 through 1967 the amount of mentorships increases significantly: ![image](https://user-images.githubusercontent.com/111530580/194110960-552236c0-8667-408b-ba10-b5dd63d2b701.png)
  
  The company leadership can adjust the program numbers as they see fit to return an acceptable number of employees for the program to help offset the departing senior personnel.



