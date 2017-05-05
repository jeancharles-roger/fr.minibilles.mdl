import ceylon.file {
    current,
    Nil,
    File
}
import ceylon.html {
    Html,
    Body,
    FlowCategory,
    Content,
    Head
}
import ceylon.test {
    fail,
    assertEquals
}

import fr.minibilles.mdl {
    hostMdlScript,
    hostedMdlCss,
    hostedMaterialIconsLink
}

void checkResult(String title, {Content<FlowCategory>*} content, Boolean write = true) {
    print("Test ``title``");
    value result = page(title, content);
    if (write) { toFile(result, title); }
    compare(title, result);
}

Html page(String title, {Content<FlowCategory>*} content) =>
    Html {
        Head {
            title = title;
            hostedMdlCss(), hostMdlScript(), hostedMaterialIconsLink()
        },
        Body { *content }
    };


void compare(String title, Html html) {
    value filename = "expected/" + title + ".html";
    value resource = `module`.resourceByPath(filename);
    if (is Resource resource) {
        assertEquals(html.string, resource.textContent());
    } else {
        fail("Comparison file for ``title`` doesn't exist.");
    }
}

void toFile(Html html, String name) {
    value filePath = current.childPath("test/" + name + ".html");

    value file = switch (resource = filePath.resource)
                    case (is File) resource
                    case (is Nil) resource.createFile(true)
                    else null;

    if (exists file) {
        try (writer = file.Overwriter()) {
            writer.write(html.string);
        }
    } else {
        throw Exception("Can't create file ``filePath.string``");
    }
}
