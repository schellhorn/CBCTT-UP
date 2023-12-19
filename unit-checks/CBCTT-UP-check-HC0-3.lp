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

course(("check-HC0", v)).
course_size(("check-HC0", v), 200).
course(("check-HC0", u)).
course_size(("check-HC0", u), 45).
parallel(("check-HC0", v),("check-HC0", u)).
simultaneous(("check-HC0", v),("check-HC0", u)).


% availability_course(ID, Course). %% availability
% availability_room(ID, Room). 
% availability_day(ID, Day). 
% availability_time(ID, Time). 
% availability_priority(ID, Priority). 

availability_course(231218001, ("check-HC0", v)).
availability_room(231218001, "2.70.0.08").
availability_day(231218001, fr).
availability_time(231218001, 12).
availability_priority(231218001, 1).
availability_course(231218002, ("check-HC0", u)).
availability_room(231218002, "2.70.0.08").
availability_day(231218002, fr).
availability_time(231218002, 12).
availability_priority(231218002, 1).
availability_course(231218003, ("check-HC0", u)).
availability_room(231218003, "2.70.0.09").
availability_day(231218003, fr).
availability_time(231218003, 12).
availability_priority(231218003, 1).
availability_course(231218004, ("check-HC0", u)).
availability_room(231218004, "2.70.0.09").
availability_day(231218004, fr).
availability_time(231218004, 14).
availability_priority(231218004, 2).

%Output book(231218001,"check-HC0",v,"2.70.0.08",fr,12,1) book(231218002,"check-HC0",u,"2.70.0.08",fr,12,1)

