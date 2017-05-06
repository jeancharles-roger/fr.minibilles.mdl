import ceylon.html {
    H3
}
import ceylon.test {
    test
}

import fr.minibilles.mdl {
    Slider
}

test shared void sliders() =>
    checkResult("sliders", {
        H3 { "Sliders" },
        Slider {},
        Slider { min = 0; max = 100; val = 50; step = 5; }
    });
