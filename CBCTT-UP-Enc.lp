%%%% constants %%%% 

#const availability_level = 20.
#const cohort_level = 17.
#const traveling_level = 16.
#const consecutive_level = 15.
#const board_level = 10.
#const projector_level = 10.
#const pc_level = 10.
#const mic_level = 10.
#const cam_level = 10.
#const media_table_level = 10.
#const whiteboard_level = 10.
#const capacity_level = 5.
#const gap_level = 4.
#const max_load_level = 3. 
%#const min_load_val = 0.
#const max_load_val = 4.
%min_load(min_load).
max_load(max_load_val).

level(availability, availability_level). 
level(cohort, cohort_level).
level(traveling, traveling_level).
level(consecutive, consecutive_level).
level(board, board_level).
level(projector, projector_level).
level(pc, pc_level).
level(mic, mic_level).
level(cam, cam_level).
level(media_table, media_table_level).
level(whiteboard, whiteboard_level).
level(capacity, capacity_level).
level(gap, gap_level).
level(max_load, max_load_level).

day(mo; di; mi; do; fr).  
lecture(v; v1; v2; v3; v4).


%%%% preprocessing %%%% 

%% identify obligatory lectures
obligatory_lecture((Name, V), Program, Module, Semester) :- course_module((Name, V), Module), obligatory(Program, Module, Semester), lecture(V).

%% course1 and course2 (distinct) are explicitly allowed to take place simultaneously in the same room and time, where the order is irrelevant
simultaneous(Course1, Course2) :- simultaneous(Course2, Course1).
parallel(Course1, Course2) :- simultaneous(Course1, Course2).

%% course1 and course2 (distinct) are not allowed to take place simultaneously in the same room and time, where the order is irrelevant
not_parallel(Course1, Course2) :- not_parallel(Course2, Course1).
:- not_parallel(Course, Course).

%% course1 and course2 (distinct) are not allowed to take place simultaneously in the same room and time, where the order is irrelevant
parallel(Course1, Course2) :- parallel(Course2, Course1).
:- parallel(Course, Course).

%% traveling time between room1 and room2 is undirected
room_traveling(Room1, Room2, TravelingTime) :- room_traveling(Room2, Room1, TravelingTime).

%% project actors (lecturer and cohorts) of a course
actors(Course, Lecturer) :- course_lecturer(Course, Lecturer), Lecturer != "N.N.".
actors(Course, (Program, Semester)) :- course_module(Course, Module), obligatory(Program, Module, Semester).


%%%% encoding %%%%

%%%% hard constraints %%%%

%% HC 0: No components of a course should take place in parallel to a corresponding lecture, except if explicitly stated
#include "./hard-constraints/CBCTT-UP-HC0.lp". 

%% HC 1: One availability for each course must be assigned to a time slot and room
#include "./hard-constraints/CBCTT-UP-HC1.lp". 

%% HC 2: Obligatory lectures of the same cohort must be all scheduled in different time slots 
#include "./hard-constraints/CBCTT-UP-HC2.lp". 

%% HC 3: RoomOccupancy: Two courses cannot take place in the same room and time slot, except explicitly stated
#include "./hard-constraints/CBCTT-UP-HC3.lp". 

%% HC 4: Lecturer: Courses sharing a lecturer cannot be scheduled at the same time slot, except explicitly stated
#include "./hard-constraints/CBCTT-UP-HC4.lp". 

%% HC 5: NotParallel: Avoiding two courses to take place at the same time slot, whenever explicitly stated
#include "./hard-constraints/CBCTT-UP-HC5.lp". 

%% HC 6: Parallel: Two courses have to take place at the same time slot, whenever explicitly stated
#include "./hard-constraints/CBCTT-UP-HC6.lp". 

%% HC 7: Simultaneous: Two courses have to take place at the same time slot and room, whenever explicitly stated
#include "./hard-constraints/CBCTT-UP-HC7.lp". 

%% HC 8: Consecutive: Two courses have to be scheduled in consecutive time slots, whenever explicitly stated
#include "./hard-constraints/CBCTT-UP-HC8.lp". 

:- conflict(_,_). 


%%%% soft constraints %%%%

%% SC 0: Priorities: For each course, try to serve priorities on time slot and room
#include "./soft-constraints/CBCTT-UP-SC0.lp". 

%% SC 1: RoomCapacity: For each course, penalty points for the number of students that are expect to attend the course minus the number of seats in the corresponding room are imposed on each violation
#include "./soft-constraints/CBCTT-UP-SC1.lp". 

%% SC 2: Cohort: Courses addressed to the same cohort should be scheduled in different time slots, except explicitly stated to be in parallel
#include "./soft-constraints/CBCTT-UP-SC2.lp". 

%% SC 3: Gaps: For a cohort as well as lecturer, corresponding courses should be scheduled in time slots as close as possible. The penalty regarding two courses sharing a cohort or lecturer, and a day is given by subtracting the earlier time from the later time
#include "./soft-constraints/CBCTT-UP-SC3.lp". 

%% SC 4: RoomStability: Two courses stated to be consecutive should be given in the same room. The penalty points, reflecting each violation
#include "./soft-constraints/CBCTT-UP-SC4.lp". 

%% SC 5: MaxLoad: For a cohort as well as lecturer the number of corresponding courses per day should be below or equal to a given maximum. The penalty points reflecting the number of courses above the maximum
#include "./soft-constraints/CBCTT-UP-SC5.lp". 

%% SC 6: TravelTime: For a cohort as well as a lecturer, traveling time between rooms with two adjacent courses should be as small as possible. The penalty is reflected by the traveling time itself
#include "./soft-constraints/CBCTT-UP-SC6.lp". 

%% SC 7: RoomSuitability: Try to respect preferred equipment large board. Each violation counts as a penalty point
#include "./soft-constraints/CBCTT-UP-SC7.lp". 

%% SC 8: RoomSuitability: Try to respect preferred equipment projector. Each violation counts as a penalty point
#include "./soft-constraints/CBCTT-UP-SC8.lp". 

%% SC 9: RoomSuitability: Try to respect preferred equipment computer Each violation counts as a penalty point
#include "./soft-constraints/CBCTT-UP-SC9.lp". 

%% SC 10: RoomSuitability: Try to respect preferred equipment microphone. Each violation counts as a penalty point
#include "./soft-constraints/CBCTT-UP-SC10.lp". 

%% SC 11: RoomSuitability: Try to respect preferred equipment camera. Each violation counts as a penalty point
#include "./soft-constraints/CBCTT-UP-SC11.lp".

%% SC 12: RoomSuitability: Try to respect preferred equipment media_table. Each violation counts as a penalty point
#include "./soft-constraints/CBCTT-UP-SC12.lp".

%% SC 13: RoomSuitability: Try to respect preferred equipment whiteboard. Each violation counts as a penalty point
#include "./soft-constraints/CBCTT-UP-SC13.lp".


%%%% optimization %%%%

#minimize{Penalty @ Level, Penalty_Type, Objects : penalty(Penalty_Type, Objects, Penalty), level(Penalty_Type, Level)}.


%%%% show statements %%%%

#show.
#show book(ID, Name, Type, Room, Day, Time, Priority) : book(ID, (Name, Type)), availability_room(ID, Room), availability_day(ID, Day), availability_time(ID, Time), availability_priority(ID, Priority).
#show penalty/3. 
#show conflict/2.
