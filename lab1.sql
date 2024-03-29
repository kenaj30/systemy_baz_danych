SELECT * FROM ZESPOLY ORDER BY ID_ZESP ASC;

SELECT * FROM PRACOWNICY ORDER BY ID_PRAC ASC;

SELECT NAZWISKO,PLACA_POD *12 as ROCZNA_PLACA FROM PRACOWNICY ORDER BY NAZWISKO ASC;

SELECT NAZWISKO, ETAT, PLACA_POD+COALESCE(PLACA_DOD,0) AS miesieczne_zarobki FROM PRACOWNICY ORDER BY miesieczne_zarobki DESC;

SELECT * FROM ZESPOLY ORDER BY NAZWA ASC;

SELECT DISTINCT ETAT FROM PRACOWNICY ORDER BY ETAT ASC;

SELECT * FROM PRACOWNICY WHERE ETAT='ASYSTENT' ORDER BY NAZWISKO ASC;

SELECT ID_PRAC,NAZWISKO,ETAT,PLACA_POD,ID_ZESP FROM PRACOWNICY WHERE ID_ZESP IN (30,40) ORDER BY PLACA_POD DESC;

SELECT NAZWISKO,ID_ZESP,PLACA_POD FROM PRACOWNICY WHERE PLACA_POD BETWEEN 300 AND 800 ORDER BY NAZWISKO ASC;

SELECT NAZWISKO,ETAT,ID_ZESP FROM PRACOWNICY WHERE NAZWISKO LIKE '%SKI' ORDER BY NAZWISKO ASC;

SELECT ID_PRAC, ID_SZEFA, NAZWISKO,PLACA_POD FROM PRACOWNICY WHERE PLACA_POD > 1000 AND ID_SZEFA IS NOT NULL;

SELECT NAZWISKO, ID_ZESP FROM PRACOWNICY WHERE NAZWISKO LIKE 'M%' OR NAZWISKO LIKE'%SKI' AND ID_ZESP = 20 ORDER BY NAZWISKO ASC;

SELECT NAZWISKO, ETAT, PLACA_POD / (8*20) AS STAWKA FROM PRACOWNICY WHERE ETAT NOT IN ('ADIUNKT','ASYSTENT','STAZYSTA') AND PLACA_POD NOT BETWEEN 400 AND 800 ORDER BY STAWKA ASC;

SELECT NAZWISKO, ETAT, PLACA_POD, PLACA_DOD FROM PRACOWNICY WHERE PLACA_POD + COALESCE(PLACA_DOD,0)>1000 ORDER BY ETAT,NAZWISKO ASC;

SELECT NAZWISKO || ' pracuje od '|| ZATRUDNIONY || ' i zarabia ' ||(PLACA_POD) FROM PRACOWNICY WHERE ETAT = 'PROFESOR';