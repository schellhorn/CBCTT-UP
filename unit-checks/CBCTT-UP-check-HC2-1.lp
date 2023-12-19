%%% having two obligatory V with same prio

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

course(("check-HC2-1", v)).
course_size(("check-HC2-1", v), 150).
course_module(("check-HC2-1", v), "INF-1010"). 
course(("check-HC2-2", v)).
course_size(("check-HC2-2", v), 150).
course_module(("check-HC2-2", v), "INF-1020"). 
%parallel(("check-HC2-1", v),("check-HC2-2", v)).
%simultaneous(("check-HC2-1", v),("check-HC2-2", v)).


% availability_course(ID, Course). %% availability
% availability_room(ID, Room). 
% availability_day(ID, Day). 
% availability_time(ID, Time). 
% availability_priority(ID, Priority). 

availability_course(231218007, ("check-HC2-1", v)).
availability_room(231218007, "2.27.0.01").
availability_day(231218007, fr).
availability_time(231218007, 12).
availability_priority(231218007, 1). 
availability_course(231218008, ("check-HC2-2", v)).
availability_room(231218008, "2.27.1.01").
availability_day(231218008, fr).
availability_time(231218008, 12).
availability_priority(231218008, 1).
availability_course(231218009, ("check-HC2-2", v)).
availability_room(231218009, "2.27.1.01").
availability_day(231218009, fr).
availability_time(231218009, 14).
availability_priority(231218009, 2).

%Output book(231218009,"check-HC2-2",v,"2.27.1.01",fr,14,2) book(231218007,"check-HC2-1",v,"2.27.0.01",fr,12,1)