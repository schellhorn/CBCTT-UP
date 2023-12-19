%%% having more load than max_load_val

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

course(("check-SC5-1", u)).
course_size(("check-SC5-1", u), 150).
course_module(("check-SC5-1", u), "INF-1010"). 
course_lecturer(("check-SC5-1", u), "Schaub, Torsten").
course(("check-SC5-2", u)).
course_size(("check-SC5-2", u), 150).
course_module(("check-SC5-2", u), "INF-1020"). 
course_lecturer(("check-SC5-2", u), "Schaub, Torsten").
course(("check-SC5-3", u)).
course_size(("check-SC5-3", u), 150).
course_module(("check-SC5-3", u), "INF-1010"). 
course_lecturer(("check-SC5-3", u), "Schaub, Torsten").
course(("check-SC5-4", u)).
course_size(("check-SC5-4", u), 150).
course_module(("check-SC5-4", u), "INF-1020"). 
course_lecturer(("check-SC5-4", u), "Schaub, Torsten").
course(("check-SC5-5", u)).
course_size(("check-SC5-5", u), 150).
course_module(("check-SC5-5", u), "INF-1010"). 
course_lecturer(("check-SC5-5", u), "Schaub, Torsten").


% availability_course(ID, Course). 
% availability_room(ID, Room). 
% availability_day(ID, Day). 
% availability_time(ID, Time). 
% availability_priority(ID, Priority). 

availability_course(231218043, ("check-SC5-1", u)).
availability_room(231218043, "2.27.0.01").
availability_day(231218043, fr).
availability_time(231218043, 8).
availability_priority(231218043, 1). 
availability_course(231218044, ("check-SC5-2", u)).
availability_room(231218044, "2.27.1.01").
availability_day(231218044, fr).
availability_time(231218044, 10).
availability_priority(231218044, 1).
availability_course(231218045, ("check-SC5-3", u)).
availability_room(231218045, "2.27.0.01").
availability_day(231218045, fr).
availability_time(231218045, 12).
availability_priority(231218045, 1).
availability_course(231218046, ("check-SC5-4", u)).
availability_room(231218046, "2.27.0.01").
availability_day(231218046, fr).
availability_time(231218046, 14).
availability_priority(231218046, 1).
availability_course(231218047, ("check-SC5-5", u)).
availability_room(231218047, "2.27.0.01").
availability_day(231218047, fr).
availability_time(231218047, 16).
availability_priority(231218047, 1).

%Output penalty(max_load,(fr,"Schaub, Torsten"),1) penalty(max_load,(fr,("Bachelor of Science Informatik/Computational Science WiSe 2019/20",1)),1)