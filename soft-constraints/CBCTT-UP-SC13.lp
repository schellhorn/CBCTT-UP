%%% Soft Constraint
%% SC 13: RoomSuitability: Try to respect preferred equipment whiteboard. Each violation counts as a penalty point

%% track whiteboard requests are not respected
penalty(whiteboard, (ID, Course), 1) :- book(ID, Course), course_whiteboard(Course), availability_room(ID, Room), not room_whiteboard(Room).