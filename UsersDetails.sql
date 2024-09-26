CREATE TABLE IF NOT EXISTS USERS(
   USERNAME TEXT,
   USER_ID INTEGER,
   SERIAL_NO INTEGER,
   COUNTRY TEXT,
   FOLLOWERS INTEGER
);

INSERT INTO USERS(USERNAME, USER_ID, SERIAL_NO, COUNTRY, FOLLOWERS)
VALUES("Among1209", 688, "SN550009", "China", 340000),
      ("Soz0988", 457, "SN22229", "Mauritius", 4560000),
      ("Bablu0094", 145, "SN13695", "India", 5569),
      ("john_doe", 101, "SN12345", "USA", 1500),
      ("jane_smith", 102, "SN12346", "Mauritius", 2000),
      ("mike_jones", 103, "SN12347", "USA", 1200),
      ("sarah_lee", 104, "SN12348", "Australia", 2500),
      ("tom_brown", 105, "SN12349", "India", 1800),
      ("linda_green", 106, "SN12350", "USA", 2200),
      ("paul_white", 107, "SN12351", "France", 1700),
      ("emma_black", 108, "SN12352", "USA", 2300),
      ("oliver_clark", 109, "SN12353", "Brazil", 1400),
      ("lucy_adams", 110, "SN12354", "India", 2600)

SELECT * FROM USERS;

SELECT * FROM USERS ORDER BY FOLLOWERS DESC;

SELECT COUNTRY, COUNT(*) AS "Number of People" FROM USERS GROUP BY COUNTRY;

SELECT COUNTRY, SUM(FOLLOWERS) AS "Total Number of Followers" FROM USERS GROUP BY COUNTRY;

SELECT COUNTRY, SUM(FOLLOWERS) AS "Total Number of Followers" FROM USERS WHERE COUNTRY = "India";

SELECT COUNTRY, COUNT(*) AS "Number of People" FROM USERS GROUP BY COUNTRY HAVING COUNT(*) > 2;