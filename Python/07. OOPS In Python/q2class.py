class Product:
    def __init__(self, id, name, price, qty):
        self.id = id
        self.name = name
        self.price = price
        self.qty = qty
    
    def display_product_info(self):
        print(f"Unique identification number : {self.id}")
        print(f"Unique identification number : {self.name}")
        print(f"Unique identification number : {self.price}₹")
        print(f"Unique identification number : {self.qty}")

prd1 = Product(101, "Laptop", 999.99, 15) 
prd1.display_product_info()