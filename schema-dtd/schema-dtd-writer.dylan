module: schema-dtd
synopsis: Support for writing a schema to a stream in DTD format.
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define class <schema-dtd-writer> (<schema-writer>)
end class <schema-dtd-writer>;

define method write-schema
  (writer :: <schema-dtd-writer>, schema :: <schema>)
 => ()
   // ...
end method write-schema;