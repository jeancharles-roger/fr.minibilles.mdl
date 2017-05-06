import ceylon.test {
    test
}

import fr.minibilles.mdl {
    Tab,
    TabPanel
}

test shared void tab1() =>
    checkResult("tab1", { Tab {
        activeTabId = "tab1";
        for (i in 0..3) TabPanel { id="tab``i.string``"; name="Tab ``i.string``";
            "Content" + i.string
        }
    }});

