%%% Soft Constraint
%% SC 1: RoomCapacity: For each course, penalty points for the number of students that are expect to attend the course minus the number of seats in the corresponding room are imposed on each violation

%% track difference of a booked course into a too small room
penalty(capacity, (ID, Course), Size-Capacity) :- book(ID, Course), course_size(Course, Size), availability_room(ID, Room), room_capacity(Room, Capacity), Size > Capacity.