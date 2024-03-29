1
SELECT P.NAZWISKO, P.ETAT, P.ID_ZESP, Z.NAZWA FROM PRACOWNICY P INNER JOIN ZESPOLY Z ON P.ID_ZESP=Z.ID_ZESP ORDER BY P.NAZWISKO ASC;
2
SELECT P.NAZWISKO, P.ETAT, P.ID_ZESP, Z.NAZWA FROM PRACOWNICY P INNER JOIN ZESPOLY Z ON P.ID_ZESP=Z.ID_ZESP AND Z.ADRES ='PIOTROWO 3A' ORDER BY P.NAZWISKO ASC;
3
SELECT P.NAZWISKO, P.ETAT, P.PLACA_POD, E.PLACA_MIN, E.PLACA_MAX FROM PRACOWNICY P INNER JOIN ETATY E ON P.ETAT = E.NAZWA ORDER BY E.NAZWA, P.NAZWISKO ASC;
4
SELECT P.NAZWISKO, P.ETAT, P.PLACA_POD, E.PLACA_MIN, E.PLACA_MAX, CASE WHEN E.PLACA_MIN <= P.PLACA_POD AND P.PLACA_POD <= E.PLACA_MAX THEN 'OK' ELSE 'NIE' END AS CZY_PENSJA_OK FROM PRACOWNICY P INNER JOIN ETATY E ON P.ETAT = E.NAZWA ORDER BY E.NAZWA, P.NAZWISKO ASC;
5
SELECT P.NAZWISKO, P.ETAT, P.PLACA_POD, E.PLACA_MIN, E.PLACA_MAX FROM PRACOWNICY P INNER JOIN ETATY E ON P.ETAT = E.NAZWA WHERE P.PLACA_POD > E.PLACA_MAX OR P.PLACA_POD <E.PLACA_MIN ORDER BY E.NAZWA, P.NAZWISKO ASC;
6
SELECT P.NAZWISKO, P.PLACA_POD, P.ETAT, E.NAZWA AS KAT_PLACOWA, E.PLACA_MIN, E.PLACA_MAX FROM PRACOWNICY P INNER JOIN ETATY E ON P.PLACA_POD BETWEEN E.PLACA_MIN AND E.PLACA_MAX ORDER BY P.NAZWISKO, KAT_PLACOWA ASC;
7
SELECT P.NAZWISKO, P.PLACA_POD, P.ETAT, E.NAZWA, E.PLACA_MIN, E.PLACA_MAX FROM PRACOWNICY P INNER JOIN ETATY E ON P.PLACA_POD BETWEEN E.PLACA_MIN AND E.PLACA_MAX AND E.NAZWA != P.ETAT WHERE E.NAZWA IN ('SEKRETARKA','ASYSTENT');
8
SELECT P.NAZWISKO AS PRACOWNIK, P.ID_PRAC, S.NAZWISKO, P.ID_SZEFA FROM PRACOWNICY P INNER JOIN PRACOWNICY S ON P.ID_SZEFA = S.ID_PRAC ORDER BY P.NAZWISKO ASC;
9
