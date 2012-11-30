module: dylan-user

define library schema-dtd
  use common-dylan;
  use io;
  use schema-core;

  export schema-dtd;
end library;

define module schema-dtd
  use common-dylan, exclude: { format-to-string };
  use format-out;
  use schema-core;

  export <schema-dtd-writer>;
end module;
