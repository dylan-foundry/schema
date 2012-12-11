module: schema-core
synopsis: Constraints that are applied to entities.
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define class <constraint> (<object>)
  constant slot constraint-description :: false-or(<string>),
    init-keyword: description:;
end class <constraint>;

