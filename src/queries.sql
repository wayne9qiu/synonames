SELECT a, b, COUNT(*) FROM tokens GROUP BY a, b ORDER BY COUNT(*) DESC;

SELECT ARRAY_AGG(DISTINCT a), an, ARRAY_AGG(DISTINCT b), bn, COUNT(*)
    FROM tokens WHERE an != bn GROUP BY an, bn ORDER BY COUNT(*) DESC LIMIT 999;


SELECT
    SUBSTR(a, 0, 20),
    SUBSTR(MAX(an), 0, 20),
    SUBSTR(b, 0, 20),
    SUBSTR(MAX(bn), 0, 20),
    COUNT(*) AS num
FROM tokens
GROUP BY a, b
HAVING COUNT(*) > 10
ORDER BY COUNT(*) DESC;


SELECT
    a as word,
    b as syno,
    COUNT(*) AS num
FROM tokens
GROUP BY a, b
HAVING COUNT(*) > 100
ORDER BY COUNT(*) DESC;


SELECT
    COUNT(*) AS num
FROM tokens
HAVING COUNT(*) > 50
ORDER BY COUNT(*) DESC;