import ceylon.html {
    DropZone,
    Attribute,
    Direction,
    Content,
    Attributes,
    HtmlButton=Button,
    PhrasingCategory,
    FormEnctype,
    FormMethod,
    FormTarget,
    ButtonType
}

shared abstract class ButtonKind(shared {String+} tag) of raised | fab | minifab | IconKind {
}

shared object raised extends ButtonKind({"mdl-button--raised"}) {
}

"Applies fab (circular) display effect"
shared object fab extends ButtonKind({"mdl-button--fab"}) {
}

"Applies mini-fab (small fab circular) display effect"
shared object minifab extends ButtonKind({"mdl-button--fab", "mdl-button--mini-fab"}) {
}

"Applies icon (small plain circular) display effect"
shared class IconKind(shared String name) extends ButtonKind({"mdl-button--icon"}) {
}

shared abstract class ButtonColor(shared String tag) of primary | accent {
}

shared object primary extends ButtonColor("mdl-button--primary") {
}

shared object accent extends ButtonColor("mdl-button--accent") {
}

shared class Button (
    "Button kind"
    shared ButtonKind kind = raised,

    "Applies primary color display effect"
    shared ButtonColor? color = null,

    "Applies ripple click effect"
    shared Boolean rippleEffect = false,

    /* GLOBAL ATTRIBUTES - BEGIN */
    "Attribute defines a unique identifier (ID) which must be unique in the whole document. Its purpose is to identify the element when linking (using a fragment identifier), scripting, or styling (with CSS)."
    Attribute<String> id = null,
    "Attribute defines a space-separated list of the classes of the element. Classes allows CSS and JavaScript to select and access specific elements via the class selectors."
    Attribute<String> clazz = null,
    "Attribute provides a hint for generating a keyboard shortcut for the current element. This attribute consists of a space-separated list of characters. The browser should use the first one that exists on the computer keyboard layout."
    Attribute<String> accessKey = null,
    "Attribute indicates if the element should be editable by the user. If so, the browser modifies its widget to allow editing."
    Attribute<Boolean> contentEditable = null,
    "Attribute defines id of an menu element to use as the contextual menu for this element"
    Attribute<String> contextMenu = null,
    "Attribute indicates the directionality of the element's text."
    Attribute<Direction> dir = null,
    "Attribute indicates whether the element can be dragged."
    Attribute<Boolean> draggable = null,
    "Attribute indicates what types of content can be dropped on an element."
    Attribute<DropZone> dropZone = null,
    "Attribute indicates that the element is not yet, or is no longer, relevant. For example, it can be used to hide elements of the page that can't be used until the login process has been completed. The browser won't render such elements. This attribute must not be used to hide content that could legitimately be shown."
    Attribute<Boolean> hidden = null,
    "Attribute specifies the primary language for the element's contents and for any of the element's attributes that contain text. Its value must be a valid BCP 47 language tag, or the empty string. Setting the attribute to the empty string indicates that the primary language is unknown."
    Attribute<String> lang = null,
    "Attribute defines whether the element may be checked for spelling errors."
    Attribute<Boolean> spellcheck = null,
    "Attribute contains CSS styling declarations to be applied to the element. Note that it is recommended for styles to be defined in a separate file or files."
    Attribute<String> style = null,
    "Attribute indicates if the element can take input focus (is focusable), if it should participate to sequential keyboard navigation, and if so, at what position."
    Attribute<Integer> tabIndex = null,
    "Attribute contains a text representing advisory information related to the element it belongs to. Such information can typically, but not necessarily, be presented to the user as a tooltip."
    Attribute<String> title = null,
    "Attribute that is used to specify whether an element's attribute values and the values of its text node children are to be translated when the page is localized, or whether to leave them unchanged."
    Attribute<Boolean> translate = null,
    /* GLOBAL ATTRIBUTES - END */
    "Attribute lets you specify that the button should have input focus when the page loads, unless the user overrides it, for example by typing in a different control. Only one form-associated element in a document can have this attribute specified."
    Attribute<Boolean> autofocus = null,
    "Attribute indicates that the user cannot interact with the button. If this attribute is not specified, the button inherits its setting from the containing element."
    Attribute<Boolean> disabled = null,
    "Attribute specifies the form element that the button is associated with (its form owner)."
    Attribute<String> form = null,
    "Attribute specifies the URI of a program that processes the information submitted by the button. If specified, it overrides the action attribute of the button's form owner."
    Attribute<String> formaction = null,
    "Attribute specifies the type of content that is used to submit the form to the server."
    Attribute<String>|Attribute<FormEnctype> formenctype = null,
    "Attribute specifies the HTTP method that the browser uses to submit the form."
    Attribute<String>|Attribute<FormMethod> formmethod = null,
    "Attribute specifies that the form is not to be validated when it is submitted. If this attribute is specified, it overrides the novalidate attribute of the button's form owner."
    Attribute<Boolean> formnovalidate = null,
    "Attribute is a name or keyword indicating where to display the response that is received after submitting the form. This is a name of, or keyword for, a browsing context (for example, tab, window, or inline frame)."
    Attribute<String>|Attribute<FormTarget> formtarget = null,
    "Attribute represents the name of the button, which is submitted with the form data."
    Attribute<String> name = null,
    "Attribute represents the type of the button."
    Attribute<ButtonType> type = null,
    "Attribute specifies the initial value of the button."
    Attribute<String> val = null,
    "The attributes associated with this element."
    Attributes attributes = [],
    "The children of this element."
    {Content<PhrasingCategory>*} children = []
) extends HtmlButton (
    id, buttonClazz(clazz, kind, color, rippleEffect),
    accessKey, contentEditable, contextMenu, dir, draggable, dropZone,
    hidden, lang, spellcheck, style, tabIndex, title, translate, autofocus,
    disabled, form, formaction, formenctype, formmethod, formnovalidate, formtarget,
    name, type, val, attributes, if (is IconKind kind) then {kind.name} else children
) {

}

Attribute<String> buttonClazz(
        Attribute<String> clazz, ButtonKind kind,
        ButtonColor? color, Boolean rippleEffect
) {
    variable [String+] toAdd = ["mdl-button", "mdl-js-button", *kind.tag];
    if (exists color) { toAdd = toAdd.withTrailing(color.tag); }
    if (rippleEffect) { toAdd = toAdd.withTrailing("mdl-js-ripple-effect"); }
    if (is IconKind kind) { toAdd = toAdd.withTrailing("material-icons"); }
    return appendClazz(clazz, toAdd);
}
