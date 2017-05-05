import ceylon.html {
    Script,
    Link
}

String mdlBowerBase = "/bower_components/material-design-lite/";

shared Link mdlCss(String base, String? theme = null) =>
    let (themePath = if (exists theme) then "." + theme else "")
        Link { rel = "stylesheet"; href = base + "material`` themePath ``.min.css";};

shared Script mdlScript(String base) =>
    Script { src= base + "material.min.js"; };

shared Link hostedMaterialIconsLink() =>
    Link{ rel = "stylesheet"; href = "https://fonts.googleapis.com/icon?family=Material+Icons";};

shared Link bowerMdlCss() => mdlCss(mdlBowerBase);
shared Script bowerMdlScript() => mdlScript(mdlBowerBase);

shared Link hostedMdlCss(String version = "1.3.0", String theme = "indigo-pink") =>
    mdlCss("https://code.getmdl.io/``version``/", theme);

shared Script hostMdlScript(String version = "1.3.0") =>
    mdlScript("https://code.getmdl.io/``version``/");

