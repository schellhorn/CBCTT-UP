%%% Soft Constraint
%% SC 2: Cohort: Courses addressed to the same cohort should be scheduled in different time slots, except explicitly stated to be in parallel

%% track parallel courses aiming on same cohort 
penalty(cohort, ((ID1, Course1), (ID2, Course2)), 1) :- book(ID1, Course1), course_module(Course1, Module1), obligatory(Program, Module1, Semester), availability_day(ID1, Day), availability_time(ID1, Time), 
                                                        book(ID2, Course2), course_module(Course2, Module2), obligatory(Program, Module2, Semester), availability_day(ID2, Day), availability_time(ID2, Time), 
                                                        not parallel(Course1, Course2), Course1 < Course2. 