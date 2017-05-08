# Configuration file for ipython.

#------------------------------------------------------------------------------
# Configurable configuration
#------------------------------------------------------------------------------

# c.AliasManager.user_aliases = [
#  ('l', 'ls -la')
# ]

#------------------------------------------------------------------------------
# InteractiveShellApp configuration
#------------------------------------------------------------------------------

# A Mixin for applications that start InteractiveShell instances.
# 
# Provides configurables for loading extensions and executing files as part of
# configuring a Shell environment.
# 
# The following methods should be called by the :meth:`initialize` method of the
# subclass:
# 
#   - :meth:`init_path`
#   - :meth:`init_shell` (to be implemented by the subclass)
#   - :meth:`init_gui_pylab`
#   - :meth:`init_extensions`
#   - :meth:`init_code`

# Execute the given command string.
# c.InteractiveShellApp.code_to_run = ''

# Run the file referenced by the PYTHONSTARTUP environment variable at IPython
# startup.
# c.InteractiveShellApp.exec_PYTHONSTARTUP = True

# List of files to run at IPython startup.
# c.InteractiveShellApp.exec_files = []

# lines of code to run at IPython startup.
# c.InteractiveShellApp.exec_lines = [
    # 'import numpy as np'
# ]

# A list of dotted module names of IPython extensions to load.
# c.InteractiveShellApp.extensions = []

# dotted module name of an IPython extension to load.
# c.InteractiveShellApp.extra_extension = ''

# A file to be run
# c.InteractiveShellApp.file_to_run = ''

# Enable GUI event loop integration with any of ('glut', 'gtk', 'gtk3', 'osx',
# 'pyglet', 'qt', 'qt5', 'tk', 'wx').
# c.InteractiveShellApp.gui = None

# Should variables loaded at startup (by startup files, exec_lines, etc.) be
# hidden from tools like %who?
# c.InteractiveShellApp.hide_initial_ns = True

# Configure matplotlib for interactive use with the default matplotlib backend.
# c.InteractiveShellApp.matplotlib = None

# Run the module as a script.
# c.InteractiveShellApp.module_to_run = ''

# Pre-load matplotlib and numpy for interactive use, selecting a particular
# matplotlib backend and loop integration.
# c.InteractiveShellApp.pylab = None

# If true, IPython will populate the user namespace with numpy, pylab, etc. and
# an ``import *`` is done from numpy and pylab, when using pylab mode.
# 
# When False, pylab mode should not import any names into the user namespace.
# c.InteractiveShellApp.pylab_import_all = True

# Reraise exceptions encountered loading IPython extensions?
# c.InteractiveShellApp.reraise_ipython_extension_failures = False

#------------------------------------------------------------------------------
# LoggingConfigurable configuration
#------------------------------------------------------------------------------

# A parent class for Configurables that log.
# 
# Subclasses have a log trait, and the default behavior is to get the logger
# from the currently running Application.

#------------------------------------------------------------------------------
# SingletonConfigurable configuration
#------------------------------------------------------------------------------

# A configurable that only allows one instance.
# 
# This class is for classes that should only have one instance of itself or
# *any* subclass. To create and retrieve such a class use the
# :meth:`SingletonConfigurable.instance` method.

#------------------------------------------------------------------------------
# Application configuration
#------------------------------------------------------------------------------

# This is an application.

# The date format used by logging formatters for %(asctime)s
# c.Application.log_datefmt = '%Y-%m-%d %H:%M:%S'

# The Logging format template
# c.Application.log_format = '[%(name)s]%(highlevel)s %(message)s'

# Set the log level by value or name.
# c.Application.log_level = 30

#------------------------------------------------------------------------------
# BaseIPythonApplication configuration
#------------------------------------------------------------------------------

# IPython: an enhanced interactive Python shell.

# Whether to create profile dir if it doesn't exist
# c.BaseIPythonApplication.auto_create = False

