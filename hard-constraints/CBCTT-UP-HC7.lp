%%% Hard Constraint
%% HC 7: Simultaneous: Two courses have to take place at the same time slot and room, whenever explicitly stated

%% cannot be the case that two courses forced to be simultaneous are not at the same day, time and room 
conflict(simultaneous, ((ID1, Course1), (ID2, Course2))) :- book(ID1, Course1), availability_room(ID1, Room), 
                                                            book(ID2, Course2), not availability_room(ID2, Room), 
                                                            simultaneous(Course1, Course2). 