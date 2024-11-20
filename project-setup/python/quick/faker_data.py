from faker import Faker
import random


class Attorney:
    def __init__(self, id: int, first_name: str, last_name: str, license_number: str):
        self.id = id
        self.first_name = first_name
        self.last_name = last_name
        self.license_number = license_number

    def __str__(self):
        return (f"Attorney(id={self.id}, first_name='{self.first_name}', "
                f"last_name='{self.last_name}', license_number='{self.license_number}')")

    def __repr__(self):
        return self.__str__()


def generate_test_attorney(id: int) -> Attorney:
    """
    Generate a test Attorney object with fake data.
    Args:
        id (int): The unique identifier for the Attorney.
    Returns:
        Attorney: A test Attorney object with fake data.
    """
    faker = Faker()
    first_name = faker.first_name()
    last_name = faker.last_name()
    license_number = f"{random.choice(['A', 'B', 'C'])}{faker.random_number(digits=5)}"
    return Attorney(id=id, first_name=first_name, last_name=last_name, license_number=license_number)


# Example Usage
if __name__ == "__main__":
    test_attorney = generate_test_attorney(1)
    print(test_attorney)
