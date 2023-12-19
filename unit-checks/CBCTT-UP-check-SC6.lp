%%% reducing traveling time among two courses

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

course(("check-SC6-1", u)).
course_size(("check-SC6-1", u), 15).
course_module(("check-SC6-1", u), "INF-1010"). 
course_lecturer(("check-SC6-1", u), "Schaub, Torsten").
course(("check-SC6-2", u)).
course_size(("check-SC6-2", u), 15).
course_module(("check-SC6-2", u), "INF-1020"). 
course_lecturer(("check-SC6-2", u), "Schaub, Torsten").


% availability_course(ID, Course). 
% availability_room(ID, Room). 
% availability_day(ID, Day). 
% availability_time(ID, Time). 
% availability_priority(ID, Priority). 

availability_course(231218048, ("check-SC6-1", u)).
availability_room(231218048, "2.25.F0.01").
availability_day(231218048, fr).
availability_time(231218048, 8).
availability_priority(231218048, 1). 
availability_course(231218049, ("check-SC6-2", u)).
availability_room(231218049, "2.70.0.01").
availability_day(231218049, fr).
availability_time(231218049, 10).
availability_priority(231218049, 1).
availability_course(231218050, ("check-SC6-2", u)).
availability_room(231218050, "2.28.0.108").
availability_day(231218050, fr).
availability_time(231218050, 10).
availability_priority(231218050, 1).

%Output penalty(traveling,((231218048,("check-SC6-1",u)),(231218050,("check-SC6-2",u))),1)