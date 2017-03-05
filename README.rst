.. image:: https://travis-ci.org/scienceopen/f2pyExamples.svg?branch=master
    :target: https://travis-ci.org/scienceopen/f2pyExamples

=============
f2py Examples
=============
Simple examples of using ``f2py`` to get high-speed Fortran integrated with Python easily.
These examples are also useful to troubleshoot problems with ``f2py``.

Setup
=====
::

    python setup.py develop

This will compile the Fortran code (in ``.f`` and ``.f90`` files) and create a file ``pyprod.*`` where ``*`` depends on your operating system and Python version. 
On Linux/Mac, the file extension will be ``.so`` while on Windows it will be ``.pyd``.

Run
===
::

    python f2py_demo.py

You will see the output
 
    x = 3
    y = 2
    x * y = 6.0
    Your system did this in Python using Fortran-compiled library

Troubleshooting f2py
====================
``f2py`` normally Just Works on Linux, Mac and `Windows Subsystem for Linux <https://www.scivision.co/tag/#windows-subsystem-for-linux>`_.
However, Windows itself can be more challenging due to inconsistencies in Microsoft Visual Studio.

See the `f2py installation guide and troubleshooting guide for Windows <https://www.scivision.co/f2py-running-fortran-code-in-python-on-windows/>`_.
I don't really use Windows in my work (except for occasionally Windows Subsystem for Linux).
