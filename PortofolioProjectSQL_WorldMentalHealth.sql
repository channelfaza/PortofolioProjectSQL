--Menampilkan Data Awal
select * from wmh_table

--Menampilkan Distrubusi Data
SELECT years, COUNT(*) AS total_country
FROM wmh_table
GROUP BY years
ORDER BY years;

--Filter Data
SELECT *
FROM wmh_table
WHERE years = 2019;

--Pengurutan Data
SELECT country, years,  depressive_disorders
FROM wmh_table
where years='2019'
ORDER BY depressive_disorders DESC

--Korelasi Data
SELECT
  CORR(depressive_disorders, anxiety_disorders) AS correlation
FROM wmh_table;

--Analisis Frekuensi
SELECT country, COUNT(*) AS total_cases
FROM wmh_table
WHERE depressive_disorders > 1000000
GROUP BY country
ORDER BY total_cases DESC;

--Melihat sampe data acak
SELECT *
FROM wmh_table
ORDER BY RANDOM()
LIMIT 10;

--Grouping dan Aggregasi
SELECT years, SUM(depressive_disorders) AS total_depressive_cases
FROM wmh_table
GROUP BY years
ORDER BY years;

--Menghitung Jumlah negara Unik
SELECT COUNT(DISTINCT country) AS total_countries
FROM wmh_table;

-- Jumlah negara tiap tahun
SELECT years, COUNT(DISTINCT country) AS jumlah_negara
FROM wmh_table
GROUP BY years
ORDER BY years;

-- Menghitung total kasus depresi tiap tahun
SELECT years, SUM(depressive_disorders) AS total_kasus_depresi
FROM wmh_table
GROUP BY years
ORDER BY years;

--Melihat negara dengan kasus tertinggi
SELECT country, MAX(bipolar_disorders) AS kasus_bipolar_tertinggi
FROM wmh_table
WHERE years = 2019
GROUP BY country
ORDER BY kasus_bipolar_tertinggi DESC
LIMIT 1;

--Menampilkan perbandingan kasus mental health
SELECT years, SUM(depressive_disorders) AS total_depresi, SUM(anxiety_disorders) AS total_kecemasan
FROM wmh_table
GROUP BY years
ORDER BY years;

--Melihat distribusi kasus depresi diseluruh tahun
SELECT years, SUM(depressive_disorders) AS total_depressive_cases
FROM wmh_table
GROUP BY years
ORDER BY years;

--rata rata kasus depresi per negara
SELECT country, AVG(depressive_disorders) AS avg_depressive_cases
FROM wmh_table
GROUP BY country
ORDER BY avg_depressive_cases DESC
LIMIT 10;

--Melihat trend kasus depresi pada negara tertentu
SELECT years, depressive_disorders
FROM wmh_table
WHERE country = 'United States'
ORDER BY years;


