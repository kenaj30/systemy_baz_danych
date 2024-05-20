--1
CREATE TABLE PROJEKTY (ID_PROJEKTU NUMBER(4) GENERATED ALWAYS AS IDENTITY, OPIS_PROJEKTU VARCHAR2(20), DATA_ROZPOCZECIA DATE DEFAULT CURRENT_DATE, DATA_ZAKONCZENIA DATE, FUNDUSZE NUMBER(7,2));

--2
INSERT INTO PROJEKTY (OPIS_PROJEKTU, DATA_ROZPOCZECIA, DATA_ZAKONCZENIA, FUNDUSZE)
VALUES ('INDEKSY BITMAPOWE', TO_DATE('02-04-1999', 'DD-MM-YYYY'), TO_DATE('31-08-2001', 'DD-MM-YYYY'), 25000);

INSERT INTO PROJEKTY (OPIS_PROJEKTU, DATA_ZAKONCZENIA, FUNDUSZE)
VALUES ('SIECI KREGOSLUPOWE', NULL, 19000);

--3
SELECT ID_PROJEKTU, OPIS_PROJEKTU FROM PROJEKTY;

--4
INSERT INTO PROJEKTY (ID_PROJEKTU, OPIS_PROJEKTU, DATA_ROZPOCZECIA, DATA_ZAKONCZENIA, FUNDUSZE)
VALUES (10, 'INDEKSY DRZEWIASTE', TO_DATE('24-12-2013', 'DD-MM-YYYY'), TO_DATE('01-01-2014', 'DD-MM-YYYY'), 1200);
--ORA-32795: cannot insert into a generated always identity column
--Error at Line: 7 Column: 0

INSERT INTO PROJEKTY (OPIS_PROJEKTU, DATA_ROZPOCZECIA, DATA_ZAKONCZENIA, FUNDUSZE)
VALUES ('INDEKSY DRZEWIASTE', TO_DATE('24-12-2013', 'DD-MM-YYYY'), TO_DATE('01-01-2014', 'DD-MM-YYYY'), 1200);

--5
UPDATE PROJEKTY SET ID_PROJEKTU = 10 WHERE OPIS_PROJEKTU ='INDEKSY DRZEWIASTE';
--ORA-32796: cannot update a generated always identity column
--Error at Line: 7 Column: 0

--6
CREATE TABLE PROJEKTY_KOPIA AS (SELECT * FROM PROJEKTY);

--7
INSERT INTO PROJEKTY_KOPIA (ID_PROJEKTU, OPIS_PROJEKTU, DATA_ROZPOCZECIA,  DATA_ZAKONCZENIA, FUNDUSZE)
VALUES (10, 'SIECI_LOKALNE', CURRENT_DATE, CURRENT_DATE + INTERVAL '1' YEAR, 24500);

--8
DELETE FROM PROJEKTY WHERE OPIS_PROJEKTU = 'INDEKSY DRZEWIASTE';
--NIE

--9
SELECT TABLE_NAME FROM USER_TABLES;