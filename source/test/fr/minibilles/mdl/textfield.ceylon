import ceylon.html {
    H3
}
import ceylon.test {
    test
}

import fr.minibilles.mdl {
    TextField
}

test shared void testfields() =>
    checkResult("textfields", {
        H3 { "Simple" },
        TextField { inputId = "field1"; },
        TextField { inputId = "field2"; label = "Field 2"; },
        TextField { inputId = "field3"; label = "Field 3"; content = "default"; },

        H3 { "Floating labels" },
        TextField { inputId = "field4"; floatingLabel = true; label = "Field 4"; },
        TextField { inputId = "field5"; floatingLabel = true; label = "Field 5"; content = "default"; }
    });
