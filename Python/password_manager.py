import sqlite3, sys

connection = sqlite3.connect("passwords.db")
cursor = connection.cursor()

def query():
    new_password=input("Enter new password: ")
    new_id=input("Enter id for password: ")
    print("Response: ",response)   
    try:
        cursor.execute("INSERT INTO passwords VALUES (?, ?);",(new_id,new_password))
      
    except sqlite3.Error as er:
        print("An error has occured %s" % er)


try:
    commands = """
    CREATE TABLE passwords(id INT AUTO_INCREMENT, password VARCHAR(30));
    """
    cursor.execute(commands)
except sqlite3.Error as er:
    print("table already exists")
    commands = """
    SELECT * FROM passwords;
    """
    cursor.execute(commands)

commands = """
SELECT * FROM passwords;
"""
cursor.execute(commands)
while True:
    print("Would you like to view (p)asswords,(a)dd one, or (e)xit?")
    response=input("Response: ")
    print("Response: ",response)
    if response == "a":
        query()
    elif response == "p":
        cursor.execute("SELECT * FROM passwords") 
        print("fetchall:")
        result = cursor.fetchall() 
        for r in result:
           print(r)
    elif response == "exit":
        sys.exit(0)
    else:
        print("Not recognized...")
        
   
    connection.commit()
connection.close()
