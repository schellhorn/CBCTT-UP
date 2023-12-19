%%% having two V with same prio on same time slot and room

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

course(("check-HC3-1", v)).
course_size(("check-HC3-1", v), 150).
course(("check-HC3-2", v)).
course_size(("check-HC3-2", v), 150).
%parallel(("check-HC3-1", v),("check-HC3-2", v)).
simultaneous(("check-HC3-1", v),("check-HC3-2", v)).


% availability_course(ID, Course). %% availability
% availability_room(ID, Room). 
% availability_day(ID, Day). 
% availability_time(ID, Time). 
% availability_priority(ID, Priority). 

availability_course(231218010, ("check-HC3-1", v)).
availability_room(231218010, "2.27.0.01").
availability_day(231218010, fr).
availability_time(231218010, 12).
availability_priority(231218010, 1). 
availability_course(231218011, ("check-HC3-2", v)).
availability_room(231218011, "2.27.0.01").
availability_day(231218011, fr).
availability_time(231218011, 12).
availability_priority(231218011, 1).
availability_course(231218012, ("check-HC3-2", v)).
availability_room(231218012, "2.27.0.01").
availability_day(231218012, fr).
availability_time(231218012, 14).
availability_priority(231218012, 2).

%Output book(231218010,"check-HC3-1",v,"2.27.0.01",fr,12,1) book(231218011,"check-HC3-2",v,"2.27.0.01",fr,12,1)
