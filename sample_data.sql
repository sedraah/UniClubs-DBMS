INSERT INTO public.club (club_ID, club_name, founding_date, status, designated_room, contact_email) VALUES
('CLUB000001', 'Robotics Club', '2018-03-15', 'Active', 'Robotics Lab', 'robotics.club@university.edu'),
('CLUB000002', 'Chess Club', '2010-09-01', 'Active', 'Game Room 1', 'chess.club@university.edu'),
('CLUB000003', 'Madar', '2024-09-22', 'Active', 'Room 205', 'madar.adv@university.edu'),
('CLUB000004', 'Debate Society', '2012-11-10', 'Active', 'Meeting Hall B', 'debate.society@university.edu'),
('CLUB000005', 'Photography Club', '2019-01-05', 'Active', 'Art Studio', 'photo.club@university.edu'),
('CLUB000006', 'CTRL', '2024-10-20', 'Active', 'Computer Lab 2', 'ctrl@university.edu'),
('CLUB000007', 'Cultural Exchange', '2014-02-14', 'Active', 'International Lounge', 'culture.exchange@university.edu'),
('CLUB000008', 'Gaming Guild', '2020-06-01', 'Active', 'Game Room 2', 'gaming.guild@university.edu'),
('CLUB000009', 'Film Appreciation', '2016-10-25', 'Active', 'Cinema Room', 'film.appreciation@university.edu'),
('CLUB000010', 'CBI', '2024-12-01', 'Active', 'Innovation Center', 'entrepreneur.hub@university.edu'),
('CLUB000011', 'Data Science Guild', '2022-01-20', 'Active', 'Data Lab 1', 'datascience.guild@university.edu'),
('CLUB000012', 'Biomedical Innovators', '2021-05-01', 'Active', 'BioMed Lab', 'biomed.innovators@university.edu'),
('CLUB000013', 'Literary Society', '2013-08-10', 'Active', 'Library Annex', 'lit.society@university.edu'),
('CLUB000014', 'Music Ensemble', '2017-03-25', 'Active', 'Music Room', 'music.ensemble@university.edu'),
('CLUB000015', 'Astronomy Club', '2019-07-07', 'Active', 'Observatory', 'astro.club@university.edu'),
('CLUB000016', 'Cyber Security Forum', '2022-09-01', 'Active', 'Security Hub', 'cybersec.forum@university.edu'),
('CLUB000017', 'Environmental Tech', '2023-01-15', 'Active', 'Eco Lab', 'environ.tech@university.edu'),
('CLUB000018', 'Digital Marketing Pros', '2021-11-11', 'Active', 'Marketing Suite', 'digital.marketing@university.edu'),
('CLUB000019', 'SoftEng Creators', '2022-04-01', 'Active', 'Software Studio', 'softeng.creators@university.edu'),
('CLUB000020', 'Energy Solutions', '2023-02-20', 'Active', 'Energy Center', 'energy.solutions@university.edu');

INSERT INTO public.venue (venue_ID, v_location, capacity) VALUES
('VENU000001', 'Auditorium A', 300),
('VENU000002', 'Conference Room 101', 50),
('VENU000003', 'Sports Hall', 500),
('VENU000004', 'Lecture Theatre 3', 150),
('VENU000005', 'Art Studio', 30),
('VENU000006', 'Computer Lab 2', 40),
('VENU000007', 'Outdoor Amphitheater', 200),
('VENU000008', 'Robotics Workshop', 25),
('VENU000009', 'Greenhouse', 20),
('VENU000010', 'Student Union Hall', 100);

