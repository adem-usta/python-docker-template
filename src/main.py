"""Main module
"""
import asyncio

from utils.functions import addition


async def main() -> None:
    """Main coroutine
    """
    print("Hello, World !")
    x, y = 10, "mdr"
    result = addition(x, y)
    print(f"{x} + {y} = {result}")


if __name__ == "__main__":
    asyncio.run(main())
