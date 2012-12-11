module: dylan-user

define library schema-core
  use common-dylan;
  use io;

  export schema-core;
end library;

define module schema-core
  use common-dylan, exclude: { format-to-string };
  use streams;
  use format-out;

  export <schema>, schema-name,
    schema-description, schema-entities,
    schema-datatypes;

  export <entity>, entity-name,
    entity-description, entity-children,
    entity-attributes, entity-constraints;

  export <attribute>, attribute-name,
    attribute-description,
    attribute-type, attribute-type-setter,
    attribute-required?, attribute-required?-setter;

  export <datatype>, datatype-name,
    datatype-restrictions;

  export <restriction>, restriction-description,
    restriction-value,
    <length-restriction>,
    <max-length-restriction>,
    <min-length-restriction>,
    <pattern-restriction>,
    <enumeration-restriction>;

  export <constraint>, constraint-description;

  export <schema-writer>, schema-writer-stream,
    write-schema;
end module;