INSERT INTO public.clubAdvisor (advisor_ID, F_name, L_name, Email, phone_number) VALUES
('ADVR000001', 'Dr. Aisha', 'Al-Mulla', 'aisha.mulla@university.edu', '66112233'),
('ADVR000002', 'Prof. Basem', 'Hamad', 'basem.hamad@university.edu', '66223344'),
('ADVR000003', 'Ms. Clara', 'Jackson', 'clara.jackson@university.edu', '66334455'),
('ADVR000004', 'Mr. David', 'Smith', 'david.smith@university.edu', '66445566'),
('ADVR000005', 'Dr. Eman', 'Fahad', 'eman.fahad@university.edu', '66556677'),
('ADVR000006', 'Prof. Faisal', 'Kamal', 'faisal.kamal@university.edu', '66667788'),
('ADVR000007', 'Ms. Ghada', 'Nasser', 'ghada.nasser@university.edu', '66778899'),
('ADVR000008', 'Mr. Hani', 'Zaid', 'hani.zaid@university.edu', '66889900'),
('ADVR000009', 'Dr. John', 'Doe', 'john.doe@university.edu', '60001111'),
('ADVR000010', 'Prof. Jane', 'Smith', 'jane.smith@university.edu', '60002222'),
('ADVR000011', 'Ms. Emily', 'White', 'emily.white@university.edu', '60003333'),
('ADVR000012', 'Mr. Robert', 'Brown', 'robert.brown@university.edu', '60004444'),
('ADVR000013', 'Dr. Susan', 'Green', 'susan.green@university.edu', '60005555'),
('ADVR000014', 'Prof. Michael', 'Black', 'michael.black@university.edu', '60006666'),
('ADVR000015', 'Ms. Olivia', 'King', 'olivia.king@university.edu', '60007777'),
('ADVR000016', 'Mr. William', 'Lee', 'william.lee@university.edu', '60008888'),
('ADVR000017', 'Dr. Sophia', 'Chen', 'sophia.chen@university.edu', '60009999'),
('ADVR000018', 'Prof. Daniel', 'Wong', 'daniel.wong@university.edu', '60010000'),
('ADVR000019', 'Ms. Mia', 'Taylor', 'mia.taylor@university.edu', '60011111'),
('ADVR000020', 'Mr. Ethan', 'Moore', 'ethan.moore@university.edu', '60012222');


INSERT INTO public.student (student_ID, F_name, L_name, date_of_birth, phone_number, email, programme) VALUES
('STUD000001', 'Ahmed', 'Ali', '2002-05-10', '99887766', 'ahmed.ali@example.com', 'Computer Systems Engineering'),
('STUD000002', 'Fatima', 'Yusuf', '2001-11-20', '99776655', 'fatima.yusuf@example.com', 'Software Engineering'),
('STUD000003', 'Omar', 'Khan', '2003-03-15', '99665544', 'omar.khan@example.com', 'Cyber Security Engineering'),
('STUD000004', 'Sara', 'Al-Mansoori', '2002-08-01', '99554433', 'sara.mansoori@example.com', 'Data Science and Artificial Intelligence'),
('STUD000005', 'Khalid', 'Abdullah', '2001-01-25', '99443322', 'khalid.abdullah@example.com', 'Digital Marketing'),
('STUD000006', 'Noor', 'Hassan', '2003-09-05', '99332211', 'noor.hassan@example.com', 'Entrepreneurship and Innovation'),
('STUD000007', 'Yousef', 'Mohamed', '2002-04-18', '99221100', 'yousef.mohamed@example.com', 'Robotics and Mechatronics Engineering'),
('STUD000008', 'Laila', 'Said', '2001-07-30', '99110099', 'laila.said@example.com', 'Energy Systems Engineering'),
('STUD000009', 'Mazen', 'Fahad', '2003-02-08', '99009988', 'mazen.fahad@example.com', 'Biomedical and Instruments Engineering'),
('STUD000010', 'Hana', 'Salem', '2002-12-12', '98998877', 'hana.salem@example.com', 'Environmental Engineering and Sustainability'),
('STUD000011', 'Ali', 'Jaber', '2002-06-03', '98887766', 'ali.jaber@example.com', 'Computer Systems Engineering'),
('STUD000012', 'Amira', 'Kamal', '2001-03-22', '98776655', 'amira.kamal@example.com', 'Software Engineering'),
('STUD000013', 'Zain', 'Rashid', '2003-10-01', '98665544', 'zain.rashid@example.com', 'Cyber Security Engineering'),
('STUD000014', 'Salma', 'Ibrahim', '2002-01-19', '98554433', 'salma.ibrahim@example.com', 'Data Science and Artificial Intelligence'),
('STUD000015', 'Bader', 'Abdulaziz', '2001-08-11', '98443322', 'bader.abd@example.com', 'Digital Marketing'),
('STUD000016', 'Reem', 'Nasser', '2003-04-29', '98332211', 'reem.nasser@example.com', 'Entrepreneurship and Innovation'),
('STUD000017', 'Jassem', 'Hameed', '2002-07-07', '98221100', 'jassem.hameed@example.com', 'Robotics and Mechatronics Engineering'),
('STUD000018', 'Dana', 'Jawad', '2001-05-14', '98110099', 'dana.jawad@example.com', 'Energy Systems Engineering'),
('STUD000019', 'Faisal', 'Mansour', '2003-11-28', '98009988', 'faisal.mansour@example.com', 'Biomedical and Instruments Engineering'),
('STUD000020', 'Maryam', 'Sultan', '2002-02-02', '97998877', 'maryam.sultan@example.com', 'Environmental Engineering and Sustainability'),
('STUD000021', 'Nasser', 'Qasim', '2002-09-17', '97887766', 'nasser.qasim@example.com', 'Computer Systems Engineering'),
('STUD000022', 'Asma', 'Saad', '2001-06-25', '97776655', 'asma.saad@example.com', 'Software Engineering'),
('STUD000023', 'Hamad', 'Salem', '2003-07-04', '97665544', 'hamad.salem@example.com', 'Cyber Security Engineering'),
('STUD000024', 'Mona', 'Rashid', '2002-03-09', '97554433', 'mona.rashid@example.com', 'Data Science and Artificial Intelligence'),
('STUD000025', 'Talal', 'Khaled', '2001-10-10', '97443322', 'talal.khaled@example.com', 'Digital Marketing');

