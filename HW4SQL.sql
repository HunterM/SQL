USE hwsql4;


SELECT MARK, COLOR, COUNT(*) AS COUNT FROM auto WHERE MARK = 'BMW' OR MARK='Jaguar'  GROUP BY MARK, COLOR ORDER BY MARK;


SELECT MARK, COUNT(*) AS COUNT_CAR,
	CASE 
		WHEN MARK = 'BMW' THEN (SELECT COUNT(*) FROM auto) - (SELECT COUNT(*) FROM auto WHERE MARK = 'BMW')
        WHEN MARK = 'AUDI' THEN (SELECT COUNT(*) FROM auto) - (SELECT COUNT(*) FROM auto WHERE MARK = 'AUDI')
        WHEN MARK = 'Jaguar' THEN (SELECT COUNT(*) FROM auto) - (SELECT COUNT(*) FROM auto WHERE MARK = 'Jaguar')
        WHEN MARK = 'VOLVO' THEN (SELECT COUNT(*) FROM auto) - (SELECT COUNT(*) FROM auto WHERE MARK = 'VOLVO')
	END AS ANY_MARK  
FROM auto GROUP BY MARK ORDER BY MARK;


SELECT * FROM test_a WHERE id NOT IN (SELECT id FROM test_b);
SELECT id FROM test_a EXCEPT SELECT id FROM test_b;
SELECT * FROM test_a WHERE id IN (SELECT id FROM test_a EXCEPT SELECT id FROM test_b);