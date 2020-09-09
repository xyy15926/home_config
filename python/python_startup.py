#!/usr/bin/env python3
#----------------------------------------------------------
#   Name: python_startup.py
#   Author: xyy15926
#   Created at: 2020-08-19 18:41:48
#   Updated at: 2020-08-19 18:45:14
#   Description:
#----------------------------------------------------------

import readline
import rlcompleter
import atexit

readline.parse_and_bind("tab:complete")
try:
    readline.read_history("/home/xyy15926/.python_history")
except:
    pass
atexit.register(
    readline.write_history_file,
    "/home/xyy15926/.python_history"
)
del readline, rlcompleter


