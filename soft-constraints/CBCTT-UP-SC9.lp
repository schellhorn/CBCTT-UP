%%% Soft Constraint
%% SC 9: RoomSuitability: Try to respect preferred equipment computer Each violation counts as a penalty point

%% track pc requests are not respected
penalty(pc, (ID, Course), 1) :- book(ID, Course), course_pc(Course), availability_room(ID, Room), not room_pc(Room).