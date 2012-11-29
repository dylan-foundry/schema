Schema
======

This library implements a general system for handling schemas for data.

One day, it will be able to read and write subsets of the various schema
languages (JSON Schema, XML Schema, Relax NG, XML DTDs, OWL, etc).

This will be used with a future dataset library.

Overview
--------

Until I write the real documentation, this library exposes a few core types:

* ``<schema>`` - A collection of definitions that describe a set of datasets.
* ``<entity>`` - An element of a dataset.
* ``<attribute>`` - A value on an ``<entity>``.

Additionally, ``<attribute>`` values are modeled as ``<datatype>`` instances.
Datatypes can be refined by using a subclass of ``<datatype>`` or by adding
``<restriction>`` instances to the datatype. Restrictions allow us to express
constraints such as min/max values, valid values for an enumeration.

We don't yet deal with units on values. This is something that the library
should address in the future.
