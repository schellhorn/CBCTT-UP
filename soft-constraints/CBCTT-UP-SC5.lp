%%% Soft Constraint
%% SC 5: MaxLoad: For a cohort as well as lecturer the number of corresponding courses per day should be below or equal to a given maximum. The penalty points reflecting the number of courses above the maximum

%% track load of an actor per day if above max_load
penalty(max_load, (Day, Actor), N - max_load_val) :- day(Day), actors(_, Actor), max_load_val < N, N = #count{book(ID, Course) : book(ID, Course), actors(Course, Actor), availability_day(ID, Day)}. 