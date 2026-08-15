
install.packages("readxl")
install.packages("dplyr")

# --------------------------------------------------
# 2. LOAD DATASET
# --------------------------------------------------

library(readxl)
sales <- read_excel(
  "C:/Users/Sujal/Desktop/Project/Excel/SMDA PRACTICALS/Practical 1/data/cleaned/Supermarket_Sales_Data_Cleaned.xlsx"
)

print("Excel file imported successfully")

# --------------------------------------------------
# 2. VIEW DATASET
# --------------------------------------------------

View(sales)

# --------------------------------------------------
# 3. DISPLAY FIRST FIVE ROWS
# --------------------------------------------------

head(sales, 5)

# --------------------------------------------------
# 4. DISPLAY DIMENSIONS
# --------------------------------------------------

dim(sales)

# --------------------------------------------------
# 5. DISPLAY STRUCTURE / DATA TYPES
# --------------------------------------------------

str(sales)

# --------------------------------------------------
# 6. SUMMARY OF DATASET
# --------------------------------------------------

summary(sales)

# --------------------------------------------------
# 7. FILTER
# --------------------------------------------------

city_filter <- sales[sales$City == "Mumbai",]

print("Records for Mumbai City:")
print(city_filter)

# --------------------------------------------------
# 8. SORT
# --------------------------------------------------

sales_sort <- sales[order(-sales$Total_Sales), ]

print("Sales Sorted from Highest to Lowest:")
print(sales_sort)

# --------------------------------------------------
# 9. Select Columns
# --------------------------------------------------

selected_columns <- sales[, c("Invoice_ID","City","Product_Line","Total_Sales")]

print("Selected Columns:")
print(selected_columns)