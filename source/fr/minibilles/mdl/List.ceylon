import ceylon.html {
    DropZone,
    FlowCategory,
    Attribute,
    Direction,
    Content,
    Attributes,
    Ul,
    Li,
    PhrasingCategory,
    Span
}

shared class List (
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
    "The attributes associated with this element."
    Attributes attributes = [],
    "The children of this element."
    {Content<ListItem>*} children = []
) extends Ul (
    id,listClazz(clazz),
    accessKey, contentEditable,contextMenu,
    dir, draggable, dropZone,
    hidden, lang, spellcheck,style,
    tabIndex, title, translate,
    attributes, children
) {

}


shared abstract class ItemBody(
    shared String itemClazz,
    shared String contentClazz,
    shared {Content<PhrasingCategory>*} text
) of SubTitle | Description {
}


shared class SubTitle({Content<PhrasingCategory>*} text)
    extends ItemBody("mdl-list__item--two-line", "mdl-list__item-sub-title", text) {
}

shared class Description({Content<PhrasingCategory>*} text)
    extends ItemBody("mdl-list__item--three-line", "mdl-list__item-text-body", text) {
}


shared class ListItem (
    "Materiel design icon for list"
    shared String? icon = null,

    "Other line for item"
    shared ItemBody? body = null,

    "Defines the Action sub-division"
    shared {Content<PhrasingCategory>*}? action = null,

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
    "Attribute indicates the current ordinal value of the list item as defined by the &lt;ol&gt; element. The only allowed value for this attribute is a number, even if the list is displayed with Roman numerals or letters."
    Attribute<Integer> val = null,
    "The attributes associated with this element."
    Attributes attributes = [],
    "The primary of this element."
    {Content<PhrasingCategory>*} item = []
) extends Li (
    id,listItemClazz(clazz, body),
    accessKey, contentEditable,contextMenu,
    dir, draggable, dropZone,
    hidden, lang, spellcheck,style,
    tabIndex, title, translate, val,
    attributes, itemChildren(icon, item, body, action)
) {

}

Attribute<String> listClazz(Attribute<String> clazz) {
    return appendClazz(clazz, ["mdl-list"]);
}

Attribute<String> listItemClazz(Attribute<String> clazz, ItemBody? body) {
    variable [String+] toAdd = ["mdl-list__item"];
    if (exists body) { toAdd = toAdd.withTrailing(body.itemClazz); }
    return appendClazz(clazz, toAdd);
}

{Content<FlowCategory>*} itemChildren(
    String? icon,
    {Content<PhrasingCategory>*} title,
    ItemBody? body,
    {Content<PhrasingCategory>*}? action
) {
    variable [Content<PhrasingCategory>*] primary =
        if (exists icon)
          then [Icon { clazz="mdl-list__item-icon"; name = icon; }, *title ]
          else title.sequence();

    if (exists body) {
        primary = primary.withTrailing(Span {
            clazz = body.contentClazz;
            *body.text
        });
    }

    variable [Content<FlowCategory>*] children = [
        Span {
            clazz = "mdl-list__item-primary-content";
            children = primary;
        }
    ];
    if (exists action) {
        children = children.withTrailing(
            Span {
                clazz = "mdl-list__item-secondary-action";
                *action
            }
        );
    }
    return children;
}
