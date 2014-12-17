===============================
sqlcop
===============================

A cli tool to check and guard against anti-patterns

.. image:: https://badge.fury.io/py/sqlcop.png
    :target: http://badge.fury.io/py/sqlcop
.. image:: https://travis-ci.org/freshbooks/sqlcop.svg?branch=master
    :target: https://travis-ci.org/freshbooks/sqlcop
.. image:: https://pypip.in/d/sqlcop/badge.png
    :target: https://crate.io/packages/sqlcop?version=latest

============
Installation
============

From PyPI::

    pip install sqlcop

============
Usage
============

sqlcop is designed to use with `nose-sqlcapture <https://github.com/freshbooks/nose-sqlcapture>`_.

First, you use `nose-sqlcapture` to generate a SQL capture file::

    nosetests [other options] --with-sqlcapture --sqlcapture-filename=sql.log --sqlcapture-format=json

Run sqlcop on the generated sql log fie::

    sqlcop sql.log
