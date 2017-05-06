import ceylon.test {
    test
}

import fr.minibilles.mdl {
    Grid,
    GridCell
}

test shared void grid1() =>
    checkResult("grid1", {
        Grid {
            GridCell { "Cell 1 (4)" }, GridCell { "Cell 2 (4)" }, GridCell { "Cell 3 (4)" },
            GridCell { size = 12; "Cell 4 (12)" },
            GridCell { size = 6; "Cell 5 (6)" }, GridCell { size = 6; "Cell 6 (6)" },
            GridCell { size = 1; "Cell 7 (1)" }, GridCell { size = 2; "Cell 8 (2)" }, GridCell { size = 3; "Cell 9 (3)" }, GridCell { size = 6; "Cell 10 (6)" }
        }
    });
