import ceylon.test {
    test
}

import fr.minibilles.mdl {
    Button,
    Dialog,
    DialogButton
}

test shared void dialog1() =>
    checkResult("dialog1", {
        Button{ "Dialog"},
        Dialog {
            dialogTitle = {"Dialog 1"};
            actions = { DialogButton {close=true; "Close"} };
            "A dialog box"
        }
    });
