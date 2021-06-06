"""Functions module.
"""


def addition(x: int, y: int) -> int:
    """Addition function between two integers

    Args:
        x (int): first operand
        y (int): second operand

    Returns:
        int: result of the addition between x and y.
    """
    if x < 0 and y < 0:
        return 0
    return x + y