-- 4. clubAdvisor (8 rows)
INSERT INTO public.clubAdvisor (advisor_ID, F_name, L_name, Email, phone_number) VALUES
('ADVR000001', 'Dr. Aisha', 'Al-Mulla', 'aisha.mulla@university.edu', '66112233'),
('ADVR000002', 'Prof. Basem', 'Hamad', 'basem.hamad@university.edu', '66223344'),
('ADVR000003', 'Ms. Clara', 'Jackson', 'clara.jackson@university.edu', '66334455'),
('ADVR000004', 'Mr. David', 'Smith', 'david.smith@university.edu', '66445566'),
('ADVR000005', 'Dr. Eman', 'Fahad', 'eman.fahad@university.edu', '66556677'),
('ADVR000006', 'Prof. Faisal', 'Kamal', 'faisal.kamal@university.edu', '66667788'),
('ADVR000007', 'Ms. Ghada', 'Nasser', 'ghada.nasser@university.edu', '66778899'),
('ADVR000008', 'Mr. Hani', 'Zaid', 'hani.zaid@university.edu', '66889900');


INSERT INTO public.clubEvent (event_ID, event_name, description, category, date, time, status, club_ID, venue_ID) VALUES
('EVNT000001', 'Robotics Workshop', 'Intro to Arduino programming for beginners.', 'Academic', '2025-09-10', '10:00:00', 'Scheduled', 'CLUB000001', 'VENU000008'),
('EVNT000002', 'Chess Tournament', 'Annual inter-club chess championship.', 'Social', '2025-10-05', '14:00:00', 'Scheduled', 'CLUB000002', 'VENU000002'),
('EVNT000003', 'Beach Cleanup', 'Volunteering event to clean up local beach.', 'Charity', '2025-09-20', '09:00:00', 'Scheduled', 'CLUB000003', NULL),
('EVNT000004', 'Debate Showcase', 'Public debate on current affairs.', 'Academic', '2025-11-15', '18:30:00', 'Scheduled', 'CLUB000004', 'VENU000004'),
('EVNT000005', 'Photography Exhibition', 'Display of club members'' best work.', 'Cultural', '2025-12-01', '16:00:00', 'Scheduled', 'CLUB000005', 'VENU000005'),
('EVNT000006', 'Hackathon 2025', '24-hour coding competition.', 'Academic', '2025-10-25', '09:00:00', 'Scheduled', 'CLUB000006', 'VENU000006'),
('EVNT000007', 'International Food Festival', 'Celebrate diverse cultures with food.', 'Cultural', '2025-11-01', '17:00:00', 'Scheduled', 'CLUB000007', 'VENU000010'),
('EVNT000008', 'Gaming Marathon', 'All-night gaming session with various consoles.', 'Social', '2025-09-28', '20:00:00', 'Scheduled', 'CLUB000008', 'VENU000002'),
('EVNT000009', 'Film Screening: Classic Sci-Fi', 'Showing of a timeless science fiction movie.', 'Cultural', '2025-10-12', '19:00:00', 'Scheduled', 'CLUB000009', 'VENU000004'),
('EVNT000010', 'Startup Pitch Competition', 'Students present innovative business ideas.', 'Academic', '2025-12-10', '15:00:00', 'Scheduled', 'CLUB000010', 'VENU000001'),
('EVNT000011', 'AI & Machine Learning Seminar', 'Expert talk on recent advancements in AI.', 'Academic', '2025-10-01', '16:00:00', 'Scheduled', 'CLUB000006', 'VENU000004'),
('EVNT000012', 'Outdoor Movie Night', 'Screening of a popular family movie under the stars.', 'Social', '2025-09-05', '20:00:00', 'Scheduled', 'CLUB000009', 'VENU000007'),
('EVNT000013', 'Green Campus Initiative', 'Tree planting and campus beautification drive.', 'Charity', '2025-11-22', '08:30:00', 'Scheduled', 'CLUB000003', NULL),
('EVNT000014', 'Startup Idea Pitch', 'Students present their entrepreneurial ideas to a panel.', 'Academic', '2025-12-05', '10:00:00', 'Scheduled', 'CLUB000010', 'VENU000001'),
('EVNT000015', 'Annual Art Exhibition', 'Display of student artworks and sculptures.', 'Cultural', '2026-03-10', '15:00:00', 'Scheduled', 'CLUB000005', 'VENU000005'),
('EVNT000016', 'Coding Bootcamp', 'Intensive workshop on web development basics.', 'Academic', '2025-11-12', '09:00:00', 'Scheduled', 'CLUB000006', 'VENU000006'),
('EVNT000017', 'Inter-Club Sports Day', 'Friendly sports competitions between various clubs.', 'Sports', '2026-04-20', '09:00:00', 'Scheduled', 'CLUB000002', 'VENU000003'),
('EVNT000018', 'Volunteer Recruitment Drive', 'Information session for new volunteers for community service.', 'Charity', '2025-09-15', '11:00:00', 'Scheduled', 'CLUB000003', 'VENU000002'),
('EVNT000019', 'Board Game Marathon', 'A day dedicated to playing various board games.', 'Social', '2025-10-20', '10:00:00', 'Scheduled', 'CLUB000008', 'VENU000002'),
('EVNT000020', 'Poetry Slam Night', 'Open mic event for students to perform poetry.', 'Cultural', '2025-11-08', '19:00:00', 'Scheduled', 'CLUB000007', 'VENU000010');


