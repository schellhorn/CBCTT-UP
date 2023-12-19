%%% Soft Constraint
%% SC 6: TravelTime: For a cohort as well as a lecturer, traveling time between rooms with two adjacent courses should be as small as possible. The penalty is reflected by the traveling time itself

%% track traveling time of an actor for two adjacent booked courses 
penalty(traveling, ((ID1, Course1), (ID2, Course2)), TravelingTime) :- book(ID1, Course1), actors(Course1, Actor), availability_room(ID1, Room1), availability_day(ID1, Day), availability_time(ID1, Time1), 
                                                                       book(ID2, Course2), actors(Course2, Actor), availability_room(ID2, Room2), availability_day(ID2, Day), availability_time(ID2, Time1 + 2), 
                                                                       room_traveling(Room1, Room2, TravelingTime), Course1 != Course2, TravelingTime > 0. 