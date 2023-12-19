%%% having V and U, where U prio 1 is conflicting, but prio 2 fits

% course((Name, Type)). % (Name, Type) = Course
% course_size(Course, Size).    
% course_planner(Course, Planner). 
% course_lecturer(Course, Lecturer). % several possible by having several predicates with same Course but different Lecturer
% course_module(Course, Module). 
% course_large_board(Course). 
% course_mic(Course). 
% course_cam(Course). 
% course_projector(Course). 
% course_pc(Course). 
% course_media_table(Course). 
% course_whiteboard(Course). 
%% relating courses 
% simultaneous(Course1, Course2). % room, day, time (hard) 
% consecutive(Course1, Course2). % day, time (hard), +room (soft)
% parallel(Course1, Course2). % day, time (hard)
% not_parallel(Course1, Course2). % day, time (hard)

course(("check-SC0", v)).
course_size(("check-SC0", v), 200).
course(("check-SC0", u)).
course_size(("check-SC0", u), 45).
%parallel(("check-SC0", v),("check-SC0", u)).
%simultaneous(("check-SC0", v),("check-SC0", u)).


% availability_course(ID, Course). %% availability
% availability_room(ID, Room). 
% availability_day(ID, Day). 
% availability_time(ID, Time). 
% availability_priority(ID, Priority). 

availability_course(231218027, ("check-SC0", v)).
availability_room(231218027, "2.70.0.08").
availability_day(231218027, fr).
availability_time(231218027, 12).
availability_priority(231218027, 1).
availability_course(231218028, ("check-SC0", u)).
availability_room(231218028, "2.70.0.08").
availability_day(231218028, fr).
availability_time(231218028, 12).
availability_priority(231218028, 1).
availability_course(231218029, ("check-SC0", u)).
availability_room(231218029, "2.70.0.09").
availability_day(231218029, fr).
availability_time(231218029, 14).
availability_priority(231218029, 2).

%Output penalty(availability,(231218029,("check-SC0",u)),2)