INSERT INTO public.eventParticipation (student_ID, event_ID, participant_role) VALUES
('STUD000001', 'EVNT000001', 'Organizer'),
('STUD000002', 'EVNT000001', 'Attendee'),
('STUD000007', 'EVNT000001', 'Attendee'),
('STUD000011', 'EVNT000001', 'Attendee'),

('STUD000003', 'EVNT000002', 'Organizer'),
('STUD000012', 'EVNT000002', 'Attendee'),
('STUD000001', 'EVNT000002', 'Attendee'), -- Student 1 also participates in Chess
('STUD000005', 'EVNT000002', 'Attendee'),

('STUD000004', 'EVNT000003', 'Organizer'),
('STUD000013', 'EVNT000003', 'Attendee'),
('STUD000010', 'EVNT000003', 'Attendee'),

('STUD000005', 'EVNT000004', 'Organizer'),
('STUD000014', 'EVNT000004', 'Attendee'),
('STUD000003', 'EVNT000004', 'Attendee'),

('STUD000006', 'EVNT000005', 'Organizer'),
('STUD000015', 'EVNT000005', 'Attendee'),
('STUD000009', 'EVNT000005', 'Attendee'),

('STUD000007', 'EVNT000006', 'Organizer'),
('STUD000016', 'EVNT000006', 'Attendee'),
('STUD000001', 'EVNT000006', 'Attendee'), -- Student 1 also participates in Hackathon
('STUD000011', 'EVNT000006', 'Attendee'),

