----- MODULE index ----

EXTENDS Naturals

VARIABLES big, small

TypeOK == /\ small \in 0..3
          /\ big   \in 0..5

Init == /\ big = 0
        /\ small = 0
        
FillSmallJug  == /\ small' = 3
                 /\ big' = big


FillBigJug == /\ small' = small
              /\ big' = 5

Next ==  \/ FillSmallJug
         \/ FillBigJug

Spec == Init /\ [][Next]_<<big, small>>

NotSolved == big # 4

====