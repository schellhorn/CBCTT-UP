%%% Soft Constraint
%% SC 7: RoomSuitability: Try to respect preferred equipment large board. Each violation counts as a penalty point

%% track large board requests are not respected
penalty(board, (ID, Course), 1) :- book(ID, Course), course_large_board(Course), availability_room(ID, Room), not room_large_board(Room).