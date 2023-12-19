%%% Hard Constraint
%% HC 4: Lecturer: Courses sharing a lecturer cannot be scheduled at the same time slot, except explicitly stated

%% cannot book a lecturer parallel %%% does not consider allowed double usage of lecturers 
conflict(lecturer, ((ID1, Course1), (ID2, Course2))) :- book(ID1, Course1), availability_day(ID1, Day), availability_time(ID1, Time), course_lecturer(Course1, Lecturer), 
                                                        book(ID2, Course2), availability_day(ID2, Day), availability_time(ID2, Time), course_lecturer(Course2, Lecturer), 
                                                        not parallel(Course1, Course2), Course1 < Course2, Lecturer != "N.N.". % not double_lecturer(Course1, Lecturer), not double_lecturer(Course2, Lecturer).