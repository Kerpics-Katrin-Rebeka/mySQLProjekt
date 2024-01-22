## 3. Eurovíziós Dalfesztivál

<p style="text-indent: 20px;">Az Eurovíziós Dalfesztivált 1956 óta minden évben megrendezik. Az első, lényegében kísérleti évet követően minden jelentkező ország pontosan egy dalt nevezhetett a versenyre. A jelentkezők számának növekedése miatt az utóbbi években két elődöntőt követően alakul ki a döntő mezőnye.</p>

#### 1. Készítsen adatbázist eurovizio néven!

- A mellékelt három – tabulátorokkal tagolt, UTF-8 kódolású – szöveges állományt (`dal.txt`, `verseny.txt`, `nyelv.txt`) importálja az adatbázisba a fájlnévvel azonos néven (`dal`, `verseny`, `nyelv`)! Az állomány első sora a mezőneveket tartalmazza.
- A létrehozás során állítsa be a megfelelő típusokat, alakítsa ki a kulcsokat és vegye fel a hiányzó mezőket!

#### Táblák:

**`dalok`** <small>(*id, ev, sorrend, orszag, nyelv, eloado, eredeti, magyar, helyezes, pontszam*)</small>


- `id`: A dal azonosítója (számláló), kulcs
- `ev`: A verseny éve (szám)
- `sorrend`: Megadja, hogy a dal az adott év döntőjében hányadikként hangzott el (szám)
- `orszag`: A dalt benevező ország neve (szöveg)
- `nyelv`: A dal nyelve (szöveg), ha többnyelvű, akkor a nyelvek vesszővel és szóközzel elválasztva szerepelnek
- `eloado`: Az előadó személy(ek) vagy együttes neve (szöveg), az előadót azonosítja
- `eredeti`: A dal hivatalos címe (szöveg)
- `magyar`: A dal magyar címe, ha létezik (szöveg)
- `helyezes`: A dal döntőbeli helyezése (szám) (1969-ben 4 dalt holtversenyben 1. helyezettnek hirdettek ki)
- `pontszam`: A dal által elért döntőbeli pontszám (szám)

**`verseny`** <small>(*ev, datum, varos, orszag, induloszam*)</small>

- `ev`: A verseny rendezésének éve (szám), kulcs
- `datum`: A verseny döntőjének dátuma (dátum)
- `varos`: A versenyt rendező város (szöveg)
- `orszag`: A versenyt rendező ország (szöveg)
- `induloszam`: A versenybe benevezett dalok száma (szám)

**`nyelv`** <small>(*id, orszag, nyelv*)</small>

- `id`: A nyelv azonosítója (számláló), kulcs
- `orszag`: Az ország neve, ahol az adott nyelv hivatalos nyelv (szöveg). Néhány országnak több hivatalos nyelve is van.
- `nyelv`: A nyelv megnevezése (szöveg)
  
<p style="text-indent: 20px;">A következő feladatok megoldásánál a lekérdezéseket és jelentést a zárójelben olvasható
néven mentse! Ügyeljen arra, hogy a megoldásban pontosan a kívánt mezők szerepeljenek! </p>