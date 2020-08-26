
# CHALLENGE_1

SELECT au.au_id AS Author_ID, 
    au.au_lname AS Lname, 
    au.au_fname AS Fname,
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
    au.au_lname AS Lname, 
    au.au_fname AS Fname,
    pub.pub_name AS Publisher, 
    COUNT(*) AS Count_title
	FROM titles AS t 
    INNER JOIN publishers AS pub
    ON  t.pub_id = pub.pub_id
    INNER JOIN titleauthor AS tta
    ON  t.title_id = tta.title_id
    INNER JOIN authors AS au
    ON tta.au_id = au.au_id
    GROUP BY t.title
    ORDER BY Publisher

# CHALLENGE_3

SELECT au.au_id AS Author_ID, au.au_lname AS Lname, au.au_fname AS Fname, COUNT(*) AS total, SUM(t.ytd_sales) AS qty
	FROM titles AS t 
	INNER JOIN sales
    ON  t.title_id = sales.title_id
    INNER JOIN titleauthor AS tta
    ON  t.title_id = tta.title_id
    INNER JOIN authors AS au
    ON tta.au_id = au.au_id
    GROUP BY t.title 
    ORDER BY qty DESC
    LIMIT 3;

    # CHALLENGE_4

