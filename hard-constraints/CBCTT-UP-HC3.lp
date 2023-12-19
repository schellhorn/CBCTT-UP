%%% Hard Constraint
%% HC 3: RoomOccupancy: Two courses cannot take place in the same room and time slot, except explicitly stated

%% cannot be the case that two different courses are in the same room at same time (except they are allowed to do so)
conflict(room, ((ID1, Course1), (ID2, Course2))) :- book(ID1, Course1), availability_room(ID1, Room), availability_day(ID1, Day), availability_time(ID1, Time), 
                                                    book(ID2, Course2), availability_room(ID2, Room), availability_day(ID2, Day), availability_time(ID2, Time), 
                                                    not simultaneous(Course1, Course2), Course1 < Course2.