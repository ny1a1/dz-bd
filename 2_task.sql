SELECT g.name, m.name, m.address
FROM goods g
JOIN manufacturers m ON g.manufacturer_code = m.code;

SELECT e1.first_name AS employee1_first_name, e1.last_name AS employee1_last_name,
       e2.first_name AS employee2_first_name, e2.last_name AS employee2_last_name
FROM workers e1
JOIN workers e2 ON e1.chief = e2.chief
WHERE e1.first_name <> e2.first_name OR e1.last_name <> e2.last_name;

SELECT e1.first_name AS husband_first_name, e1.last_name AS husband_last_name,
       e2.first_name AS wife_first_name, e2.last_name AS wife_last_name
FROM workers e1
JOIN marriage m ON e1.passport_no = m.husband_passport_no
JOIN workers e2 ON e2.passport_no = m.wife_passport_no;

SELECT p.name AS product_name, w.name AS warehouse_name, pw.address
FROM warehouses pw
JOIN goods p ON pw.code = p.manufacturer_code
JOIN warehouses w ON pw.code = w.code;

SELECT w.name, e.first_name || ' ' || e.last_name AS manager_name
FROM warehouses w
JOIN workers e ON w.chief_passport_no = e.passport_no;

SELECT p.name, w.code, h.amount
FROM holds h
JOIN goods p ON h.goods_code = p.code
JOIN warehouses w ON h.warehouse_code = w.code
WHERE h.amount >= 15;

SELECT p.name AS product_name, w.name AS warehouse_name, pw.address
FROM warehouses pw
JOIN goods p ON pw.code = p.manufacturer_code
JOIN warehouses w ON pw.code = w.code;

SELECT p.name AS product_name, w.name AS warehouse_name, h.amount
FROM holds h
JOIN goods p ON h.goods_code = p.code
JOIN warehouses w ON h.warehouse_code = w.code
WHERE w.code = 'Supermarket';

SELECT p.*
FROM holds pw
JOIN goods p ON pw.goods_code = p.code
JOIN warehouses w ON pw.goods_code = w.code
WHERE w.code <> 'Supermarket';

SELECT e.*
FROM workers e
LEFT JOIN marriage m
    ON e.passport_no = m.husband_passport_no OR e.passport_no = m.wife_passport_no
WHERE m.wife_passport_no OR m.husband_passport_no IS NULL;

SELECT e.*
FROM workers e
LEFT JOIN warehouses w ON e.passport_no = w.chief_passport_no
WHERE w.chief_passport_no IS NULL;