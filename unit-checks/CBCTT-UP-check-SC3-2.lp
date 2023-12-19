%%% having gap between two U with same cohort

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

course(("check-SC3-1", u)).
course_size(("check-SC3-1", u), 150).
%course_module(("check-SC3-1", u), "INF-1010"). 
course_lecturer(("check-SC3-1", u), "Schaub, Torsten").
course(("check-SC3-2", u)).
course_size(("check-SC3-2", u), 150).
course_module(("check-SC3-2", u), "INF-1020"). 
course_lecturer(("check-SC3-2", u), "Schaub, Torsten").


% availability_course(ID, Course). %% availability
% availability_room(ID, Room). 
% availability_day(ID, Day). 
% availability_time(ID, Time). 
% availability_priority(ID, Priority). 

availability_course(231218035, ("check-SC3-1", u)).
availability_room(231218035, "2.27.0.01").
availability_day(231218035, fr).
availability_time(231218035, 12).
availability_priority(231218035, 1). 
availability_course(231218036, ("check-SC3-2", u)).
availability_room(231218036, "2.27.1.01").
availability_day(231218036, fr).
availability_time(231218036, 16).
availability_priority(231218036, 1).

%Output penalty(gap,((231218035,("check-SC3-1",u)),(231218036,("check-SC3-2",u))),4)