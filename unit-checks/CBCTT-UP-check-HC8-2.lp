%%% having two V have to be consecutive

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

course(("check-HC8-1", v)).
course_size(("check-HC8-1", v), 150).
course(("check-HC8-2", v)).
course_size(("check-HC8-2", v), 150).
consecutive(("check-HC8-1", v),("check-HC8-2", v)).


% availability_course(ID, Course). %% availability
% availability_room(ID, Room). 
% availability_day(ID, Day). 
% availability_time(ID, Time). 
% availability_priority(ID, Priority). 

availability_course(231218024, ("check-HC8-1", v)).
availability_room(231218024, "2.27.0.01").
availability_day(231218024, fr).
availability_time(231218024, 12).
availability_priority(231218024, 1). 
availability_course(231218025, ("check-HC8-2", v)).
availability_room(231218025, "2.27.0.01").
availability_day(231218025, fr).
availability_time(231218025, 16).
availability_priority(231218025, 1). 
availability_course(231218026, ("check-HC8-2", v)).
availability_room(231218026, "2.27.0.01").
availability_day(231218026, do).
availability_time(231218026, 14).
availability_priority(231218026, 2).

%Output UNSATISFIABLE