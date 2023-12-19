%%% Soft Constraint
%% SC 4: RoomStability: Two courses stated to be consecutive should be given in the same room. The penalty points, reflecting each violation

%% track consecutive courses that are not in same room
penalty(consecutive, ((ID1, Course1), (ID2, Course2)), 1) :- book(ID1, Course1), availability_day(ID1, Day), availability_room(ID1, Room1),  
                                                             book(ID2, Course2), availability_day(ID2, Day), availability_room(ID2, Room2), 
                                                             consecutive(Course1, Course2), Room1 != Room2. 