('STUD000008', 'EVNT000007', 'Organizer'),
('STUD000017', 'EVNT000007', 'Attendee'),
('STUD000007', 'EVNT000007', 'Attendee'),

('STUD000009', 'EVNT000008', 'Organizer'),
('STUD000018', 'EVNT000008', 'Attendee'),
('STUD000002', 'EVNT000008', 'Attendee'),

('STUD000010', 'EVNT000009', 'Organizer'),
('STUD000019', 'EVNT000009', 'Attendee'),

('STUD000020', 'EVNT000010', 'Organizer'),
('STUD000025', 'EVNT000010', 'Attendee');

INSERT INTO public.clubMembership (student_ID, club_ID, role_title, membership_status, join_date, leave_date) VALUES
('STUD000001', 'CLUB000001', 'President', 'Active', '2023-09-01', NULL),
('STUD000002', 'CLUB000001', 'normal member', 'Active', '2024-01-15', NULL),
('STUD000003', 'CLUB000002', 'Secretary', 'Active', '2023-10-10', NULL),
('STUD000004', 'CLUB000003', 'normal member', 'Active', '2024-02-01', NULL),
('STUD000005', 'CLUB000004', 'Vice President', 'Active', '2023-11-20', NULL),
('STUD000006', 'CLUB000005', 'normal member', 'Active', '2024-03-05', NULL),
('STUD000007', 'CLUB000006', 'President', 'Active', '2023-09-15', NULL),
('STUD000008', 'CLUB000007', 'normal member', 'Active', '2024-04-10', NULL),
('STUD000009', 'CLUB000008', 'Treasurer', 'Active', '2023-12-01', NULL),
('STUD000010', 'CLUB000009', 'normal member', 'Active', '2024-05-12', NULL),
('STUD000011', 'CLUB000001', 'normal member', 'Active', '2024-01-20', NULL),
('STUD000012', 'CLUB000002', 'normal member', 'Active', '2023-11-01', NULL),
('STUD000013', 'CLUB000003', 'normal member', 'Active', '2024-02-15', NULL),
('STUD000014', 'CLUB000004', 'normal member', 'Active', '2023-12-05', NULL),
('STUD000015', 'CLUB000005', 'normal member', 'Active', '2024-03-20', NULL),
('STUD000016', 'CLUB000006', 'normal member', 'Active', '2024-01-01', NULL),
('STUD000017', 'CLUB000007', 'normal member', 'Active', '2024-04-25', NULL),
('STUD000018', 'CLUB000008', 'normal member', 'Active', '2024-01-05', NULL),
('STUD000019', 'CLUB000009', 'normal member', 'Active', '2024-06-01', NULL),
('STUD000020', 'CLUB000010', 'normal member', 'Active', '2024-02-28', NULL);


INSERT INTO public.clubElection (election_ID, club_ID, date) VALUES
('ELEC000001', 'CLUB000001', '2024-09-01'),
('ELEC000002', 'CLUB000002', '2024-09-05'),
('ELEC000003', 'CLUB000003', '2024-09-10'),
('ELEC000004', 'CLUB000004', '2024-09-15'),
('ELEC000005', 'CLUB000005', '2024-09-20'),
('ELEC000006', 'CLUB000006', '2024-09-25'),
('ELEC000007', 'CLUB000007', '2024-10-01'),
('ELEC000008', 'CLUB000008', '2024-10-05'),
('ELEC000009', 'CLUB000009', '2024-10-10'),
('ELEC000010', 'CLUB000010', '2024-10-15'),
('ELEC000011', 'CLUB000001', '2023-09-01'), -- Previous election for Club 1
('ELEC000012', 'CLUB000002', '2023-09-05'), -- Previous election for Club 2
('ELEC000013', 'CLUB000003', '2023-09-10'), -- Previous election for Club 3
('ELEC000014', 'CLUB000004', '2023-09-15'), -- Previous election for Club 4
('ELEC000015', 'CLUB000005', '2023-09-20'); -- Previous election for Club 5


