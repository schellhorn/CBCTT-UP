% room(Room). 
% room_capacity(Room, Capacity).
% room_large_board(Room).
% room_mic(Room). 
% room_cam(Room). 
% room_projector(Room). 
% room_pc(Room). 
% room_media_table(Room). 
% room_whiteboard(Room). 
% room_traveling(Room1, Room2, TravelingTime). %% TODO geowissenschaften bereits daten? (https://www.uni-potsdam.de/en/geo/institute/location-maps)
%% TODO: room format change? Room="2.70.0.08" to Room=(2,70,"0.08")???
%% room_traveling((C,B,R1),(C,B,R2),0) :- room((C,B,R1)), room((C,B,R2)).
%% room_traveling((C,B,R1),(C,B,R2),0) :- room((C1,B1,R1)), room((C2,B2,R2)), building_traveling(...), campus_traveling(C1, C2, T).
     
room("2.70.0.01").    
room("2.70.0.05").         
room("2.70.0.08"). 
room("2.70.0.09").      
room("2.70.0.10").   
room("2.70.0.11").
room("2.24.0.29").      
room("2.14.0.47").      
room("2.05.1.06").     
room("2.09.1.22").      
room("2.09.0.17").      
room("2.09.0.14").      
room("2.09.0.13").      
room("2.09.0.12").        
room("2.28.0.108").       
room("2.27.1.01").    
room("2.27.0.01").      
room("2.25.F1.01").     
room("2.25.F0.01").         
room("2.12.0.01").   

room_capacity("2.24.0.29", 20).  
room_capacity("2.70.0.09", 36).  
room_capacity("2.70.0.08", 36).    
room_capacity("2.70.0.05", 24).    
room_capacity("2.14.0.47", 224).  
room_capacity("2.05.1.06", 49).   
room_capacity("2.09.1.22", 18).  
room_capacity("2.09.0.17", 18).  
room_capacity("2.09.0.14", 24).  
room_capacity("2.09.0.13", 24).  
room_capacity("2.09.0.12", 28).    
room_capacity("2.70.0.11", 60).  
room_capacity("2.70.0.10", 48). 
room_capacity("2.70.0.01", 64).   
room_capacity("2.28.0.108", 99). 
room_capacity("2.27.1.01", 250).    
room_capacity("2.27.0.01", 190).   
room_capacity("2.25.F1.01", 100).  
room_capacity("2.25.F0.01", 150).  
room_capacity("2.12.0.01", 246).   

room_large_board("2.24.0.29").    
room_large_board("2.14.0.47").    
room_large_board("2.05.1.06").    
room_large_board("2.09.1.22").    
room_large_board("2.09.0.17").    
room_large_board("2.09.0.14").    
room_large_board("2.09.0.13").    
room_large_board("2.09.0.12").    
room_large_board("2.28.0.108").    
room_large_board("2.27.1.01").    
room_large_board("2.27.0.01").    
room_large_board("2.25.F1.01").    
room_large_board("2.25.F0.01").    
room_large_board("2.12.0.01").

room_mic("2.70.0.01").    
room_mic("2.70.0.05").         
room_mic("2.70.0.08"). 
room_mic("2.70.0.09").      
room_mic("2.70.0.10").   
room_mic("2.70.0.11").
room_mic("2.14.0.47").    
room_mic("2.28.0.108").    
room_mic("2.27.1.01").    
room_mic("2.27.0.01").    
room_mic("2.25.F1.01").    
room_mic("2.25.F0.01").    
room_mic("2.12.0.01"). 
room_cam("2.70.0.01").       
room_cam("2.70.0.10").   
room_cam("2.70.0.11").

room_projector("2.70.0.01").    
room_projector("2.70.0.05").         
room_projector("2.70.0.08"). 
room_projector("2.70.0.09").      
room_projector("2.70.0.10").   
room_projector("2.70.0.11").
room_projector("2.14.0.47").    
room_projector("2.28.0.108").    
room_projector("2.27.1.01").    
room_projector("2.27.0.01").    
room_projector("2.25.F1.01").    
room_projector("2.25.F0.01").    
room_projector("2.12.0.01"). 

room_pc("2.70.0.01").    
room_pc("2.70.0.05").  

room_media_table("2.70.0.01").    
room_media_table("2.70.0.05").         
room_media_table("2.70.0.08"). 
room_media_table("2.70.0.09").      
room_media_table("2.70.0.10").   
room_media_table("2.70.0.11").
room_media_table("2.14.0.47").    
room_media_table("2.28.0.108").    
room_media_table("2.27.1.01").    
room_media_table("2.27.0.01").    
room_media_table("2.25.F1.01").    
room_media_table("2.25.F0.01").    
room_media_table("2.12.0.01"). 

room_whiteboard("2.70.0.01").    
room_whiteboard("2.70.0.05").         
room_whiteboard("2.70.0.08"). 
room_whiteboard("2.70.0.09").      
room_whiteboard("2.70.0.10").   
room_whiteboard("2.70.0.11"). 

room_traveling("2.70.0.01", "2.70.0.05", 0).
room_traveling("2.70.0.01", "2.70.0.08", 0).
room_traveling("2.70.0.01", "2.70.0.09", 0).
room_traveling("2.70.0.01", "2.70.0.10", 0).
room_traveling("2.70.0.01", "2.70.0.11", 0).
room_traveling("2.70.0.05", "2.70.0.08", 0).
room_traveling("2.70.0.05", "2.70.0.09", 0).
room_traveling("2.70.0.05", "2.70.0.10", 0).
room_traveling("2.70.0.05", "2.70.0.11", 0).
room_traveling("2.70.0.08", "2.70.0.09", 0).
room_traveling("2.70.0.08", "2.70.0.10", 0).
room_traveling("2.70.0.08", "2.70.0.11", 0).
room_traveling("2.70.0.09", "2.70.0.10", 0).
room_traveling("2.70.0.09", "2.70.0.11", 0).
room_traveling("2.70.0.10", "2.70.0.11", 0).
room_traveling("2.25.F1.01", "2.70.0.01", 5).
room_traveling("2.25.F1.01", "2.70.0.05", 5).
room_traveling("2.25.F1.01", "2.70.0.08", 5).
room_traveling("2.25.F1.01", "2.70.0.09", 5).
room_traveling("2.25.F1.01", "2.70.0.10", 5).
room_traveling("2.25.F1.01", "2.70.0.11", 5).
room_traveling("2.25.F0.01", "2.70.0.01", 5).
room_traveling("2.25.F0.01", "2.70.0.05", 5).
room_traveling("2.25.F0.01", "2.70.0.08", 5).
room_traveling("2.25.F0.01", "2.70.0.09", 5).
room_traveling("2.25.F0.01", "2.70.0.10", 5).
room_traveling("2.25.F0.01", "2.70.0.11", 5).
room_traveling("2.25.F0.01", "2.25.F1.01", 0).
room_traveling("2.25.F0.01", "2.28.0.108", 1).
room_traveling("2.25.F1.01", "2.28.0.108", 1).
room_traveling("2.28.0.108", "2.70.0.01", 6).
room_traveling("2.28.0.108", "2.70.0.05", 6).
room_traveling("2.28.0.108", "2.70.0.08", 6).
room_traveling("2.28.0.108", "2.70.0.09", 6).
room_traveling("2.28.0.108", "2.70.0.10", 6).
room_traveling("2.28.0.108", "2.70.0.11", 6).
% bisher Haus 70, Haus 25 und Haus 28 ...
