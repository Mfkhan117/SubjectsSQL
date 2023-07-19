SELECT s_firstname,s_lastname FROM subject 
WHERE s_id IN(SELECT s_id FROM answers WHERE a_surveynum >= 1) 
ORDER BY s_lastname ASC;


SELECT s_firstname,s_lastname FROM subject 
wHERE s_id IN(SELECT s_id FROM answers WHERE a_surveynum = 3) 
ORDER BY s_age DESC;


SELECT a_id,a_q1,(6-a_q2) AS a_q2,a_q3,(6-a_q4) AS a_q4, a_q5, (6-a_q6) AS a_q6, a_q7, (6-a_q8) AS a_q8 
FROM answers;


SELECT a_id, ((a_q1 + a_q3 + a_q5 + a_q7)/4) AS construct1,
(6-(a_q2 + a_q4 + a_q6 + a_q8)/4) AS construct2 FROM answers;


SELECT s_id, AVG((a_q1 + a_q3 + a_q5 + a_q7)/4) AS construct1,
AVG(6-(a_q2 + a_q4 + a_q6 + a_q8)/4) AS construct2 FROM answers GROUP BY s_id ORDER by s_id ASC;