-- 11. electionCandidate (20 rows) - Ensure candidate_ID and club_ID match existing clubMembership
-- Candidates for ELEC000001 (CLUB000001)
INSERT INTO public.electionCandidate (election_ID, candidate_ID, club_ID, position_title, votes) VALUES
('ELEC000001', 'STUD000001', 'CLUB000001', 'President', 75), -- Already President, running again
('ELEC000001', 'STUD000002', 'CLUB000001', 'Secretary', 40),
('ELEC000001', 'STUD000011', 'CLUB000001', 'Treasurer', 30);

-- Candidates for ELEC000002 (CLUB000002)
INSERT INTO public.electionCandidate (election_ID, candidate_ID, club_ID, position_title, votes) VALUES
('ELEC000002', 'STUD000003', 'CLUB000002', 'President', 50),
('ELEC000002', 'STUD000012', 'CLUB000002', 'Secretary', 35);

-- Candidates for ELEC000003 (CLUB000003)
INSERT INTO public.electionCandidate (election_ID, candidate_ID, club_ID, position_title, votes) VALUES
('ELEC000003', 'STUD000004', 'CLUB000003', 'President', 60),
('ELEC000003', 'STUD000013', 'CLUB000003', 'Vice President', 45);

-- Candidates for ELEC000004 (CLUB000004)
INSERT INTO public.electionCandidate (election_ID, candidate_ID, club_ID, position_title, votes) VALUES
('ELEC000004', 'STUD000005', 'CLUB000004', 'President', 65),
('ELEC000004', 'STUD000014', 'CLUB000004', 'Secretary', 50);

-- Candidates for ELEC000005 (CLUB000005)
INSERT INTO public.electionCandidate (election_ID, candidate_ID, club_ID, position_title, votes) VALUES
('ELEC000005', 'STUD000006', 'CLUB000005', 'President', 70),
('ELEC000005', 'STUD000015', 'CLUB000005', 'Treasurer', 55);

-- Candidates for ELEC000006 (CLUB000006)
INSERT INTO public.electionCandidate (election_ID, candidate_ID, club_ID, position_title, votes) VALUES
('ELEC000006', 'STUD000007', 'CLUB000006', 'President', 80),
('ELEC000006', 'STUD000016', 'CLUB000006', 'Vice President', 60);

-- Candidates for ELEC000007 (CLUB000007)
INSERT INTO public.electionCandidate (election_ID, candidate_ID, club_ID, position_title, votes) VALUES
('ELEC000007', 'STUD000008', 'CLUB000007', 'President', 55),
('ELEC000007', 'STUD000017', 'CLUB000007', 'Secretary', 40);

-- Candidates for ELEC000008 (CLUB000008)
INSERT INTO public.electionCandidate (election_ID, candidate_ID, club_ID, position_title, votes) VALUES
('ELEC000008', 'STUD000009', 'CLUB000008', 'President', 60),
('ELEC000008', 'STUD000018', 'CLUB000008', 'Treasurer', 45);

-- Candidates for ELEC000009 (CLUB000009)
INSERT INTO public.electionCandidate (election_ID, candidate_ID, club_ID, position_title, votes) VALUES
('ELEC000009', 'STUD000010', 'CLUB000009', 'President', 50),
('ELEC000009', 'STUD000019', 'CLUB000009', 'Secretary', 30);

-- Candidates for ELEC000010 (CLUB000010)
INSERT INTO public.electionCandidate (election_ID, candidate_ID, club_ID, position_title, votes) VALUES
('ELEC000010', 'STUD000020', 'CLUB000010', 'President', 70);

