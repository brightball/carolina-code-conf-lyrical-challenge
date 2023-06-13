**SQL
**Copyright: Journey 1981
**Author: @Charles B

SELECT "Small Town Girl", "City Boy"
INTO #Dont
FROM lonely_world l
INNER JOIN south_detroit s
WHERE l.midnight_train = s.midnight_train
ORDER BY "Going_Anywhere"

SELECT "Singer", "Wine", "Cheap Perfume"
INTO #Stop
FROM smokey_room
WHERE for_a_smile = share_the_night
GROUP BY "on", "on", "on", "on"

SELECT "Strangers", "Shadows"
INTO #Believin
FROM the_boulevard b
JOIN in_the_night n
WHERE b.waiting > n.searching
ORDER BY "Streetlights", "People"

SELECT *
FROM #Dont, #Stop, #Believin
GROUP By "Journey"
