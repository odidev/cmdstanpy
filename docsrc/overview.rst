Overview
========

CmdStanPy is a lightweight interface to Stan for Python users which
provides the necessary objects and functions to do Bayesian inference
given a probability model and data.
It wraps the
`CmdStan <https://mc-stan.org/docs/cmdstan-guide/cmdstan-installation.html>`_
command line interface in a small set of
Python classes which provide methods to do analysis and manage the resulting
set of model, data, and posterior estimates.

Benefits of CmdStanPy
---------------------

- Clean interface to CmdStan; can run with any version above 2.19, keeps up with new releases.

- Easy to install

    - minimal Python library dependencies: numpy, pandas
    - Python code doesn't interface directly with C++; calls CmdStan executables via subprocess module.

- Low memory overhead - by default, minimal memory used above that required by CmdStanPy; objects run CmdStan programs and track CmdStan input and output files.  

- Modular - CmdStanPy does inference; other packages do analysis and visualization.

Project Lifecycle
^^^^^^^^^^^^^^^^^

The statistical modeling enterprise cycles between development and production.
The focus of development is model building, comparison, and validation.
During development, models are revised and rerun over and over.
In production mode, a vetted model is run on real-world data and the
estimates obtained are used for policy and business decision-making.

CmdStanPy is designed to support both.
Because model development and testing may require many iterations,
the defaults favor development mode, where output files are written
to a temporary filesystem in order to avoid clutter in the working directory
and inadvertently filling up the filesystem.
Non-default options allow locations of all input and output files
to be specified so that production runs can be distributed
across nodes and machines.

Often development and production activities are divided between
teams; furthermore, it is often the case that analytics researchers
prefer to work in R, while production pipelines are tooled in Python.
Both CmdStanPy and CmdStanR wrap CmdStan in exactly the same way,
facilitating the process of migrating code between development
and production modes.

