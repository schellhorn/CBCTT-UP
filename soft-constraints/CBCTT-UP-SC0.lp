%%% Soft Constraint
%% SC 0: Priorities: For each course, try to serve priorities on time slot and room

%% penalizing priorities greater 1
penalty(availability, (ID, Course), Priority) :- book(ID, Course), availability_priority(ID, Priority), Priority > 1.