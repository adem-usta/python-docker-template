import pytest

from src.utils.functions import addition


@pytest.mark.parametrize(['x', 'y', 'output'], [
    (1, 1, 2),
    (-1, -1, 0),
])
def test_addition(x, y, output):
    assert addition(x, y) == output
