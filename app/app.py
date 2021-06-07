"""Main module
"""
from app.misc.tools import Misc
from app.settings import PARAM_A
from app.utils.functions import addition


async def main() -> None:
    """Main coroutine
    """
    print("Hello, World ! This is a simple app.")
    print(f"Param A: {PARAM_A}")
    print(Misc)

    x, y = 10, 20
    result = addition(x, y)
    print(f"{x} + {y} = {result}")
