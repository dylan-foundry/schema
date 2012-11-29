module: schema-core
synopsis: Restrictions that are applied to datatypes.
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define class <restriction> (<object>)
  constant slot restriction-description :: false-or(<string>),
    init-keyword: description:;
end class <restriction>;

define class <length-restriction> (<restriction>)
  constant slot restriction-value :: <integer>,
    required-init-keyword: value:;
end class <length-restriction>;

define class <max-length-restriction> (<restriction>)
  constant slot restriction-value :: <integer>,
    required-init-keyword: value:;
end class <max-length-restriction>;

define class <min-length-restriction> (<restriction>)
  constant slot restriction-value :: <integer>,
    required-init-keyword: value:;
end class <min-length-restriction>;

define class <pattern-restriction> (<restriction>)
  constant slot restriction-value :: <string>,
    required-init-keyword: pattern:;
end class <pattern-restriction>;

define class <enumeration-restriction> (<restriction>)
  //***--- TODO: Fill in...
end class <enumeration-restriction>;

