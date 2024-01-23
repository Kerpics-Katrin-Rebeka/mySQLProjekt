# 2. feladat

SELECT dalok.ev, dalok.orszag, dalok.eredeti
FROM dalok
INNER JOIN versenyek
  ON dalok.orszag = versenyek.orszag
    AND dalok.ev = versenyek.id
ORDER BY dalok.ev;

# 3. feladat

SELECT dalok.sorrend
FROM dalok
WHERE dalok.helyezes = 1
GROUP BY dalok.sorrend
HAVING COUNT(dalok.id) >= 5

# 4. feladat

SELECT ev
FROM dalok
WHERE orszag IN ('Belgium', 'Hollandia', 'Luxemburg')
GROUP BY ev
HAVING COUNT(DISTINCT orszag) = 3;
