%%% Soft Constraint
%% SC 8: RoomSuitability: Try to respect preferred equipment projector. Each violation counts as a penalty point

%% track projector requests are not respected
penalty(projector, (ID, Course), 1) :- book(ID, Course), course_projector(Course), availability_room(ID, Room), not room_projector(Room).