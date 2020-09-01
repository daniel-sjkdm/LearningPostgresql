from dbconnection.connection import DBConnection
from dotenv import load_dotenv
from pprint import pprint
import os



if __name__ == '__main__':

    load_dotenv()

    host = os.getenv('PGHOST')
    port = os.getenv('PGPORT')
    dbname = os.getenv('PGDATABASE')
    user = os.getenv('PGUSER')
    password = os.getenv('PGPASSWORD')
    
    db = DBConnection(
        host=host,
        port=port,
        dbname=dbname,
        user=user,
        password=password
    )

    if db.conn.status == 1:
        print("Conected to the database!")
    result = db.execute('SELECT first_name as Name, age as Age, occupation as Ocuppation FROM person WHERE age > 50')
    pprint(result)
