import psycopg2


class DBConnection():
    def __init__(self, host, port, dbname, user, password):
        self.host = host
        self.port = port
        self.dbname = dbname
        self.user = user
        self.password = password
        self.conn = psycopg2.connect(
            host=self.host,
            port=self.port,
            dbname=self.dbname,
            user=self.user,
            password=self.password   
        )
        self.cur = self.conn.cursor()
    def execute(self, query):
        self.cur.execute(query)
        return self.fetchall()
    def close(self, action):
        if action == 'cursor':
            self.cur.close()
        elif action == 'connection':
            self.conn.close() 
        elif action == 'all':
            self.cur.close()
            self.conn.close()