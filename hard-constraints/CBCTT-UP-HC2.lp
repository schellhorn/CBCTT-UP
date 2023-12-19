%%% Hard Constraint
%% HC 2: Obligatory lectures of the same cohort must be all scheduled in different time slots 

%% cannot book obligatory two courses (lectures) of same cohort parallel (simultaneously implies parallel)
conflict(cohort, ((ID1, Course1), (ID2, Course2))) :- book(ID1, Course1), availability_day(ID1, Day), availability_time(ID1, Time), obligatory_lecture(Course1, Program, Module1, Semester), 
                                                      book(ID2, Course2), availability_day(ID2, Day), availability_time(ID2, Time), obligatory_lecture(Course2, Program, Module2, Semester),
                                                      not parallel(Course1, Course2), Course1 < Course2.