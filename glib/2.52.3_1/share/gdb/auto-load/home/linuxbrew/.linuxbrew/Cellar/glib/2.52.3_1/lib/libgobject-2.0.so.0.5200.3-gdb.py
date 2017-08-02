import sys
import gdb

# Update module path.
dir_ = '/home/linuxbrew/.linuxbrew/Cellar/glib/2.52.3_1/share/glib-2.0/gdb'
if not dir_ in sys.path:
    sys.path.insert(0, dir_)

from gobject_gdb import register
register (gdb.current_objfile ())
