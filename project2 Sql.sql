Create database project2;

use project2;

select * from cleaned_std_perf;

-- Count students in different grade ranges (A, B, C...)

SELECT 
  grade,
  COUNT(*) AS student_count
FROM cleaned_std_perf
GROUP BY grade
ORDER BY grade;

-- Group by categorical variables to see average grades

SELECT 
  gender,
  lunch,
  ROUND(AVG(average_score), 2) AS avg_grade
FROM cleaned_std_perf
GROUP BY gender, lunch
ORDER BY avg_grade DESC;

-- Find top 10 students with the best combined performance (G1 + G2 + G3)

SELECT 
  gender,
  race_ethnicity,
  math_score,
  reading_score,
  writing_score,
  average_score
FROM cleaned_std_perf
ORDER BY average_score DESC
LIMIT 10;