# Whether to install the default config files into the profile dir. If a new
# profile is being created, and IPython contains config files for that profile,
# then they will be staged into the new directory.  Otherwise, default config
# files will be automatically generated.
# c.BaseIPythonApplication.copy_config_files = False

# Path to an extra config file to load.
# 
# If specified, load this config file in addition to any other IPython config.
# c.BaseIPythonApplication.extra_config_file = ''

# The name of the IPython directory. This directory is used for logging
# configuration (through profiles), history storage, etc. The default is usually
# $HOME/.ipython. This option can also be specified through the environment
# variable IPYTHONDIR.
# c.BaseIPythonApplication.ipython_dir = ''

# Whether to overwrite existing config files when copying
# c.BaseIPythonApplication.overwrite = False

# The IPython profile to use.
# c.BaseIPythonApplication.profile = 'default'

# Create a massive crash report when IPython encounters what may be an internal
# error.  The default is to append a short message to the usual traceback
# c.BaseIPythonApplication.verbose_crash = False

#------------------------------------------------------------------------------
# TerminalIPythonApp configuration
#------------------------------------------------------------------------------

# Whether to display a banner upon starting IPython.
# c.TerminalIPythonApp.display_banner = True

# If a command or file is given via the command-line, e.g. 'ipython foo.py',
# start an interactive shell after executing the file or command.
# c.TerminalIPythonApp.force_interact = False

# Start IPython quickly by skipping the loading of config files.
# c.TerminalIPythonApp.quick = False

#------------------------------------------------------------------------------
# InteractiveShell configuration
#------------------------------------------------------------------------------

# An enhanced, interactive shell for Python.

# 'all', 'last', 'last_expr' or 'none', specifying which nodes should be run
# interactively (displaying output from expressions).
# c.InteractiveShell.ast_node_interactivity = 'last_expr'

# A list of ast.NodeTransformer subclass instances, which will be applied to
# user input before code is run.
# c.InteractiveShell.ast_transformers = []

# Make IPython automatically call any callable object even if you didn't type
# explicit parentheses. For example, 'str 43' becomes 'str(43)' automatically.
# The value can be '0' to disable the feature, '1' for 'smart' autocall, where
# it is not applied if there are no more arguments on the line, and '2' for
# 'full' autocall, where all callable objects are automatically called (even if
# no arguments are present).
# c.InteractiveShell.autocall = 0

# Autoindent IPython code entered interactively.
# c.InteractiveShell.autoindent = True

# Enable magic commands to be called without the leading %.
# c.InteractiveShell.automagic = True

# The part of the banner to be printed before the profile
# c.InteractiveShell.banner1 = 'Python 3.5.1 (default, Jan 22 2016, 08:54:32) \nType "copyright", "credits" or "license" for more information.\n\nIPython 4.1.1 -- An enhanced Interactive Python.\n?         -> Introduction and overview of IPython\'s features.\n%quickref -> Quick reference.\nhelp      -> Python\'s own help system.\nobject?   -> Details about \'object\', use \'object??\' for extra details.\n'

# The part of the banner to be printed after the profile
# c.InteractiveShell.banner2 = ''

# Set the size of the output cache.  The default is 1000, you can change it
# permanently in your config file.  Setting it to 0 completely disables the
# caching system, and the minimum value accepted is 20 (if you provide a value
# less than 20, it is reset to 0 and a warning is issued).  This limit is
# defined because otherwise you'll spend more time re-flushing a too small cache
# than working
# c.InteractiveShell.cache_size = 1000

# Use colors for displaying information about objects. Because this information
# is passed through a pager (like 'less'), and some pagers get confused with
# color codes, this capability can be turned off.
# c.InteractiveShell.color_info = True

# Set the color scheme (NoColor, Linux, or LightBG).
# c.InteractiveShell.colors = 'LightBG'

# 
# c.InteractiveShell.debug = False

