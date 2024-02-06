-- 2. feladat:
SELECT nev, urido
FROM urhajosok
WHERE nem = 'N'
ORDER BY urido DESC
LIMIT 1;

-- 3. feladat:
SELECT megnevezes, DATEDIFF(veg, kezdet) AS hossz
FROM kuldetesek
WHERE YEAR(kezdet) != YEAR(veg);

-- 4. feladat: 
--

-- 5. feladat:
SELECT orszag, COUNT(id) AS urhajosok_szama
FROM urhajosok
GROUP BY orszag
ORDER BY urhajosok_szama DESC;

-- 6. feladat:
SELECT COUNT(DISTINCT orszag) AS orszagszam
FROM urhajosok;

-- 7. feladat:
--

-- 8. feladat:
SELECT k.megnevezes, k.kezdet
FROM kuldetesek k
WHERE YEAR(k.kezdet) BETWEEN 1991 AND 2000
ORDER BY k.kezdet, k.megnevezes;