module: schema-core
synopsis: Define schemas to describe datasets.
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define class <schema> (<object>)
  constant slot schema-name :: <string>,
    required-init-keyword: name:;
  constant slot schema-description :: false-or(<string>) = #f,
    init-keyword: description:;
  constant slot schema-entities = make(<string-table>);
  constant slot schema-datatypes = make(<string-table>);
end class <schema>;

define class <entity> (<object>)
  constant slot entity-name :: <string>,
    required-init-keyword: name:;
  constant slot entity-description :: false-or(<string>) = #f,
    init-keyword: description:;
  constant slot entity-children = make(<stretchy-vector>);
  constant slot entity-attributes = make(<stretchy-vector>);
end class <entity>;

define class <attribute> (<object>)
  constant slot attribute-name :: <string>,
    required-init-keyword: name:;
  constant slot attribute-description :: false-or(<string>) = #f,
    init-keyword: description:;
  slot attribute-required? :: <boolean> = #f,
    init-keyword: required?:;
  slot attribute-type :: false-or(<datatype>) = #f,
    init-keyword: type:;
end class <attribute>;
