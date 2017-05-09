import ceylon.html {
    THead,
    Tr,
    Th,
    TBody,
    Td
}
import ceylon.test {
    test
}

import fr.minibilles.mdl {
    Table
}

test shared void tables() =>
    checkResult("tables", {
        Table {
            THead {
                Tr {
                    Th { "Material" },  Th { "Quantity" }, Th { "Unit price" }
                }
            },
            TBody {
                Tr { Td { clazz= "mdl-data-table__cell--non-numeric"; "Acrylic (Transparent)"}, Td {"25"}, Td {"2,90€"} },
                Tr { Td { clazz= "mdl-data-table__cell--non-numeric"; "Plywood (Birch)"}, Td {"50"}, Td {"1,25€"} },
                Tr { Td { clazz= "mdl-data-table__cell--non-numeric"; "Laminate (Gold on Blue)"}, Td {"10"}, Td {"2,35€"} }
            }
        },
        Table {
            selectable = true;
            THead {
                Tr {
                    Th { "Material" },  Th { "Quantity" }, Th { "Unit price" }
                }
            },
            TBody {
                Tr { Td { clazz= "mdl-data-table__cell--non-numeric"; "Acrylic (Transparent)"}, Td {"25"}, Td {"2,90€"} },
                Tr { Td { clazz= "mdl-data-table__cell--non-numeric"; "Plywood (Birch)"}, Td {"50"}, Td {"1,25€"} },
                Tr { Td { clazz= "mdl-data-table__cell--non-numeric"; "Laminate (Gold on Blue)"}, Td {"10"}, Td {"2,35€"} }
            }
        }
    });
