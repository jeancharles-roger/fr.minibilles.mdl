import ceylon.html {
    H3
}
import ceylon.test {
    test
}

import fr.minibilles.mdl {
    Progress,
    Spinner,
    Grid,
    GridCell
}

test shared void loading() =>
    checkResult("loading", {
        H3 { "Progress" },
        Grid {
            GridCell { Progress { id = "p1"; } },
            GridCell { Progress { id = "p2"; indeterminate = true; } }
        },

        H3 { "Spinner" },
        Grid {
            GridCell { size = 2; Spinner { id = "s1"; } },
            GridCell { size = 2; Spinner { id = "s2"; active = false; } },
            GridCell { size = 2; Spinner { id = "s3"; singleColor = true; } }
        }

    });
