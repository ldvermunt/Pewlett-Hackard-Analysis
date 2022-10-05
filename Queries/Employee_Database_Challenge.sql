--Create retirement_titles.csv (Deliverable 1)
SELECT emp.emp_no, emp.first_name,emp.last_name,
	   ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees as emp
LEFT JOIN titles as ti
ON (emp.emp_no = ti.emp_no)
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
ORDER BY emp.emp_no;

-- Unique_titles (Deliverable 1)
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;

--Retiring_tites (Deliverable 1)
SELECT COUNT (ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY (count) DESC;

--Mentorship_eligibility (Deliverable 2)
SELECT DISTINCT ON (emp.emp_no) emp.emp_no, emp.first_name, emp.last_name, emp.birth_date,
	   de.from_date, de.to_date, t.title
INTO mentorship_eligibility
FROM employees as emp
	INNER JOIN dept_emp as de
		ON (emp.emp_no = de.emp_no)
	INNER JOIN titles as t
		ON (emp.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01') AND (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31');