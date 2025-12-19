# DATA EXPLORATION : 
# How many sales we have ? 
SELECT count(total_sale)as total_sales FROM retail_sales_analysis

# How many unique customers we have ? 
SELECT count(distinct(customer_id))as total_customers FROM retail_sales_analysis

# How many categories we have ? 
SELECT count(distinct(category))as total_customers FROM retail_sales_analysis

#DATA ANALYSIS AND BUSSINESS PROBLEMS AND ANSWERS

# 1.retrive all the columns where sales mande on '2022-11-05' ? 
   SELECT * FROM retail_sales_analysis
   where sale_date='2022-11-05';

#2. Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022 :
   SELECT * FROM retail_sales_analysis
   WHERE category like 'Cloth%' and quantity >= 4 and sale_date like '2022-11%';

#3.Write a SQL query to calculate the total sales (total_sale) for each category :
   SELECT category,sum(total_sale) as total_sale FROM retail_sales_analysis
   group by category;

#4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
   SELECT round(avg(age),2) as average_age FROM retail_sales_analysis
   WHERE category='beauty';
   
#5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
   SELECT * FROM retail_sales_analysis
   WHERE total_sale>1000;

#6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
   SELECT gender,category,count(transactions_id) as Total_Transactions FROM retail_sales_analysis
   GROUP BY gender,category
   order by gender desc

#7 Write a SQL query to find the top 5 customers based on the highest total sales.
   SELECT * FROM retail_sales_analysis
   order by total_sale desc limit 5;

#8 Write a SQL query to find the number of unique customers who purchased items from each category.
   SELECT category,count(distinct(customer_id)) as no_of_customers_purshased FROM retail_sales_analysis
   GROUP BY category


#9 Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17):
  
  SELECT shift,count(*) FROM
  (SELECT *,
  CASE
      when hour(sale_time)<12 then 'Morning'
      when hour(sale_time) Between 12 and 17  then 'Afternoon'
      else 'Evening'
  END as shift
  FROM retail_sales_analysis) as shift_
  GROUP BY shift
  
  # END OF THE PROJECT

  








