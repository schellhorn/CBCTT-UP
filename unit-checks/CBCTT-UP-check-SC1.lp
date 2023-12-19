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

course(("check-SC1", v)).
course_size(("check-SC1", v), 200).
course(("check-SC1", u)).
course_size(("check-SC1", u), 45).
%parallel(("check-SC1", v),("check-SC1", u)).
%simultaneous(("check-SC1", v),("check-SC1", u)).


% availability_course(ID, Course). %% availability
% availability_room(ID, Room). 
% availability_day(ID, Day). 
% availability_time(ID, Time). 
% availability_priority(ID, Priority). 

availability_course(231218030, ("check-SC1", v)).
availability_room(231218030, "2.70.0.08").
availability_day(231218030, fr).
availability_time(231218030, 12).
availability_priority(231218030, 1).
availability_course(231218031, ("check-SC1", u)).
availability_room(231218031, "2.70.0.08").
availability_day(231218031, fr).
availability_time(231218031, 12).
availability_priority(231218031, 1).
availability_course(231218032, ("check-SC1", u)).
availability_room(231218032, "2.70.0.09").
availability_day(231218032, fr).
availability_time(231218032, 14).
availability_priority(231218032, 2).

%Output penalty(capacity,(231218030,("check-SC1",v)),164) penalty(capacity,(231218032,("check-SC1",u)),9)