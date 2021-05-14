"""Main module
"""
import asyncio

from utils.functions import addition


async def main():
    """Main coroutine
    """
    print("Hello, World !")
    x, y = 10, 20
    result = addition(x, y)
    print(f"{x} + {y} = {result}")


if __name__ == "__main__":
    asyncio.run(main())
