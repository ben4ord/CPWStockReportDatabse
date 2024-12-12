INSERT INTO body_of_water
values(1,"Blue Mesa Reservoir","Gunnison",341,"2024-10-11",7519,38.4703,-107.2204),
(2,"Elevenmile Reservior","Park",109,"2024-1-25",38.95,-105.55),
(3,"Antero Reservior","Park",15,"2022-12-25",38.59,-105.5356),
(4,"Spinney Mountain Reservior","Park",60,"2024-11-22",38.98,-105.64),
(5,"Arkansas River #3B","Chaffee",12,"2024-11-01",38.923,-106.1699),
(6,"Gunnison River","Gunnison",10,"2024-11-4",38.531,-106.949),
(7,"Mergleman Pond","Gunnison",10,"2022-8-5",38.530,-106.946),
(8,"Erie Lake","Erie",14,"2024-10-11",38.95,-105.55),
(9,"Standley Lake","Westminster",96,"2024-5-20",39.863,-105.124),
(10,"Douglas Reservior","Larimer",30,"2024-11-22",40.7015,-105.081),
(11,"Cherry Creek Reservoir","Arapahoe",32,"2024-11-01",39.6405, -104.858),
(12,"Grand Lake","Grand",389,"2024-10-11",40.2522,-105.8231),
(13,"Lake Isabel","Pueblo",185,"2024-08-28",37.9844,-105.0525),
(14,"Blue Lake","Bent",253,"2024-06-12",38.95,-105.55),
(15,"Irwin Lake","Gunnison",45,"2024-08-12",38.8801,-107.1049);

ALTER table fish
MODIFY waterType varchar(15) NOT NULL;

INSERT INTO fish
VALUES (1,"Rainbow Trout",4,"North ","Fresh","Lakes and Rivers"),
(2,"Brown Trout",5,"Europe and Asia","Fresh","Lakes and Rivers"),
(3,"Brook Trout",3,"North America","Fresh","Lakes and Rivers"),
(4,"Lake Trout",5,"North America","Fresh","Lakes and Rivers"),
(5,"Kokanee Salmon",2,"North Pacific Ocean","Fresh and Salt","Lakes, Rivers, and Oceans"),
(6,"Sockeye Salmon",2,"North America","Fresh","Lakes and Rivers"),
(7,"Cutthroat Trout",6,"North America Pacific Coast","Fresh","Lakes and Rivers"),
(8,"Bull Trout",8,"North America","Fresh","Lakes and Rivers"),
(9,"Rainbow Trout",4,"North America","Fresh","Lakes and Rivers"),
(10,"Rainbow Trout",4,"North America","Fresh","Lakes and Rivers"),
(11,"Greenback Cutthroat Trout",4,"Colorado and Wyoming","Fresh","Lakes and Rivers"),
(12,"Colorado River Cutthroat Trout",6,"Colorado","Fresh","Lakes and Rivers"),
(13,"Northern Pike",12,"North America and Asia","Fresh","Lakes and Rivers"),
(14,"Muskie",12,"North America","Fresh","Lakes and Rivers"),
(15,"Great White Sharks",24,"All Oceans","Salt","Oceans");