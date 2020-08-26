
# CHALLENGE_1

SELECT au.au_id AS Author_ID, 
    au.au_lname AS Last_name, 
    au.au_fname AS First_name,
    t.title AS Title,
    pub.pub_name AS Publisher
	FROM titles AS t 
    INNER JOIN publishers AS pub
    ON  t.pub_id = pub.pub_id
    INNER JOIN titleauthor AS tta
    ON  t.title_id = tta.title_id
    INNER JOIN authors AS au
    ON tta.au_id = au.au_id
    ORDER BY au.au_id DESC;

# CHALLENGE_2

 SELECT au.au_id AS Author_ID, 
    au.au_lname AS Last_name, 
    au.au_fname AS First_name,
    pub.pub_name AS Publisher, 
    COUNT(t.title) AS Count_Title
	FROM titles AS t 
    INNER JOIN publishers AS pub
    ON  t.pub_id = pub.pub_id
    INNER JOIN titleauthor AS tta
    ON  t.title_id = tta.title_id
    INNER JOIN authors AS au
    ON tta.au_id = au.au_id
    GROUP BY au.au_id, au.au_lname, au.au_fname,pub.pub_name
    ORDER BY au.au_lname

# CHALLENGE_3

SELECT au.au_id AS Author_ID, 
    au.au_lname AS Last_name, 
    au.au_fname AS First_name, 
    SUM(t.ytd_sales) AS TOTAL
	FROM titles AS t 
	INNER JOIN sales
    ON  t.title_id = sales.title_id
    INNER JOIN titleauthor AS tta
    ON  t.title_id = tta.title_id
    INNER JOIN authors AS au
    ON tta.au_id = au.au_id
    GROUP BY au.au_id, au.au_lname, au.au_fname
    ORDER BY sum(t.ytd_sales) DESC
    LIMIT 3;

# CHALLENGE_4
SELECT au.au_id AS Author_ID, 
    au.au_lname AS Last_name, 
    au.au_fname AS First_name, 
    COALESCE(NULL, SUM(t.ytd_sales),0) AS TOTAL
	FROM titles AS t 
	LEFT JOIN sales
    ON  t.title_id = sales.title_id
    RIGHT JOIN titleauthor AS tta
    ON  t.title_id = tta.title_id
    RIGHT JOIN authors AS au
    ON tta.au_id = au.au_id
    GROUP BY au.au_id, au.au_lname, au.au_fname
    ORDER BY sum(t.ytd_sales) DESC

# BONUS

SELECT au.au_id AS Author_ID, 
    au.au_lname AS Last_name, 
    au.au_fname AS First_name,
    round(t.price*(t.royalty/100)*(tta.royaltyper/100),2)+round(t.advance*(tta.royaltyper/100),2) as Profit
	FROM titles AS t 
    INNER JOIN titleauthor AS tta
    ON  t.title_id = tta.title_id
    INNER JOIN authors AS au
    ON tta.au_id = au.au_id
    ORDER BY Profit DESC
    LIMIT 3;





