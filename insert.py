import random
import names
import string
from faker import Faker

fake = Faker()
# list of cities
cities = ['New York', 'Chicago', 'Los Angeles', 'Houston', 'Phoenix', 'Philadelphia','San Francisco', 'Seattle', 'Miami', 'Dallas']
# generate 1000 records
records = []
for i in range(10):
    # generate random first and last names
    firstname = names.get_first_name()
    lastname = names.get_last_name()
    email=fake.email()
    # generate a random address
    address = f'{random.randint(100, 999)} {names.get_full_name()} St'
    # choose a random city from the list
    city = random.choice(cities)
    # add the record to the list
    records.append((i+1, lastname, firstname, address, city,email))

print('INSERT INTO student (studentid, lastname, firstname, address, city)')
print('VALUES')
for i, record in enumerate(records):
    end = ',' if i < len(records) - 1 else ';'
    print(f"({record[0]}, '{record[1]}', '{record[2]}', '{record[3]}', '{record[4]}','{record[5]}'){end}")