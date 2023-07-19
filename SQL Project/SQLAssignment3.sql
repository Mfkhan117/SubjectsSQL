SELECT s_id, AVG((a_q1 + a_q3 + a_q5 + a_q7)/4) AS construct1,
AVG(6-(a_q2 + a_q4 + a_q6 + a_q8)/4) AS construct2 FROM answers
GROUP BY s_id having count(DISTINCT a_surveynum) = 3 ORDER by s_id ASC;


SELECT s_id, AVG((a_q1 + a_q3 + a_q5 + a_q7)/4) AS construct1,
AVG(6-(a_q2 + a_q4 + a_q6 + a_q8)/4) AS construct2 FROM answers 
WHERE s_id IN(SELECT s_id FROM subject WHERE s_age <= 30)
GROUP BY s_id ORDER by s_id ASC;


SELECT s_id, AVG((a_q1 + a_q3 + a_q5 + a_q7)/4) AS construct1,
AVG(6-(a_q2 + a_q4 + a_q6 + a_q8)/4) AS construct2 FROM answers 
where a_surveydate BETWEEN '2020-01-01' AND '2020-01-15' OR a_surveydate BETWEEN '2020-02-01' AND '2020-02-15'
GROUP BY s_id ORDER by s_id ASC;
