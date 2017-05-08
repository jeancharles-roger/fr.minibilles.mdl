import ceylon.test {
    test
}

import fr.minibilles.mdl {
    Checkbox
}

test shared void checkboxes() =>
    checkResult("checkboxes", {
        Checkbox{ inputId = "box1"; "Checkbox 1" },
        Checkbox{ inputId = "box2"; rippleEffect = true; "Checkbox 2" }
    });
