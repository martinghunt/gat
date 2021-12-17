import pytest

import sys
print(sys.path)
from gat import foo

def test_bar():
    assert foo.bar() == 42
