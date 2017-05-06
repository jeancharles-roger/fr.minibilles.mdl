import ceylon.html {
    H3
}
import ceylon.test {
    test
}

import fr.minibilles.mdl {
    TextField, TextFieldValidation
}

test shared void testfields() =>
    checkResult("textfields", {
        H3 { "Simple" },
        TextField { inputId = "field1"; },
        TextField { inputId = "field2"; label = "Field 2"; },
        TextField { inputId = "field3"; label = "Field 3"; content = "default"; },

        H3 { "Floating labels" },
        TextField { inputId = "field4"; floatingLabel = true; label = "Field 4"; },
        TextField { inputId = "field5"; floatingLabel = true; label = "Field 5"; content = "default"; },

        H3 { "Validation" },
        TextField {
            inputId = "field5"; label = "Number";
            validation = TextFieldValidation("-?[0-9]*(\\.[0-9]+)?", "Input is not a number !");
        },
        TextField {
            inputId = "field6"; label = "Foobar";
            validation = TextFieldValidation("foobar", "Input is not a 'foobar' !");
        },
        TextField {
            inputId = "field7"; label = "Foobar";
            validation = TextFieldValidation("foobar", "Input is not a 'foobar' !", true);
        },

        H3 { "Expandable" },
        TextField {
            expandIconName = "search";
            inputId = "field8"; label = "Search";
        },
        TextField {
            expandIconName = "star"; inputId = "field9t "; label = "Foobar";
            validation = TextFieldValidation("foobar", "Input is not a 'foobar' !");
        }


    });
