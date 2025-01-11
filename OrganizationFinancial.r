#Assess the Financial Statement of an Organization being supplied with 2 vectors of data:
 #Monthly Revenue and Monthly Expenses for the Financial Year. You can create your own
 #sample data vector for this experiment) Calculate the following financial metrics:
 #a. Profit for each month.
 #b. Profit after tax for each month (Tax Rate is 30%).
 #c. Profit margin for each month equals to profit after tax divided by revenue.
 #d. Good Months– where the profit after tax was greater than the mean for the year.
 #e. Bad Months– where the profit after tax was less than the mean for the year.
 #f. The best month– where the profit after tax was max for the year.
 #g. The worst month– where the profit after tax was min for the year
 
 # Vector of month names
 month_names <- c("January", "February", "March", "April", "May", "June", "July", "August",
 "September", "October", "November", "December")

 # Sample data vectors (in thousands of dollars)
 monthly_revenue <- c(150, 200, 180, 220, 250, 210, 190, 230, 240, 260, 180, 200)
 monthly_expenses <- c(100, 110, 90, 120, 130, 120, 110, 140, 150, 140, 100, 110)

 # Calculate profit for each month
 monthly_profit <- monthly_revenue- monthly_expenses

 # Calculate profit after tax (Tax Rate is 30%)
 tax_rate <- 0.30
 monthly_profit_after_tax <- monthly_profit * (1- tax_rate)

 # Calculate profit margin for each month (in percentage)
 profit_margin <- (monthly_profit_after_tax / monthly_revenue) * 100

 # Calculate the mean profit after tax for the year
 mean_profit_after_tax <- mean(monthly_profit_after_tax)

 # Identify good months and bad months
 good_months <- monthly_profit_after_tax > mean_profit_after_tax
 bad_months <- monthly_profit_after_tax < mean_profit_after_tax

 # Find the best and worst months
 best_month <- which.max(monthly_profit_after_tax)
 worst_month <- which.min(monthly_profit_after_tax)

 # Results in thousands of dollars
 monthly_profit_in_k <- monthly_profit / 1000
 monthly_profit_after_tax_in_k <- monthly_profit_after_tax / 1000

 # Create variables to hold the best and worst month messages
 best_month_message <- sprintf("\nThe best month is %s.", month_names[best_month])
 worst_month_message <- sprintf("\nThe worst month is %s.", month_names[worst_month])

 # Replace TRUE and FALSE with Yes and No for Good_Month and Bad_Month
 good_month_labels <- ifelse(good_months, "Yes", "No")
 bad_month_labels <- ifelse(bad_months, "Yes", "No")

 # Prepare the results as vectors
 results <- data.frame(
 Month = 1:12,
 Month_Name = month_names,
 Monthly_Revenue = monthly_revenue,
 Monthly_Expenses = monthly_expenses,
 Monthly_Profit = monthly_profit_in_k,
 Monthly_Profit_After_Tax = monthly_profit_after_tax_in_k,
 Profit_Margin = profit_margin,
Good_Month = good_month_labels,
 Bad_Month = bad_month_labels
 )

 # Print the results
 print(results)

 # Print the best and worst month messages to the screen
 cat(best_month_message, "\n")
 cat(worst_month_message, "\n")

 # Create a CSV file for the data
 write.csv(results, file = "financial_statement.csv", row.names = FALSE)
 cat("\nA CSV file by the name financial_statement.csv is created in your current folder\n\n")