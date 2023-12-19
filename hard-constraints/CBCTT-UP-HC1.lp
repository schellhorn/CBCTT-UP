%%% Hard Constraint
%% HC 1: One availability for each course must be assigned to a time slot and room

%% generate possible combinations booking rooms
1{ book(ID, Course) : availability_course(ID, Course) }1 :- course(Course). 
