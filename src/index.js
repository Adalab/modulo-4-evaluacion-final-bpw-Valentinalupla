const express = require("express");
const cors = require("cors");
const mysql = require("mysql/promise");
const { createConnection } = require("mysql2");

const app = express();

app.use(cors());
app.use(express.json());

async function getDBConnection(){
  const connection = await createConnection( {
    host: 'localhost',
    user: 'root',
    password: '1234', 
    databse: 'recetas_db',

  });
  connection.connect();
  return connection;
}

const port = 5000;
app.listen(port, () => {
  console.log("Server is running on port " + port);
});


//ENDPOINTS 

app.get("/recetas", async(req,res) => {
  const connection = await getDBConnection();
  const querySQL = "SELECT * FROM recetas";
  const [result] = await connection.query(querySQL);

  connection.end();

  res.json({
    info: {count: result.length },
    results: result,
  });
});


