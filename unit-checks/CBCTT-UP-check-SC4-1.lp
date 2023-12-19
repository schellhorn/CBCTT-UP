%%% having different rooms for consecutive events

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

course(("check-SC4-1", u)).
course_size(("check-SC4-1", u), 150).
course(("check-SC4-2", u)).
course_size(("check-SC4-2", u), 150).
consecutive(("check-SC4-1", u),("check-SC4-2", u)).


% availability_course(ID, Course). %% availability
% availability_room(ID, Room). 
% availability_day(ID, Day). 
% availability_time(ID, Time). 
% availability_priority(ID, Priority). 

availability_course(231218037, ("check-SC4-1", u)).
availability_room(231218037, "2.27.0.01").
availability_day(231218037, fr).
availability_time(231218037, 12).
availability_priority(231218037, 1). 
availability_course(231218038, ("check-SC4-2", u)).
availability_room(231218038, "2.27.1.01").
availability_day(231218038, fr).
availability_time(231218038, 14).
availability_priority(231218038, 1).
availability_course(231218039, ("check-SC4-2", u)).
availability_room(231218039, "2.27.0.01").
availability_day(231218039, fr).
availability_time(231218039, 14).
availability_priority(231218039, 2).

%Output penalty(consecutive,((231218037,("check-SC4-1",u)),(231218038,("check-SC4-2",u))),1)