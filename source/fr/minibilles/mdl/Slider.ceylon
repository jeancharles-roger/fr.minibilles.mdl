import ceylon.html {
    DropZone,
    Attribute,
    Direction,
    Attributes,
    FormEnctype,
    FormMethod,
    FormTarget,
    Input,
    InputType,
    InputMode
}

shared class Slider (
    "The initial value of the control"
    Attribute<Integer> val = null,

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
    "If the value of the type attribute is file, this attribute indicates the types of files that the server accepts; otherwise it is ignored. The value must be a comma-separated list of unique content type specifiers."
    Attribute<String> accept = null,
    "Attribute indicates whether the value of the control can be automatically completed by the browser."
    Attribute<Boolean>|Attribute<String> autocomplete = null,
    "Attribute lets you specify that the button should have input focus when the page loads, unless the user overrides it, for example by typing in a different control. Only one form-associated element in a document can have this attribute specified."
    Attribute<Boolean> autofocus = null,
    "Attribute should be defined as a unique value. If the value of the type attribute is search, previous search term values will persist in the dropdown across page load."
    Attribute<Boolean> autosave = null,
    "Attribute indicates that the control is selected by default for radio or checkbox."
    Attribute<Boolean> checked = null,
    "Attribute indicates that the form control is not available for interaction."
    Attribute<Boolean> disabled = null,
    "Attribute specifies the form element that the input is associated with (its form owner)."
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
    "If the value of the type attribute is image, this attribute defines the height of the image displayed for the button."
    Attribute<Integer> height = null,
    "A hint to the browser for which keyboard to display. This attribute applies when the value of the type attribute is text, password, email, or url."
    Attribute<InputMode>|Attribute<String> inputmode = null,
    "Identifies a list of pre-defined options to suggest to the user. The value must be the id of a datalist element in the same document. The browser displays only options that are valid values for this input element. This attribute is ignored when the type attribute's value is hidden, checkbox, radio, file, or a button type."
    Attribute<String> list = null,
    "The maximum (numeric or date-time) value for this item, which must not be less than its minimum value."
    Attribute<String>|Attribute<Integer> max = null,
    "If the value of the type attribute is text, email, search, password, tel, or url, this attribute specifies the maximum number of characters that the user can enter, for other control types, it is ignored."
    Attribute<Integer> maxlength = null,
    "The minimum (numeric or date-time) value for this item, which must not be greater than its maximum value."
    Attribute<String>|Attribute<Integer> min = null,
    "If the value of the type attribute is text, email, search, password, tel, or url, this attribute specifies the minimum number of characters that the user can enter, for other control types, it is ignored."
    Attribute<Integer> minlength = null,
    "Attribute indicates whether the user can enter more than one value. This attribute applies when the type attribute is set to email or file; otherwise it is ignored."
    Attribute<Boolean> multiple = null,
    "Attribute represents the name of the button, which is submitted with the form data."
    Attribute<String> name = null,
    "A regular expression that the control's value is checked against. The pattern must match the entire value, not just some subset."
    Attribute<String> pattern = null,
    "A hint to the user of what can be entered in the control. The placeholder text must not contain carriage returns or line-feeds. This attribute applies when the value of the type attribute is text, search, tel, url or email; otherwise it is ignored."
    Attribute<String> placeholder = null,
    "Attribute indicates that the user cannot modify the value of the control. It is ignored if the value of the type attribute is hidden, range, color, checkbox, radio, file, or a button type."
    Attribute<Boolean> readonly = null,
    "Attribute specifies that the user must fill in a value before submitting a form. It cannot be used when the type attribute is hidden, image, or a button type."
    Attribute<Boolean> required = null,
    "The initial size of the control. This value is in pixels unless the value of the type attribute is text or password, in which case, it is an integer number of characters."
    Attribute<Integer> size = null,
    "If the value of the type attribute is image, this attribute specifies a URI for the location of an image to display on the graphical submit button; otherwise it is ignored."
    Attribute<String> src = null,
    "Works with the min and max attributes to limit the increments at which a numeric or date-time value can be set. It can be the string any or a positive floating point number. If this attribute is not set to any, the control accepts only values at multiples of the step value greater than the minimum."
    Attribute<String>|Attribute<Integer> step = null,
    "If the value of the type attribute is image, this attribute defines the width of the image displayed for the button."
    Attribute<Integer> width = null,
    "The attributes associated with this element."
    Attributes attributes = []
) extends Input (
    id, sliderClazz(clazz),
    accessKey, contentEditable, contextMenu, dir, draggable, dropZone,
    hidden, lang, spellcheck, style, tabIndex, title, translate, InputType.range,
    accept, autocomplete, autofocus, autosave, checked, disabled, form,
    formaction, formenctype, formmethod, formnovalidate, formtarget, height,
    inputmode, list, max, maxlength, min, minlength, multiple, name, pattern,
    placeholder, readonly, required, size, src, step, toStringAttribute(val) , width, attributes
) {

}

Attribute<String> sliderClazz(Attribute<String> clazz) {
    return appendClazz(clazz, ["mdl-slider", "mdl-js-slider"]);
}

