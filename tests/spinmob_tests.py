import unittest as _ut
import shutil   as _sh
import os       as _os
import sys      as _sys

if 0: from test__plot      import *
if 1: from test__databox   import *
if 0: from test__fitter    import *
if 0: from test__functions import *
if 0: from test__dialogs   import *
if 0: from test__egg       import *

if _os.path.exists('egg_settings'): _sh.rmtree('egg_settings')

_sys.argv = _sys.argv[0:1]
_ut.main(failfast=True)