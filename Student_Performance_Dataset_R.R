
install.packages("readxl")
install.packages("dplyr")
# --------------------------------------------------
# 2. LOAD DATASET
# --------------------------------------------------

library(readxl)
students <- read_excel(
  "C:/Users/Sujal/Desktop/Project/Excel/SMDA PRACTICALS/Practical 1/data/cleaned/Student_Performance_Data_Cleaned.xlsx"
)

print("Excel file imported successfully")

# --------------------------------------------------
# 2. VIEW DATASET
# --------------------------------------------------

View(students)


# --------------------------------------------------
# 3. DISPLAY FIRST FIVE ROWS
# --------------------------------------------------

head(students, 5)

# --------------------------------------------------
# 4. DISPLAY LAST FIVE ROWS
# --------------------------------------------------

tail(students, 5)

# --------------------------------------------------
# 5. DISPLAY DIMENSIONS
# --------------------------------------------------

dim(students)

# --------------------------------------------------
# 6. DISPLAY COLUMN NAMES
# --------------------------------------------------

names(students)

# --------------------------------------------------
# 7. DISPLAY STRUCTURE / DATA TYPES
# --------------------------------------------------

str(students)

# --------------------------------------------------
# 8. SUMMARY OF DATASET
# --------------------------------------------------

summary(students)

# --------------------------------------------------
# 9. FILTER
# --------------------------------------------------

students_below_75 <- students[
  students$`Attendance (%)` < 75,
]

print(students_below_75)

students_above_80 <- students[
  students$Final_Score > 80,
]

print(students_above_80)

cs_students <- students[
  students$Department == "Computer Science",
]

print(cs_students)

# --------------------------------------------------
# 10. ARRANGE
# --------------------------------------------------

students_sorted <- students[
  order(students$Final_Score),
]

print(students_sorted)

students_sorted_desc <- students[
  order(-students$Final_Score),
]

print(students_sorted_desc)

attendance_sorted <- students[
  order(-students$`Attendance (%)`),
]

print(attendance_sorted)