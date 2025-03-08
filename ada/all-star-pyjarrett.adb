--  I ain't the sharpest tool in the shed
(for some Tool of Shed => Me.Sharpness < Tool.Sharpness)


--  Well, the years start comin' and they don't stop comin'
type Years is new Positive 
    with Dynamic_Predicate => Should_Stop (Years);
function Should_Stop (Y : Years) return Boolean is (False);


--  Fed to the rules and I hit the ground runnin'
type I is private
   with Default_Initial_Condition =>
      Fed_To_Rules (I) = True and then Hit_Ground_Running (I) = True;


--  Didn't make sense not to live for fun
pragma Assert (Live_For_Fun /= False);


--  You'll never know if you don't go
--  You'll never shine if you don't glow
if Go then
   Know;
end if;
if Glow then
   Shine;
end if;


--  Only shootin' stars break the mold
<<Mold>> loop
    exit when Shooting_Star;
end loop;


-- You're bundled up now, wait 'til you get older
task You is end You;
task body You is
   Bundle_Up;
   delay Older;
end You;

