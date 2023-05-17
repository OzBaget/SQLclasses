SELECT BUILDING.IDB, BUILDING.NAME_OF_BUILDING,
       BUILDING.AMOUNTOFLOORS, BUILDING.CAMPUS_ID
FROM (SELECT FLOOR_ID FROM
ROOMFORSTUDENTS NATURAL JOIN
(SELECT DHASSID.EXAM_ROOM.ROOM_ID, DHASSID.EXAM.DEP_ID
FROM DHASSID.EXAM_ROOM NATURAL JOIN DHASSID.EXAM
WHERE DEP_ID = 1))
NATURAL JOIN FLOOR
INNER JOIN BUILDING ON BUILDING.IDB = FLOOR.BUILDING_ID
