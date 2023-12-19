%%% Soft Constraint
%% SC 11: RoomSuitability: Try to respect preferred equipment camera. Each violation counts as a penalty point

%% track cam requests are not respected
penalty(cam, (ID, Course), 1) :- book(ID, Course), course_cam(Course), availability_room(ID, Room), not room_cam(Room).