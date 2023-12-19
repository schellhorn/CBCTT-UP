%%% having two V sharing same lecturer

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

course(("check-HC4-1", v)).
course_size(("check-HC4-1", v), 150).
course_lecturer(("check-HC4-1", v), "Schaub, Torsten").
course(("check-HC4-2", v)).
course_size(("check-HC4-2", v), 150).
%course_lecturer(("check-HC4-2", v), "Schaub, Torsten").
course_lecturer(("check-HC4-2", v), "N.N.").
%parallel(("check-HC4-1", v),("check-HC4-2", v)).


% availability_course(ID, Course). %% availability
% availability_room(ID, Room). 
% availability_day(ID, Day). 
% availability_time(ID, Time). 
% availability_priority(ID, Priority). 

availability_course(231218013, ("check-HC4-1", v)).
availability_room(231218013, "2.27.0.01").
availability_day(231218013, fr).
availability_time(231218013, 12).
availability_priority(231218013, 2). 
availability_course(231218014, ("check-HC4-2", v)).
availability_room(231218014, "2.27.1.01").
availability_day(231218014, fr).
availability_time(231218014, 12).
availability_priority(231218014, 2).

%Output book(231218013,"check-HC4-1",v,"2.27.0.01",fr,12,2) book(231218014,"check-HC4-2",v,"2.27.1.01",fr,12,2)