INSERT INTO public.advisorAssignment (advisor_ID, club_ID, assignment_date, end_date) VALUES
('ADVR000001', 'CLUB000001', '2023-09-01', NULL),
('ADVR000002', 'CLUB000002', '2023-10-01', NULL),
('ADVR000003', 'CLUB000003', '2024-01-01', NULL),
('ADVR000004', 'CLUB000004', '2023-11-01', NULL),
('ADVR000005', 'CLUB000005', '2024-02-01', NULL),
('ADVR000006', 'CLUB000006', '2023-09-15', NULL),
('ADVR000007', 'CLUB000007', '2024-03-01', NULL),
('ADVR000008', 'CLUB000008', '2023-12-01', NULL),
('ADVR000001', 'CLUB000009', '2024-04-01', NULL),
('ADVR000002', 'CLUB000010', '2024-05-01', NULL),
('ADVR000003', 'CLUB000011', '2024-06-01', NULL), -- Existing advisor, new club
('ADVR000004', 'CLUB000012', '2024-07-01', NULL), -- Existing advisor, new club
('ADVR000009', 'CLUB000001', '2024-08-01', NULL), -- New advisor, existing club
('ADVR000010', 'CLUB000002', '2024-09-01', NULL), -- New advisor, existing club
('ADVR000011', 'CLUB000013', '2024-09-15', NULL), -- New advisor, new club
('ADVR000012', 'CLUB000014', '2024-10-01', NULL), -- New advisor, new club
('ADVR000013', 'CLUB000015', '2024-10-15', NULL), -- New advisor, new club
('ADVR000014', 'CLUB000016', '2024-11-01', NULL), -- New advisor, new club
('ADVR000015', 'CLUB000017', '2024-11-15', NULL), -- New advisor, new club
('ADVR000016', 'CLUB000018', '2024-12-01', NULL); -- New advisor, new club

INSERT INTO public.clubBudget (budget_ID, club_ID, academic_year, allocated_amount) VALUES
('BUDG000001', 'CLUB000001', '2024-2025', 15000.00),
('BUDG000002', 'CLUB000002', '2024-2025', 5000.00),
('BUDG000003', 'CLUB000003', '2024-2025', 7500.00),
('BUDG000004', 'CLUB000004', '2024-2025', 6000.00),
('BUDG000005', 'CLUB000005', '2024-2025', 4000.00),
('BUDG000006', 'CLUB000006', '2024-2025', 12000.00),
('BUDG000007', 'CLUB000007', '2024-2025', 8000.00),
('BUDG000008', 'CLUB000008', '2024-2025', 5500.00),
('BUDG000009', 'CLUB000009', '2024-2025', 3000.00),
('BUDG000010', 'CLUB000010', '2024-2025', 10000.00),
('BUDG000011', 'CLUB000011', '2024-2025', 9000.00),
('BUDG000012', 'CLUB000012', '2024-2025', 7000.00),
('BUDG000013', 'CLUB000013', '2024-2025', 3500.00),
('BUDG000014', 'CLUB000014', '2024-2025', 6500.00),
('BUDG000015', 'CLUB000015', '2024-2025', 4500.00),
('BUDG000016', 'CLUB000016', '2024-2025', 11000.00),
('BUDG000017', 'CLUB000017', '2024-2025', 8500.00),
('BUDG000018', 'CLUB000018', '2024-2025', 7200.00),
('BUDG000019', 'CLUB000019', '2024-2025', 9500.00),
('BUDG000020', 'CLUB000020', '2024-2025', 6800.00);

