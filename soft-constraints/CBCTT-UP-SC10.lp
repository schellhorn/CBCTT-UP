%%% Soft Constraint
%% SC 10: RoomSuitability: Try to respect preferred equipment microphone. Each violation counts as a penalty point

%% track mic requests are not respected
penalty(mic, (ID, Course), 1) :- book(ID, Course), course_mic(Course), availability_room(ID, Room), not room_mic(Room).