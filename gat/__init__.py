from pkg_resources import get_distribution

try:
    __version__ = get_distribution("gat").version
except:
    __version__ = "local"

__all__ = ["foo"]

from gat import *