INSERT INTO public.budgetTransactions (transaction_ID, budget_ID, transaction_date, description, amount) VALUES
('TRNS000001', 'BUDG000001', '2024-10-01', 'Purchase of robot parts', 5000.00),
('TRNS000002', 'BUDG000001', '2024-11-10', 'Workshop materials', 1500.00),
('TRNS000003', 'BUDG000002', '2024-10-15', 'Chess board sets', 800.00),
('TRNS000004', 'BUDG000003', '2024-11-01', 'Cleanup supplies', 500.00),
('TRNS000005', 'BUDG000004', '2024-12-01', 'Debate competition prizes', 1200.00),
('TRNS000006', 'BUDG000005', '2024-10-20', 'Photo paper and frames', 700.00),
('TRNS000007', 'BUDG000006', '2024-09-25', 'Hackathon server rental', 3000.00),
('TRNS000008', 'BUDG000007', '2024-11-05', 'Food festival ingredients', 2500.00),
('TRNS000009', 'BUDG000008', '2024-10-03', 'Gaming console accessories', 1000.00),
('TRNS000010', 'BUDG000009', '2024-11-15', 'Movie licensing fees', 500.00),
('TRNS000011', 'BUDG000010', '2024-12-15', 'Startup mentorship program', 4000.00),
('TRNS000012', 'BUDG000001', '2025-01-05', 'Sponsorship for regional competition', 2500.00),
('TRNS000013', 'BUDG000002', '2025-02-10', 'Guest speaker honorarium', 1000.00),
('TRNS000014', 'BUDG000003', '2025-01-20', 'Environmental awareness campaign materials', 1500.00),
('TRNS000015', 'BUDG000004', '2025-03-01', 'Debate training workshops', 800.00),
('TRNS000016', 'BUDG000005', '2025-02-20', 'Camera equipment maintenance', 300.00),
('TRNS000017', 'BUDG000006', '2025-01-10', 'Coding competition prizes', 1800.00),
('TRNS000018', 'BUDG000007', '2025-04-01', 'Cultural event decorations', 900.00),
('TRNS000019', 'BUDG000008', '2025-03-10', 'New game titles purchase', 700.00),
('TRNS000020', 'BUDG000009', '2025-04-15', 'Film club membership drive materials', 200.00),
('TRNS000021', 'BUDG000011', '2024-09-10', 'Subscription for data analysis software', 1200.00),
('TRNS000022', 'BUDG000011', '2025-02-15', 'Workshop speaker honorarium (Data Science)', 800.00),
('TRNS000023', 'BUDG000012', '2024-10-05', 'Purchase of bio-sensors for projects', 3000.00),
('TRNS000024', 'BUDG000012', '2025-03-20', 'Biomedical conference registration fees', 1500.00),
('TRNS000025', 'BUDG000013', '2024-09-20', 'Purchase of new literary works for club library', 600.00),
('TRNS000026', 'BUDG000013', '2025-01-25', 'Catering for poetry reading event', 450.00),
('TRNS000027', 'BUDG000014', '2024-11-01', 'Maintenance for club instruments', 1000.00),
('TRNS000028', 'BUDG000014', '2025-04-10', 'New sheet music and scores', 750.00),
('TRNS000029', 'BUDG000015', '2024-10-10', 'Telescope lens cleaning and calibration', 500.00),
('TRNS000030', 'BUDG000015', '2025-02-01', 'Public stargazing event equipment rental', 800.00),
('TRNS000031', 'BUDG000016', '2024-09-05', 'Ethical hacking tool licenses', 4000.00),
('TRNS000032', 'BUDG000016', '2025-01-15', 'Cybersecurity expert speaker fee', 2000.00),
('TRNS000033', 'BUDG000017', '2024-11-20', 'Materials for sustainable energy project', 2500.00),
('TRNS000034', 'BUDG000017', '2025-03-05', 'Environmental awareness campaign printing', 1000.00),
('TRNS000035', 'BUDG000018', '2024-10-25', 'Digital marketing software subscription', 1500.00),
('TRNS000036', 'BUDG000018', '2025-02-28', 'Social media advertising campaign', 1000.00),
('TRNS000037', 'BUDG000019', '2024-12-01', 'Cloud computing credits for projects', 3500.00),
('TRNS000038', 'BUDG000019', '2025-04-05', 'Prizes for internal coding challenges', 1000.00),
('TRNS000039', 'BUDG000020', '2024-11-10', 'Materials for renewable energy model building', 1800.00),
('TRNS000040', 'BUDG000020', '2025-03-15', 'Field trip to local power plant', 1200.00);



