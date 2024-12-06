class Product:
    def __init__(self, product_id):
        # Constructor to initialize Product ID
        self.product_id = product_id
        self.name = ""        # Placeholder for product name
        self.price = 0.0     # Placeholder for product price
        self.quantity = 0    # Placeholder for product quantity

    def get_product_details(self, name, price, quantity):
        # Method to get product details (Name, Price, and Quantity)
        self.name = name
        self.price = price
        self.quantity = quantity

    def display_product(self):
        # Method to display product details
        print(f"Product ID: {self.product_id}")
        print(f"Product Name: {self.name}")
        print(f"Price: ${self.price}")
        print(f"Quantity: {self.quantity}")

# Creating an instance of the Product class
product1 = Product(101)

# Initializing product details
product1.get_product_details("Laptop", 1200.99, 5)

# Displaying the product information
product1.display_product()
