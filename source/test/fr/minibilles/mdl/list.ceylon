import ceylon.test {
    test
}

import fr.minibilles.mdl {
    List,
    ListItem,
    SubTitle,
    Description,
    Button,
    IconKind
}

test shared void listBasic1() =>
    checkResult("listBasic1", { List {
        for (i in 0..10) ListItem { icon="face"; "Item ``i.string``"}
    }});


test shared void listBasic2() =>
    checkResult("listBasic2", { List {
        ListItem { icon="person"; body = SubTitle {"Sub title 1"}; "Item 1" },
        ListItem {
            icon="copyright";
            body = Description{
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                 Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                 Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
            };
            "Item 2"
        },
        ListItem { icon="face"; action = {Button {kind = IconKind("star");}}; "Item 3"}
    }});
