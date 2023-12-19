%%% checking for room suitability

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

course(("check-SC7-1", u)).
course_size(("check-SC7-1", u), 15).
course_large_board(("check-SC7-1", u)). 
course_mic(("check-SC7-1", u)). 
course_cam(("check-SC7-1", u)). 
course_projector(("check-SC7-1", u)). 
course_pc(("check-SC7-1", u)). 
course_media_table(("check-SC7-1", u)). 
course_whiteboard(("check-SC7-1", u)). 
course(("check-SC7-2", u)).
course_size(("check-SC7-2", u), 15).
course_large_board(("check-SC7-2", u)). 
course_mic(("check-SC7-2", u)). 
course_cam(("check-SC7-2", u)). 
course_projector(("check-SC7-2", u)). 
course_pc(("check-SC7-2", u)). 
course_media_table(("check-SC7-2", u)). 
course_whiteboard(("check-SC7-2", u)). 


% availability_course(ID, Course). 
% availability_room(ID, Room). 
% availability_day(ID, Day). 
% availability_time(ID, Time). 
% availability_priority(ID, Priority). 

availability_course(231218051, ("check-SC7-1", u)).
availability_room(231218051, "2.27.1.01").
availability_day(231218051, fr).
availability_time(231218051, 8).
availability_priority(231218051, 1). 
availability_course(231218052, ("check-SC7-2", u)).
availability_room(231218052, "2.70.0.01").
availability_day(231218052, fr).
availability_time(231218052, 10).
availability_priority(231218052, 1).

%Output penalty(board,(231218052,("check-SC7-2",u)),1) penalty(pc,(231218051,("check-SC7-1",u)),1) penalty(cam,(231218051,("check-SC7-1",u)),1) penalty(whiteboard,(231218051,("check-SC7-1",u)),1)
