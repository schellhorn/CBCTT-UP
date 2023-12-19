%%% Soft Constraint
%% SC 3: Gaps: For a cohort as well as lecturer, corresponding courses should be scheduled in time slots as close as possible. The penalty regarding two courses sharing a cohort or lecturer, and a day is given by subtracting the earlier time from the later time

%% track gaps of two booked courses sharing same actors (cohorts and lecturer) 
penalty(gap, ((ID1, Course1), (ID2, Course2)), Time2 - Time1) :- book(ID1, Course1), actors(Course1, Actor), availability_day(ID1, Day), availability_time(ID1, Time1), 
                                                                 book(ID2, Course2), actors(Course2, Actor), availability_day(ID2, Day), availability_time(ID2, Time2), 
                                                                 Course1 != Course2, Time1 + 2 < Time2.