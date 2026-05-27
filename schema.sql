BEGIN;

CREATE TABLE IF NOT EXISTS public.club
(
    club_ID character(10),
    club_name character varying(100) NOT NULL,
    founding_date date NOT NULL,
    status character varying(20) DEFAULT 'Active',
    designated_room character varying(20),
    contact_email character varying(50) NOT NULL,
    PRIMARY KEY (club_ID),
    UNIQUE (club_name),
    UNIQUE (contact_email)
);

CREATE TABLE IF NOT EXISTS public.student
(
    student_ID character(10),
    F_name character varying(50) NOT NULL,
    L_name character varying(50) NOT NULL,
    date_of_birth date,
    phone_number character(8) NOT NULL,
    email character varying(50) NOT NULL,
    programme character varying(50),
    PRIMARY KEY (student_ID),
    UNIQUE (email),
    UNIQUE (phone_number)
);

CREATE TABLE IF NOT EXISTS public.clubMembership
(
    student_ID character(10),
    club_ID character(10),
    role_title character varying(30) DEFAULT 'normal member',
    membership_status character varying(20) DEFAULT 'Active',
    join_date date NOT NULL,
    leave_date date,
    PRIMARY KEY (student_ID, club_ID)
);

CREATE TABLE IF NOT EXISTS public.venue
(
    venue_ID character(10),
    v_location character varying(50) NOT NULL,
    capacity integer,
    PRIMARY KEY (venue_ID)
);

CREATE TABLE IF NOT EXISTS public.clubEvent
(
    event_ID character(10),
    event_name character varying(50) NOT NULL,
    description text,
    category character varying(20),
    date date NOT NULL,
    time time without time zone ,
    status character varying(20),
    club_ID character(10) NOT NULL,
    venue_ID character(10),
    PRIMARY KEY (event_ID)
);

CREATE TABLE IF NOT EXISTS public.eventParticipation
(
    student_ID character(10),
    event_ID character(10),
    participant_role character varying(20) DEFAULT 'Attendee',
    PRIMARY KEY (student_ID, event_ID)
);

CREATE TABLE IF NOT EXISTS public.clubAdvisor
(
    advisor_ID character(10),
    F_name character varying(50),
    L_name character varying(50),
    Email character varying(50),
    phone_number character(8),
    PRIMARY KEY (advisor_ID),
    UNIQUE (Email),
    UNIQUE (phone_number)
);

CREATE TABLE IF NOT EXISTS public.advisorAssignment
(
    advisor_ID character(10),
    club_ID character(10),
    assignment_date date,
    end_date date,
    PRIMARY KEY (advisor_ID, club_ID, assignment_date)
);

CREATE TABLE IF NOT EXISTS public.clubElection
(
    election_ID character(10),
    club_ID character(10) NOT NULL,
    date date NOT NULL,
    PRIMARY KEY (election_ID)
);

CREATE TABLE IF NOT EXISTS public.electionCandidate
(
    election_ID character(10),
    candidate_ID character(10),
	club_ID character(10),
    position_title character varying(50) NOT NULL,
    votes integer NOT NULL,
    PRIMARY KEY (election_ID, candidate_ID, club_ID)
);


CREATE TABLE IF NOT EXISTS public.clubBudget
(
    budget_ID character(10),
    club_ID character(10) NOT NULL,
    academic_year character(9) NOT NULL,
    allocated_amount real NOT NULL,
    PRIMARY KEY (budget_ID)
);

CREATE TABLE IF NOT EXISTS public.budgetTransactions
(
    transaction_ID character(10),
    budget_ID character(10) NOT NULL,
    transaction_date date NOT NULL,
    description character varying,
    amount real NOT NULL,
    PRIMARY KEY (transaction_ID, budget_ID)
);

ALTER TABLE IF EXISTS public.clubMembership
    ADD FOREIGN KEY (student_ID)
    REFERENCES public.student (student_ID) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;

ALTER TABLE IF EXISTS public.clubMembership
    ADD FOREIGN KEY (club_ID)
    REFERENCES public.club (club_ID) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;

ALTER TABLE IF EXISTS public.clubEvent
    ADD FOREIGN KEY (club_ID)
    REFERENCES public.club (club_ID) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL
    NOT VALID;

ALTER TABLE IF EXISTS public.clubEvent
    ADD FOREIGN KEY (venue_ID)
    REFERENCES public.venue (venue_ID) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL
    NOT VALID;

ALTER TABLE IF EXISTS public.eventParticipation
    ADD FOREIGN KEY (student_ID)
    REFERENCES public.student (student_ID) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;

ALTER TABLE IF EXISTS public.eventParticipation
    ADD FOREIGN KEY (event_ID)
    REFERENCES public.clubEvent (event_ID) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;

ALTER TABLE IF EXISTS public.advisorAssignment
    ADD FOREIGN KEY (advisor_ID)
    REFERENCES public.clubAdvisor (advisor_ID) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;

ALTER TABLE IF EXISTS public.advisorAssignment
    ADD FOREIGN KEY (club_ID)
    REFERENCES public.club (club_ID) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;

ALTER TABLE IF EXISTS public.clubElection
    ADD FOREIGN KEY (club_ID)
    REFERENCES public.club (club_ID) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;

ALTER TABLE IF EXISTS public.electionCandidate
    ADD FOREIGN KEY (election_ID)
    REFERENCES public.clubElection (election_ID) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;
	
ALTER TABLE IF EXISTS public.electionCandidate
    ADD FOREIGN KEY (candidate_ID, club_ID)
    REFERENCES public.clubMembership (student_ID, club_ID) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;

ALTER TABLE IF EXISTS public.clubBudget
    ADD FOREIGN KEY (club_ID)
    REFERENCES public.club (club_ID) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;

ALTER TABLE IF EXISTS public.budgetTransactions
    ADD FOREIGN KEY (budget_ID)
    REFERENCES public.clubBudget (budget_ID) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;

END;
