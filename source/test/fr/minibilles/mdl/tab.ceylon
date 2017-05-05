import ceylon.test {
    test
}

import fr.minibilles.mdl {
    Tab,
    TabItem
}

test shared void tab1() =>
    checkResult("tab1", { Tab {
        activeTabId = "tab1";
        for (i in 0..3) TabItem { id="tab``i.string``"; name="Tab ``i.string``";
            "Content" + i.string
        }
    }});

