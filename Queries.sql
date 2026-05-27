--Retrieve the club name and the designated club advisor's name and email
SELECT C.club_name, CA.F_name, CA.L_name, CA.Email
FROM Club C, clubAdvisor CA, advisorAssignment AA
WHERE C.club_id = AA.club_id AND CA.Advisor_id = AA.Advisor_id;


--Retrieve the names of students who applied for the position of president for each club
SELECT C.Club_name, S.F_name, S.L_name, EC.votes
FROM Student S JOIN electionCandidate EC ON S.student_id = EC.candidate_id
	JOIN club C ON C.club_id = EC.club_id
WHERE EC.position_title = 'President';

--Retrieve event information and the venue of the event if it exists
SELECT C.club_name, CE.event_name, CE.category, CE.date, CE.time, V.v_location
FROM Club C JOIN clubEvent CE ON C.club_id = CE.club_id
	LEFT JOIN Venue V ON CE.venue_id = V.venue_id;

-- Find the most active club name with events that were attended by 3+ students
SELECT C.club_name, count( CE.club_id)
FROM Club C JOIN clubEvent CE ON C.club_id = CE.club_id
WHERE CE.event_id IN (SELECT event_id
						FROM eventParticipation
						GROUP BY event_id
						HAVING COUNT(student_id)>=3 )
GROUP BY C.club_name
ORDER BY count(CE.club_id) DESC;


--Show the total transactions by each club compared with their allocated budget and savings if over 2000
SELECT C.club_name, SUM(BT.amount) AS "Total spend", CB.allocated_amount, 
		(CB.allocated_amount-SUM(BT.amount)) AS "Saved amount"
FROM Club C JOIN clubBudget CB ON C.club_id = CB. club_id 
			JOIN budgetTransactions BT ON CB.budget_id = BT.budget_id
GROUP BY C.club_name, CB.allocated_amount
HAVING (CB.allocated_amount-SUM(BT.amount))> 5000;


--Show the students with highest to lowest event participation
SELECT S.F_name, S.L_name, COUNT(EP.student_id) AS "Number of events"
FROM Student S JOIN eventParticipation EP ON S.student_id = EP.student_id

GROUP BY S.F_name, S.L_name
ORDER BY COUNT(EP.student_id) DESC;