## 3. Űrhajózás 

A múlt század második felében az ember meghódította a világűrt is. A legtöbb ember ismeri Gagarin, Armstrong és Farkas Bertalan nevét. Természetesen rajtuk kívül is sokan jártak az űrben. Az adatbázis az adatgyűjtéskor már befejezett küldetések és az űrhajósok adatait tartalmazza.

**1. Készítsen adatbázist eurovizio néven!**

- A mellékelt sql állományt (`urhajo.sql`), futassa az adatbázis elkészítéséhez, feltöltéséhez.

#### Táblák:

**`urhajosok`** <small>(*id, nev, orszag, nem, szulev, urido*)</small>


- `id`: Az űrhajós azonosítója (szám), ez a kulcs
- `nev`: Az űrhajós neve (szöveg). Feltételezheti, hogy a nevek egyediek.
- `orszag`: Az űrhajós által képviselt ország az első kilövéskor (szöveg). Értéke hárombetűsazonosító.
- `nem`: Az űrhajós személy neme (szöveg). Értéke a férfiak esetén F, nőknél N.
- `szulev`: Az űrhajós születési éve (szám)
- `urido`: Az űrhajós által az űrben töltött összes idő (szöveg). Az első &karaktere minden esetben a T betű, utána 3 karakter a napokat, 2 az órákat, 2 a perceket jelöli. A számokat kettőspontválasztja el egymástól. 

**`repulesek`** <small>(*urhajosid, kuldetesid*)</small>

- `urhajosid`: Az űrhajós azonosítója (szám), ez a kulcs
- `kuldetesid`: A küldetés azonosítója (szám), ez a kulcs 

**`kuldetesek`** <small>(*id, megnevezes, kezdet, veg*)</small>

- `id`: A küldetés azonosítója (szám), ez a kulcs
- `megnevezes`: A küldetés hivatalos neve (szöveg)
- `kezdet`: A küldetés kezdetének dátuma (dátum)
- `veg`: A küldetés befejezésének dátuma (dátum). 
  
A következő feladatok megoldásánál a lekérdezéseket és a jelentést a zárójelben olvasható
néven mentse! Ügyeljen arra, hogy a lekérdezésben pontosan a kívánt mezők szerepeljenek,
felesleges mezőt ne jelenítsen meg!
<br>

2. Lekérdezés segítségével határozza meg, hogy a nők közül ki töltötte a legtöbb időt az űrben
és mennyit! Jelenítse meg az űrhajós nevét és az urido mező értékét! (***2legtobbido*)** 
<br>

3. Előfordult, hogy egy küldetés résztvevői az újévet az űrben köszöntötték. Készítsen
lekérdezést, amely megadja ezen küldetések megnevezését és azt, hogy milyen hosszúak
voltak, azaz hány napig tartottak! (***3szilveszter***) 

<br>

4. Készítsen lekérdezést, amelyik megadja, hogy a több űrrepülésen részt vevő űrhajósok hány
éves korukban kezdték az első és hány éves korukban az utolsó küldetésüket! Jelenítse meg
az űrhajós nevét, és a két életkort! (***4eletkor***) 
<br>

5. Lekérdezés segítségével határozza meg, hogy az egyes országoknak hány űrhajósa szerepel
az adatbázisban! Az országok azonosítóját és az adott ország űrhajósainak számát
az űrhajósok száma szerint csökkenő sorrendben jelenítse meg! (***5urhajosszam***) 
<br>

6. Határozza meg, hogy hány ország képviseletében repültek az űrhajósok! Ehhez egészítse ki
az alábbi lekérdezést, úgy, hogy válaszoljon az előbbi kérdésre! A teljes lekérdezést mentse!
(***6orszagszam***)
<br>

7. Készítsen lekérdezést, amelyben felsorolja azoknak a küldetéseknek a nevét, amelyben
legénység tagjai között férfi és nő is volt! (***7ferfino***) 
<br>

8. Készítsen jelentést arról, hogy a 20. század utolsó évtizedében (1991-2000) megkezdett
küldetéseken milyen legénység vett részt! A listában a küldetés neve és kezdete kiemelve,
azon belül a nevek ábécérendben jelenjenek meg! A jelentés készítését lekérdezéssel
készítse elő! A jelentés elkészítésekor a mintából a mezők sorrendjét, a cím és a címkék
megjelenítését vegye figyelembe! A jelentés formázásában a mintától eltérhet. (***8legenyseg***) 
