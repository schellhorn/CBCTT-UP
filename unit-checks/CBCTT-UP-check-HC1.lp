%%% having V with two possibilities

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

course(("check-HC1", v)).
course_size(("check-HC1", v), 150).


% availability_course(ID, Course). %% availability
% availability_room(ID, Room). 
% availability_day(ID, Day). 
% availability_time(ID, Time). 
% availability_priority(ID, Priority). 

availability_course(231218005, ("check-HC1", v)).
availability_room(231218005, "2.27.0.01").
availability_day(231218005, fr).
availability_time(231218005, 12).
availability_priority(231218005, 2). 
availability_course(231218006, ("check-HC1", v)).
availability_room(231218006, "2.27.1.01").
availability_day(231218006, fr).
availability_time(231218006, 12).
availability_priority(231218006, 2).

%Output penalty(availability,(231218006,("check-HC1",v)),2) book(231218006,"check-HC1",v,"2.27.1.01",fr,12,2)