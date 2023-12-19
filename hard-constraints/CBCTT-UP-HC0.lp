%%% Hard Constraint
%% HC 0: No components of a course should take place in parallel to a corresponding lecture, except if explicitly stated

%% no components of a course should take place in parallel to a corresponding lecture, except if explicitly stated
conflict(lecturer, ((ID1, (Name, Type1)), (ID2, (Name, Type2)))) :- book(ID1, (Name, Type1)), availability_day(ID1, Day), availability_time(ID1, Time), lecture(Type1),
                                                                    book(ID2, (Name, Type2)), availability_day(ID2, Day), availability_time(ID2, Time), 
                                                                    not parallel((Name, Type1), (Name, Type2)), Type1 != Type2. 
