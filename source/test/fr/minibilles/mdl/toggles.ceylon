import ceylon.test {
    test
}

import fr.minibilles.mdl {
    Checkbox,
    RadioGroup,
    RadioButton,
    IconToggle,
    Grid,
    GridCell,
    Switch
}

test shared void checkboxes() =>
    checkResult("checkboxes", {
        Checkbox{ inputId = "box1"; "Checkbox 1" },
        Checkbox{ inputId = "box2"; rippleEffect = true; "Checkbox 2" }
    });


test shared void radiobuttons() =>
    checkResult("radiobuttons",{
        let (value group = RadioGroup("group1")) Grid {
            GridCell { RadioButton { group = group; inputId = "option1"; val = "1"; checked = true; "Option1" } },
            GridCell { RadioButton { group = group; inputId = "option2"; val = "2"; "Option2" } },
            GridCell { RadioButton { group = group; inputId = "option3"; val = "3"; "Option3" } }
        },
        let (value group = RadioGroup("group2")) Grid {
            GridCell { RadioButton { group = group; inputId = "option4"; val = "1"; checked = true; rippleEffect = true; "Option1" } },
            GridCell { RadioButton { group = group; inputId = "option5"; val = "2"; rippleEffect = true; "Option2" } },
            GridCell { RadioButton { group = group; inputId = "option6"; val = "3"; rippleEffect = true; "Option3" } }
        }
    });

test shared void iconToggles() =>
    checkResult("icontoggles", {
        IconToggle("format_bold", "bold"),
        IconToggle("format_italic", "italic", true, true)
    });

test shared void switches() =>
    checkResult("switches", {
        Switch("switch1"),
        Switch("switch2", true, true)
    });
