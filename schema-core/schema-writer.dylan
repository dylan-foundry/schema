module: schema-core
synopsis: Support for writing a schema to a stream.
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define open class <schema-writer> (<object>)
  constant slot schema-writer-stream :: <stream>,
    required-init-keyword: stream:;
end class <schema-writer>;

define open generic write-schema
  (writer :: <schema-writer>, schema :: <schema>) => ();
