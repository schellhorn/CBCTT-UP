%%% Hard Constraint
%% HC 8: Consecutive: Two courses have to be scheduled in consecutive time slots, whenever explicitly stated

%% cannot be the case that that two courses marked as consecutive are not in direct order 
conflict(consecutive, ((ID1, Course1), (ID2, Course2))) :- book(ID1, Course1), availability_time(ID1, Time), 
                                                           book(ID2, Course2), not availability_time(ID2, Time + 2), 
                                                           consecutive(Course1, Course2). 

%% cannot be the case that that two courses marked as consecutive are not at same day 
conflict(consecutive, ((ID1, Course1), (ID2, Course2))) :- book(ID1, Course1), availability_day(ID1, Day), 
                                                           book(ID2, Course2), not availability_day(ID2, Day), 
                                                           consecutive(Course1, Course2). 