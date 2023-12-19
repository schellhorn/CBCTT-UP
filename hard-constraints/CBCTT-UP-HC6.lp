%%% Hard Constraint
%% HC 6: Parallel: Two courses have to take place at the same time slot, whenever explicitly stated

%% cannot be the case that two courses forced to be in parallel are not at the same day  
conflict(parallel, ((ID1, Course1), (ID2, Course2))) :- book(ID1, Course1), availability_day(ID1, Day),  
                                                        book(ID2, Course2), not availability_day(ID2, Day),  
                                                        parallel(Course1, Course2). 

%% cannot be the case that two courses forced to be in parallel are not at the same time 
conflict(parallel, ((ID1, Course1), (ID2, Course2))) :- book(ID1, Course1), availability_time(ID1, Time), 
                                                        book(ID2, Course2), not availability_time(ID2, Time), 
                                                        parallel(Course1, Course2). 