import ceylon.html {
    H3
}
import ceylon.test {
    test
}

import fr.minibilles.mdl {
    Button,
    fab,
    minifab,
    Icon,
    IconKind,
    primary,
    accent
}

test shared void buttons() =>
    checkResult("buttons", {
        H3 { "Raised" },
        Button{ "Button1"},
        Button {color=primary; "Button2"},
        Button {color=accent; "Button3"},

        H3 { "Fab" },
        Button{ kind=fab; Icon{name="star";} },
        Button{ kind=fab; color=primary; Icon{name="star";} },
        Button{ kind=fab; color=accent; Icon{name="star";} },

        H3 { "Icon" },
        Button{ kind=IconKind("person"); },
        Button{ color=primary; kind=IconKind("person"); },
        Button{ color=accent; kind=IconKind("person"); },

        H3 { "MiniFan" },
        Button{ kind=minifab; Icon{name="add";}},
        Button{ kind=minifab; color=primary; Icon{name="add";}},
        Button{ kind=minifab; color=accent; Icon{name="add";}}
    });
