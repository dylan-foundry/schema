module: schema-core
synopsis: Restrictions that are applied to datatypes.
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define class <datatype> (<object>)
  constant slot datatype-name :: <string>,
    required-init-keyword: name:;
  constant slot datatype-restrictions = make(<stretchy-vector>);
end class <datatype>;

//+++--- TODO: Define other datatypes here