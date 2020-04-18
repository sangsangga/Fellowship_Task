

def get_data() -> dict: 
    """ Input user bio """
    name = input("Input your name: ")
    address = input("Input your address: ")
    dob = input("Input your D.O.B: ")
    hasil = {
        "name":name,
        "address":address,
        "dob":dob
        }
    return hasil

def display_bio(data):
    """Print user bio"""
    return print(f"My name is {data['name']}, I live in {data['address']}, I was born on {data['dob']}")


bio = get_data()
display_bio(bio)