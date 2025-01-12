 #Design a data frame in R for storing about 20 employee details. Create a CSV file named
 #“input.csv” that defines all the required information about the employee such as id, name,
 #salary, start_date, dept. Import into R and do the following analysis.
 #a) Find the total number rows & columns
 #b) Find the maximum salary
 #c) Retrieve the details of the employee with maximum salary
 #d) Retrieve all the employees working in the IT Department.
 #e) Retrieve the employees in the IT Department whose salary is greater than 20000 and write
 #these details into another file “output.csv”

# Import data from "input.csv"
 employee_data <- read.csv("input.csv")

 # a) Find the total number of rows and columns
 n_rows <- nrow(employee_data)
 n_cols <- ncol(employee_data)

 cat("Total number of rows:", n_rows, "\n")
 cat("Total number of columns:", n_cols, "\n")

 # b) Find the maximum salary
 max_salary <- max(employee_data$salary)
 cat("Maximum salary:", max_salary, "\n")

 # c) Retrieve the details of the employee with the maximum salary
 employee_with_max_salary <- employee_data[employee_data$salary == max_salary, ]
 cat("Details of employee with maximum salary:\n")
 print(employee_with_max_salary)

 # d) Retrieve all the employees working in the IT Department
 it_department_employees <- employee_data[employee_data$dept == "IT", ]
 cat("Employees working in the IT Department:\n")
 print(it_department_employees)

 # e) Retrieve the employees in the IT Department whose salary is greater than 20000
 it_department_high_salary <- it_department_employees[it_department_employees$salary > 20000,]
 
 # Write these details into another file "output.csv"
 write.csv(it_department_high_salary, "output.csv", row.names = FALSE)