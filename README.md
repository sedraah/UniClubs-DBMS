# UniClubsDB: University Club Management Database System

A relational database system designed to manage and centralize all university club-related data, including memberships, events, elections, budgets, and advisor assignments.


---

## Table of Contents

- [Overview](#overview)
- [Rules & Constraints](#rules--constraints)
- [Database Design](#database-design)
- [Schema](#schema)
- [Queries](#queries)
- [Normalization](#normalization)
- [Tools Used](#tools-used)


---

## Overview

Many universities still rely on manual processes to manage student clubs. **UniClubsDB** aims to modernize this by providing a structured database that enables administrators to:

- Manage club information and student memberships
- Track club events and venue assignments
- Store and monitor election processes and candidates
- Oversee advisor assignments
- Track budgets and financial transactions

---

## Rules & Constraints

- A student can be a member of many clubs, and each club has many student members *(many-to-many)*
- A club can have multiple advisors over time, and an advisor can be assigned to multiple clubs *(many-to-many, optional)*
- Each club can organize many events
- Each club event can have many student participants, and a student can participate in many events *(many-to-many)*
- A venue can host many club events; each event takes place at a single venue *(optional)*
- A club can hold multiple elections over time; each election belongs to one club and has many candidates
- Each club has many budget allocations over time; each budget has many associated transactions
- Club names are **unique**
- Emails and phone numbers are **unique** for students, advisors, and clubs

---

## Database Design

The ER diagram was designed using **draw.io (diagrams.net)** and covers the following core entities:

| Entity | Description |
|---|---|
| `Club` | Stores club information (name, email, phone) |
| `Student` | Student details and contact information |
| `ClubMembership` | Tracks which students belong to which clubs and their roles |
| `ClubAdvisor` | Faculty/staff assigned to supervise clubs |
| `AdvisorAssignment` | Links advisors to clubs over time |
| `ClubEvent` | Events organized by clubs (name, category, date, time) |
| `Venue` | Physical locations that host events |
| `EventParticipation` | Tracks student attendance at events |
| `ClubElection` | Election processes per club |
| `ElectionCandidate` | Students running in elections and their vote counts |
| `ClubBudget` | Budget allocations per club per period |
| `BudgetTransactions` | Individual financial transactions against a budget |

---

## Schema

The relational schema was implemented in **PostgreSQL (pgAdmin)** and follows directly from the ERD. Key design decisions:

- Junction tables (`ClubMembership`, `AdvisorAssignment`, `EventParticipation`, `ElectionCandidate`) resolve all many-to-many relationships
- Foreign key constraints enforce referential integrity throughout
- Optional relationships (e.g. venue assignment) use `NULL`-able foreign keys
- Unique constraints are applied to club names, and to emails/phones for all person entities

---

## Queries

Six queries were written to demonstrate both simple and advanced SQL capabilities:

**1. Club Advisors**
Retrieves each club's name along with its designated advisor's name and email.
```sql
SELECT C.club_name, CA.F_name, CA.L_name, CA.Email
FROM Club C, clubAdvisor CA, advisorAssignment AA
WHERE C.club_id = AA.club_id AND CA.Advisor_id = AA.Advisor_id;
```

**2. Presidential Election Candidates**
Retrieves the names of students who applied for the position of president in each club, along with their vote counts.
```sql
SELECT C.Club_name, S.F_name, S.L_name, EC.votes
FROM Student S JOIN electionCandidate EC ON S.student_id = EC.candidate_id
    JOIN club C ON C.club_id = EC.club_id
WHERE EC.position_title = 'President';
```

**3. Event Information with Venue**
Retrieves event details and their venue location if one has been assigned (uses `LEFT JOIN` to include events without a venue).
```sql
SELECT C.club_name, CE.event_name, CE.category, CE.date, CE.time, V.v_location
FROM Club C JOIN clubEvent CE ON C.club_id = CE.club_id
    LEFT JOIN Venue V ON CE.venue_id = V.venue_id;
```

**4. Most Active Clubs**
Finds clubs ranked by number of events that had 3 or more student attendees.
```sql
SELECT C.club_name, count(CE.club_id)
FROM Club C JOIN clubEvent CE ON C.club_id = CE.club_id
WHERE CE.event_id IN (
    SELECT event_id FROM eventParticipation
    GROUP BY event_id HAVING COUNT(student_id) >= 3
)
GROUP BY C.club_name
ORDER BY count(CE.club_id) DESC;
```

**5. Budget vs. Spending**
Shows total spending per club compared to their allocated budget, filtered to only show clubs that saved more than 5,000.
```sql
SELECT C.club_name, SUM(BT.amount) AS "Total spend", CB.allocated_amount,
        (CB.allocated_amount - SUM(BT.amount)) AS "Saved amount"
FROM Club C JOIN clubBudget CB ON C.club_id = CB.club_id
            JOIN budgetTransactions BT ON CB.budget_id = BT.budget_id
GROUP BY C.club_name, CB.allocated_amount
HAVING (CB.allocated_amount - SUM(BT.amount)) > 5000;
```

**6. Student Event Participation Ranking**
Lists all students ranked from highest to lowest by the number of events they attended.
```sql
SELECT S.F_name, S.L_name, COUNT(EP.student_id) AS "Number of events"
FROM Student S JOIN eventParticipation EP ON S.student_id = EP.student_id
GROUP BY S.F_name, S.L_name
ORDER BY COUNT(EP.student_id) DESC;
```

---

## Normalization

The schema was verified to satisfy **Boyce-Codd Normal Form (BCNF)**, which implies compliance with 1NF, 2NF, and 3NF:

| Normal Form | Requirement | Status |
|---|---|---|
| **1NF** | All attributes are single-valued and unique | ✅ |
| **2NF** | No partial dependencies on a composite key | ✅ |
| **3NF** | No transitive dependencies | ✅ |
| **BCNF** | Every determinant is a candidate key | ✅ |

This ensures minimal redundancy, strong data integrity, and scalability for future enhancements.

---

## Tools Used

- **PostgreSQL / pgAdmin** for database implementation and query execution
- **draw.io (diagrams.net)** for ER diagram and schema design
- **Google Gemini** used for sample data population
