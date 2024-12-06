class Product:
    def __init__(self, id, name, price, qty):
        self.id = id                    # Unique identification number
        self.name = name                # Product Name
        self.price = price              # Product Price
        self.qty = qty                  # Product Quantity
    
    def display_product_info(self):
        """Display the details of the product."""
        print(f"Unique identification number : {self.id}")
        print(f"Unique identification number : {self.name}")
        print(f"Unique identification number : {self.price}₹")
        print(f"Unique identification number : {self.qty}")

# Creating an instance of Product
prd1 = Product(101, "Laptop", 999.99, 15) 

# Displaying the product details
prd1.display_product_info()