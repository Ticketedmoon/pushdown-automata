-- 3 states you can be in
-- However! there must be the same number of a's as b's
-- or the same number of a's as c's
-- reading input a, if no a move to b
-- reading input b, if no b move to c
-- reading input c, if no c, you're done,

ijk = (0, [3, 7], [
                ((0, "", ""), (1, "#")),
                ((1, "a", ""), (1, "a")),
                ((1, "", ""), (2, "")),
                ((2, "b", "a"), (2, "")),
                ((2, "", "#"), (3, "")),
                ((3, "c", ""), (3, "")),
                ------------------------
                ((0, "", ""), (4, "#")),
                ((4, "a", ""), (4, "a")),
                ((4, "b", ""), (5, "")),
                ((5, "b", ""), (5, "")),
                ((5, "", ""), (6, "")),
                ((6, "c", "a"), (6, "")),
                ((6, "", "#"), (7, ""))
               ])
