%%% Soft Constraint
%% SC 12: RoomSuitability: Try to respect preferred equipment media_table. Each violation counts as a penalty point

%% track media table requests are not respected
penalty(media_table, (ID, Course), 1) :- book(ID, Course), course_media_table(Course), availability_room(ID, Room), not room_media_table(Room).