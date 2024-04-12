--- DATA CLEANING

select *
from [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]

--- Finding the number of consumers

select 
count(distinct(Customer_ID)) as Total_Customer
from [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]


--- Exploring duplicate rows

select 
Customer_ID, COUNT(*) as Total_Duplicates
from [telecom_customer_churn]
group by Customer_ID
having COUNT(*) > 1

--- NB; No duplicates found 

--- Exploring missing values in all 12 columns

WITH MissingValueCounts AS (
SELECT 'Customer ID' AS ColumnName, COUNT(*) - COUNT(Customer_ID) AS MissingCount
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Gender', COUNT(*) - COUNT(Gender)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Age', COUNT(*) - COUNT(Age)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Married', COUNT(*) - COUNT(Married)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Number_of_Dependents', COUNT(*) - COUNT(Number_of_Dependents)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'City', COUNT(*) - COUNT(City)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Number_of_Referrals', COUNT(*) - COUNT(Number_of_Referrals)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Tenure_in_Months', COUNT(*) - COUNT(Tenure_in_Months)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Offer', COUNT(*) - COUNT(Offer)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Phone_Service', COUNT(*) - COUNT(Phone_Service)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Phone_Service', COUNT(*) - COUNT(Phone_Service)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Avg_Monthly_Long_Distance_Charges', COUNT(*) - COUNT(Avg_Monthly_Long_Distance_Charges)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Multiple_Lines', COUNT(*) - COUNT(Multiple_Lines)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Internet_Service', COUNT(*) - COUNT(Internet_Service)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Internet_Type', COUNT(*) - COUNT(Internet_Type)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Avg_Monthly_GB_Download', COUNT(*) - COUNT(Avg_Monthly_GB_Download)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Online_Security', COUNT(*) - COUNT(Online_Security)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Online_Backup', COUNT(*) - COUNT(Online_Backup)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Device_Protection_Plan', COUNT(*) - COUNT(Device_Protection_Plan)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Premium_Tech_Support', COUNT(*) - COUNT(Premium_Tech_Support)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Streaming_TV', COUNT(*) - COUNT(Streaming_TV)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Streaming_Movies', COUNT(*) - COUNT(Streaming_Movies)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Streaming_Music', COUNT(*) - COUNT(Streaming_Music)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Unlimited_Data', COUNT(*) - COUNT(Unlimited_Data)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Contract', COUNT(*) - COUNT(Contract)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Paperless_Billing', COUNT(*) - COUNT(Paperless_Billing)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Payment_Method', COUNT(*) - COUNT(Payment_Method)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Monthly_Charge', COUNT(*) - COUNT(Monthly_Charge)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Total_Charges', COUNT(*) - COUNT(Total_Charges)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Total_Refunds', COUNT(*) - COUNT(Total_Refunds)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Total_Extra_Data_Charges', COUNT(*) - COUNT(Total_Extra_Data_Charges)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Total_Long_Distance_Charges', COUNT(*) - COUNT(Total_Long_Distance_Charges)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Total_Revenue', COUNT(*) - COUNT(Total_Revenue)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Churn_Category', COUNT(*) - COUNT(Churn_Category)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'
UNION ALL
SELECT 'Churn_Reason', COUNT(*) - COUNT(Churn_Reason)
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned')

SELECT ColumnName, MissingCount
FROM MissingValueCounts
WHERE MissingCount > 0
ORDER BY MissingCount DESC;

--- NB; here are 12 columns with missing values. 
--- So let’s analyse what is each column to conclude if is necessary handle the missing values with any strategic.


SELECT Column_Name, Data_Values
FROM (
    SELECT 'Internet_Type' AS Column_Name,
        STUFF((
            SELECT DISTINCT ', ' + Internet_Type
            FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
            FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, '') AS Data_Values
    UNION ALL
    SELECT 'Streaming_TV',
        STUFF((
            SELECT DISTINCT ', ' + CAST(Streaming_TV AS NVARCHAR(MAX))
            FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
            FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, '') AS Data_Values
    UNION ALL
    SELECT 'Multiple_Lines',
        STUFF((
            SELECT DISTINCT ', ' + CAST(Multiple_Lines AS NVARCHAR(MAX))
            FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
            FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, '') AS Data_Values
    UNION ALL
    SELECT 'Streaming_Music',
        STUFF((
            SELECT DISTINCT ', ' + CAST(Streaming_Music AS NVARCHAR(MAX))
            FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
            FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, '') AS Data_Values
    UNION ALL
    SELECT 'Device_Protection_Plan',
        STUFF((
            SELECT DISTINCT ', ' + CAST(Device_Protection_Plan AS NVARCHAR(MAX))
            FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
            FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, '') AS Data_Values
    UNION ALL
    SELECT 'Premium_Tech_Support',
        STUFF((
            SELECT DISTINCT ', ' + CAST(Premium_Tech_Support AS NVARCHAR(MAX))
            FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
            FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, '') AS Data_Values
    UNION ALL
    SELECT 'Streaming_Movies',
        STUFF((
            SELECT DISTINCT ', ' + CAST(Streaming_Movies AS NVARCHAR(MAX))
            FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
            FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, '') AS Data_Values
    UNION ALL
    SELECT 'Online_Security',
        STUFF((
            SELECT DISTINCT ', ' + CAST(Online_Security AS NVARCHAR(MAX))
            FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
            FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, '') AS Data_Values
    UNION ALL
    SELECT 'Online_Backup',
        STUFF((
            SELECT DISTINCT ', ' + CAST(Online_Backup AS NVARCHAR(MAX))
            FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
            FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, '') AS Data_Values
    UNION ALL
    SELECT 'Unlimited_Data',
        STUFF((
            SELECT DISTINCT ', ' + CAST(Unlimited_Data AS NVARCHAR(MAX))
            FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
            FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, '') AS Data_Values
    UNION ALL
    SELECT 'Avg_Monthly_GB_Download',
        CAST(ROUND(AVG(Avg_Monthly_GB_Download), 2) AS NVARCHAR(MAX)) AS Data_Values
		FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
    UNION ALL
    SELECT 'Avg_Monthly_Long_Distance_Charges',
        CAST(ROUND(AVG(Avg_Monthly_Long_Distance_Charges), 2) AS NVARCHAR(MAX)) AS Data_Values
		FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
) AS Subquery;


--- NB; there are 10 categorical features and 2 numerical features. 
--- Let’s check the proportion of these missing values in comparison with the total dataset classified as ‘Churned’. 
--- It’s important to verify this because depending on the proportion, handling these values with a category that has a higher density could introduce bias into my analysis.


SELECT 
COUNT(*) as Total_Churned
FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE Customer_Status = 'Churned'

--- NB;  there are 1869 consumers classfied as “Churned”, so the missing values represents between 6% and 9% of this consumers.

---Percentage of all customers that belong to the "Churned" category
SELECT 
    ROUND((COUNT(CASE WHEN Customer_Status = 'Churned' THEN 1 END) * 100.0) / COUNT(*), 2) AS Percentage_Churned
FROM 
    [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn];


--- DATA EXPLORATION

SELECT
    COUNT(CASE WHEN Customer_Status = 'Churned' THEN 1 END) AS Total_Churned,
    ROUND((COUNT(CASE WHEN Customer_Status = 'Churned' THEN 1 END) * 100.0) / COUNT(*), 2) AS Proportion_Churned
FROM
    [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn];



---- QUESTION
--- What is the average age of the customers that joined, stayed and churned?

SELECT
    ROUND(AVG(CASE WHEN Customer_Status = 'Joined' THEN Age END), 2) AS Avg_Age_Joined,
    ROUND(AVG(CASE WHEN Customer_Status = 'Stayed' THEN Age END), 2) AS Avg_Age_Stayed,
    ROUND(AVG(CASE WHEN Customer_Status = 'Churned' THEN Age END), 2) AS Avg_Age_Churned
FROM
    [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn];

---- NB ; The average ages of consumers across the three customer statuses are within the 40s, 
---- yet it is noticeable that newcomers to the company are younger, while older users tend to leave. This trend could prompt the company to consider specific retention strategies aimed at older customers. 
---- Such strategies could include offering loyalty benefits, customizing service packages to fit their usage patterns, or providing personalized customer service support tailored to the preferences of the older demographic.


---- QUESTION
--- What is the gender’s proportion churned?

SELECT
    Gender,
    COUNT(Gender) AS Total,
    ROUND((COUNT(*) * 100.0) / 
          (SELECT COUNT(*) FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn] WHERE Customer_Status = 'Churned'), 2) AS Churned
FROM 
    [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE 
    Customer_Status = 'Churned'
GROUP BY 
    Gender;


---- QUESTION
---  how churn rates vary between married and unmarried customers

SELECT
    Married,
    COUNT(Married) AS Total,
    ROUND((COUNT(*) * 100.0) / 
          (SELECT COUNT(*) FROM [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn] WHERE Customer_Status = 'Churned'), 2) AS Proportion_Churned
FROM 
    [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE 
    Customer_Status = 'Churned'
GROUP BY 
    Married;

----NB: reveals a significant difference in churn rates based on marital status: unmarried customers are more likely to churn at 64.21% compared to 35.79% for married customers. 
----This suggests that marital status is a strong indicator of customer retention. To leverage this insight, companies should craft targeted engagement strategies. 
---For unmarried customers, focus on individualized incentives and community features, while for married ones, emphasize family plans and stability.


---- QUESTION
---Does the fact that the customer has a child correlate with “Churned”?

UPDATE [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
SET Number_of_Dependents = 1
WHERE Number_of_Dependents >= 1;


SELECT
    main.Customer_Status,
    main.Number_of_Dependents AS Dependents,
    COUNT(*) AS Total,
    ROUND(COUNT(*) * 100.0 / Total_Status.Total_Per_Status, 2) AS Taxa
FROM 
    [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn] main
JOIN (
    SELECT
        Customer_Status,
        COUNT(*) AS Total_Per_Status
    FROM 
        [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
    GROUP BY 
        Customer_Status
) AS Total_Status
ON 
    main.Customer_Status = Total_Status.Customer_Status
GROUP BY 
    main.Customer_Status, 
    main.Number_of_Dependents,
    Total_Status.Total_Per_Status
ORDER BY 
    main.Customer_Status ASC, 
    Dependents;



---- QUESTION
---The average of referrals has correlation with customers’s status?


SELECT
    Customer_Status,
    ROUND(AVG(TRY_CAST(Number_of_Referrals AS DECIMAL)), 2) as Avg_Referrals
FROM 
    [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
GROUP BY 
    Customer_Status
ORDER BY 
    Avg_Referrals DESC;


----- QUESTION
----What is the better offer for each customer’s status?

SELECT
	Customer_Status,
	Offer,
	COUNT(Offer) as Total
FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
GROUP BY 
	Customer_Status, Offer
ORDER BY 
	Customer_Status, Total DESC;


-----QUESTION
----What is the average of tenure in months for each customer’s status?

SELECT
    Customer_Status,
    ROUND(AVG(TRY_CAST(Tenure_in_Months AS DECIMAL)), 2) as Avg_Tenure
FROM 
    [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
GROUP BY 
    Customer_Status
ORDER BY 
    Avg_Tenure DESC;


---- QUESTION
---What is the average monthly long distance charge for each customer’s status?

SELECT
	Customer_Status,
	ROUND(AVG(Avg_Monthly_Long_Distance_Charges),2) as Avg_Monthly_Long_Distance_Charges
FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
GROUP BY 
	Customer_Status;



---- QUESTION
--- Total of multiple lines for each customer’s status

SELECT
	Customer_Status,
	Internet_Service,
	COUNT(Internet_Service) as Total
FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE 
	Internet_Service IS NOT NULL
GROUP BY 
	Customer_Status, Internet_Service
ORDER BY 
	Customer_Status DESC;


----- QUESTION
--- Total of internet service for each customer’s status

WITH CountData AS (
  SELECT
    Customer_Status,
    Internet_Service,
    COUNT(*) AS Total
  FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
  WHERE 
	Internet_Service IS NOT NULL
  GROUP BY 
	Customer_Status, Internet_Service
),
TotalPerStatus AS (
  SELECT
    Customer_Status,
    SUM(Total) AS StatusTotal
  FROM 
	CountData
  GROUP BY 
	Customer_Status
)
SELECT
  CountData.Customer_Status,
  CountData.Internet_Service,
  CountData.Total,
  ROUND((CountData.Total * 100.0 / TotalPerStatus.StatusTotal), 2) AS Percentage
FROM 
	CountData
JOIN TotalPerStatus ON CountData.Customer_Status = TotalPerStatus.Customer_Status
ORDER BY 
	CountData.Customer_Status DESC, CountData.Internet_Service;



---- QUESTION
---- Main internet type for each customer’s status

SELECT
	Customer_Status,
	Internet_Type,
	COUNT(Internet_Type) as Total
FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE 
	Internet_Type IS NOT NULL
GROUP BY 
	Customer_Status, Internet_Type
ORDER BY 
	Customer_Status DESC;




---- QUESTION
---Average monthly of gb download for each customer’s status

SELECT
	Customer_Status,
	ROUND(AVG(Avg_Monthly_GB_Download),2) as Average_Download
FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE 
	Avg_Monthly_GB_Download IS NOT NULL
GROUP BY 
	Customer_Status
ORDER BY 
	Average_Download DESC;


---- QUESTION
---Proportion of user that has online security for each customer’s status

WITH TotalStatus AS (
  SELECT
    Customer_Status,
    COUNT(*) as TotalPerStatus
  FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
  WHERE 
	Online_Security IS NOT NULL
  GROUP BY 
	Customer_Status
)

SELECT
  a.Customer_Status,
  a.Online_Security,
  COUNT(a.Online_Security) as Total,
  ROUND(COUNT(a.Online_Security) * 100.0 / b.TotalPerStatus,2) as Percentage
FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn] a
JOIN TotalStatus b ON a.Customer_Status = b.Customer_Status
WHERE 
	a.Online_Security IS NOT NULL
GROUP BY 
	a.Customer_Status, a.Online_Security, b.TotalPerStatus
ORDER BY 
	a.Customer_Status DESC, a.Online_Security;




---- QUESTION
--- Proportion of user that has online backup for each customer’s status

WITH TotalStatus AS (
  SELECT
    Customer_Status,
    COUNT(*) as TotalPerStatus
  FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
  WHERE 
	Online_Backup IS NOT NULL
  GROUP BY 
	Customer_Status
)

SELECT
  a.Customer_Status,
  a.Online_Backup,
  COUNT(a.Online_Backup) as Total,
  ROUND(COUNT(a.Online_Backup) * 100.0 / b.TotalPerStatus, 2) as Percentage
FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn] a
JOIN TotalStatus b ON a.Customer_Status = b.Customer_Status
WHERE 
	a.Online_Backup IS NOT NULL
GROUP BY 
	a.Customer_Status, a.Online_Backup, b.TotalPerStatus
ORDER BY 
	a.Customer_Status, Total DESC;



---- QUESTION
--- Proportion of users that have device protection plan for each customer’s status


WITH TotalStatus AS (
  SELECT
    Customer_Status,
    COUNT(*) as TotalPerStatus
  FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn] -- Removed backtick here
  WHERE 
	Device_Protection_Plan IS NOT NULL
  GROUP BY 
	Customer_Status
)

SELECT
  a.Customer_Status,
  a.Device_Protection_Plan,
  COUNT(a.Device_Protection_Plan) as Total,
  ROUND(COUNT(a.Device_Protection_Plan) * 100.0 / b.TotalPerStatus, 2) as Percentage
FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn] a
JOIN TotalStatus b ON a.Customer_Status = b.Customer_Status
WHERE 
	a.Device_Protection_Plan IS NOT NULL
GROUP BY 
	a.Customer_Status, a.Device_Protection_Plan, b.TotalPerStatus
ORDER BY 
	a.Customer_Status, Total DESC;



----- QUESTION
---Proportion of users that have premium tech support plan for each customer’s status

WITH TotalStatus AS (
  SELECT
    Customer_Status,
    COUNT(*) as TotalPerStatus
  FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
  WHERE 
	Premium_Tech_Support IS NOT NULL
  GROUP BY 
	Customer_Status
)

SELECT
  a.Customer_Status,
  a.Premium_Tech_Support,
  COUNT(a.Premium_Tech_Support) as Total,
  ROUND(COUNT(a.Premium_Tech_Support) * 100.0 / b.TotalPerStatus, 2) as Percentage
FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn] a
JOIN TotalStatus b ON a.Customer_Status = b.Customer_Status
WHERE 
	a.Premium_Tech_Support IS NOT NULL
GROUP BY 
	a.Customer_Status, a.Premium_Tech_Support, b.TotalPerStatus
ORDER BY 
	a.Customer_Status, Total DESC;




----QUESTION
---Proportion of users that have streaming TV plan for each customer’s status

WITH TotalStatus AS (
  SELECT
    Customer_Status,
    COUNT(*) as TotalPerStatus
  FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
  WHERE 
	Streaming_TV IS NOT NULL
  GROUP BY 
	Customer_Status
)

SELECT
  a.Customer_Status,
  a.Streaming_TV,
  COUNT(a.Streaming_TV) as Total,
  ROUND(COUNT(a.Streaming_TV) * 100.0 / b.TotalPerStatus, 2) as Percentage
FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn] a
JOIN TotalStatus b ON a.Customer_Status = b.Customer_Status
WHERE 
	a.Streaming_TV IS NOT NULL
GROUP BY 
	a.Customer_Status, a.Streaming_TV, b.TotalPerStatus
ORDER BY 
	a.Customer_Status, Total DESC;



------ QUESTION
---Proportion of user that has streaming movies plan for each customer’s status



WITH TotalStatus AS (
  SELECT
    Customer_Status,
    COUNT(*) as TotalPerStatus
  FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
  WHERE 
	Streaming_Movies IS NOT NULL
  GROUP BY 
	Customer_Status
)

SELECT
  a.Customer_Status,
  a.Streaming_Movies,
  COUNT(a.Streaming_Movies) as Total,
  ROUND(COUNT(a.Streaming_Movies) * 100.0 / b.TotalPerStatus, 2) as Percentage
FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn] a
JOIN TotalStatus b ON a.Customer_Status = b.Customer_Status
WHERE 
	a.Streaming_Movies IS NOT NULL
GROUP BY 
	a.Customer_Status, a.Streaming_Movies, b.TotalPerStatus
ORDER BY 
	a.Customer_Status, Total DESC;



----- QUESTION
--- Proportion of user that has streaming music plan for each customer’s status

WITH TotalStatus AS (
  SELECT
    Customer_Status,
    COUNT(*) as TotalPerStatus
  FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
  WHERE 
	Streaming_Music IS NOT NULL
  GROUP BY 
	Customer_Status
)

SELECT
  a.Customer_Status,
  a.Streaming_Music,
  COUNT(a.Streaming_Music) as Total,
  ROUND(COUNT(a.Streaming_Music) * 100.0 / b.TotalPerStatus, 2) as Percentage
FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn] a
JOIN TotalStatus b ON a.Customer_Status = b.Customer_Status
WHERE 
	a.Streaming_Music IS NOT NULL
GROUP BY 
	a.Customer_Status, a.Streaming_Music, b.TotalPerStatus
ORDER BY 
	a.Customer_Status, Total DESC;



------QUESTION
---Proportion of user that has unlimited data plan for each customer’s status

WITH TotalStatus AS (
  SELECT
    Customer_Status,
    COUNT(*) as TotalPerStatus
  FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
  WHERE 
	Unlimited_Data IS NOT NULL
  GROUP BY 
	Customer_Status
)

SELECT
  a.Customer_Status,
  a.Unlimited_Data,
  COUNT(a.Unlimited_Data) as Total,
  ROUND(COUNT(a.Unlimited_Data) * 100.0 / b.TotalPerStatus, 2) as Percentage
FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn] a
JOIN TotalStatus b ON a.Customer_Status = b.Customer_Status
WHERE 
	a.Unlimited_Data IS NOT NULL
GROUP BY 
	a.Customer_Status, a.Unlimited_Data, b.TotalPerStatus
ORDER BY 
	a.Customer_Status, Total DESC;



---- QUESTION
---More used type of contract by each customer’s status

WITH TotalStatus AS (
  SELECT
    Customer_Status,
    COUNT(*) as TotalPerStatus
  FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
  WHERE 
	Contract IS NOT NULL
  GROUP BY 
	Customer_Status
)

SELECT
  a.Customer_Status,
  a.Contract,
  COUNT(a.Contract) as Total,
  ROUND(COUNT(a.Contract) * 100.0 / b.TotalPerStatus, 2) as Percentage
FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn] a
JOIN TotalStatus b ON a.Customer_Status = b.Customer_Status
WHERE 
	a.Contract IS NOT NULL
GROUP BY 
	a.Customer_Status, a.Contract, b.TotalPerStatus
ORDER BY 
	a.Customer_Status, Total DESC;



---- QUESTION
---Average of monthly charge for each customer’s status

SELECT
	Customer_Status,
	ROUND(AVG(Monthly_Charge),2) as Average_Monthly_Charge
FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE 
	Monthly_Charge IS NOT NULL
GROUP BY 
	Customer_Status
ORDER BY 
	Customer_Status DESC;




---- QUESTION
---Average of total charge for each customer’s status

SELECT
	Customer_Status,
	ROUND(AVG(Total_Charges),2) as Avg_Total_Charges
FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE 
	Total_Charges IS NOT NULL
GROUP BY 
	Customer_Status
ORDER BY 
	Avg_Total_Charges DESC;



-----QUESTION
----Average of total refunds for each customer’s status

SELECT
    Customer_Status,
    ROUND(AVG(CAST(Total_Refunds AS FLOAT)), 2) AS Avg_Total_Refunds
FROM 
    [Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE 
    Total_Refunds IS NOT NULL
GROUP BY 
    Customer_Status
ORDER BY 
    Avg_Total_Refunds DESC;


----- QUESTION
----Average of total long distance charges for each customer’s status

SELECT
	Customer_Status,
	ROUND(AVG(CAST(Total_Long_Distance_Charges AS FLOAT)),2) as Avg_Total_Long_Distance_Charges
FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE 
	Total_Long_Distance_Charges IS NOT NULL
GROUP BY 
	Customer_Status
ORDER BY 
	Avg_Total_Long_Distance_Charges DESC;



----QUESTION 
---Average of total revenue for each customer’s status

SELECT
	Customer_Status,
	ROUND(AVG(CAST(Total_Revenue AS FLOAT)),2) as Avg_Revenue
FROM 
	[Telecom_Customer_Churn_Analysis].dbo.[telecom_customer_churn]
WHERE 
	Total_Revenue IS NOT NULL
GROUP BY 
	Customer_Status
ORDER BY 
	Avg_Revenue DESC;
