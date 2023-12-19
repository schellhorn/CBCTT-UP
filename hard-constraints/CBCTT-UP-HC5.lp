%%% Hard Constraint
%% HC 5: NotParallel: Avoiding two courses to take place at the same time slot, whenever explicitly stated

%% cannot be the case that two courses not allowed to be in parallel are at the same day and time 
conflict(not_parallel, ((ID1, Course1), (ID2, Course2))) :- book(ID1, Course1), availability_day(ID1, Day), availability_time(ID1, Time), 
                                                            book(ID2, Course2), availability_day(ID2, Day), availability_time(ID2, Time), 
                                                            not_parallel(Course1, Course2). 