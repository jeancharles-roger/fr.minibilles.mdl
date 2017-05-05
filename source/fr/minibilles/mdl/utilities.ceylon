import ceylon.html {
    Attribute,
    AttributeEntry,
    Attributes
}

Attributes appendAttributes(Attributes attributes, [AttributeEntry*] other) =>
        attributes.append(other);

Attribute<String> appendClazz(Attribute<String> clazz, {String*} other) =>
    () => " ".join(
        { switch (clazz) case (is String) clazz case (is String()) clazz() else "", *other }.filter((e) => !e.empty)
    );


Attribute<String> toStringAttribute(Attribute<Integer> attribute) =>
    let (val = switch (attribute) case (is Integer) attribute case (is Integer()) attribute() else 0) val.string;
