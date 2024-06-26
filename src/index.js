const express = require("express");
const cors = require("cors");
const mysql = require("mysql2/promise");

require("dotenv").config();

//creo el servidor
const app = express();

//configurarlo

app.use(cors());
app.use(express.json());

//conectarme con la base de datos

async function getDBconnection(){
  const connection = await mysql.createConnection({
    host: 'localhost', 
    user: process.env.DB_USER, 
    password: process.env.DB_PASSWORD,
    database: 'signos_zodiaco',
  });
  connection.connect()
  return connection;
}


//arrancar el puerto

const port = process.env.PORT || 5001;
app.listen(port, () => {
  console.log(`Server is running on port: ${port}`);
});


//ENDPOINTS

//1. GET

app.get('/signos', async (req,res) => {
    const connection = await getDBconnection();

    //consulta en la base de datos
    const querysql = "SELECT * FROM signos";
    const [result] = await connection.query(querysql);

    connection.end();

    //envio la respuesta

    res.json({
      info: {count: result.length}, 
      results: result,
    });
  });

//2. GET:ID

app.get('/signos/:id', async (req, res) => {

    //recoge el id 
    const idSigno = req.params.id;

  //consulta en la base de datos
  const connection = await getDBconnection();
  const querysql = "SELECT * FROM signos WHERE id = ?";
  const [result] = await connection.query(querysql, [idSigno]);

  connection.end();

  if(result.length === 0){

      res.status(404).json({
        success: false,
        'error': 'no hay ningún signo con ese id',
  }); 
  } else {
      res.status(200).json({
        success: true,
        result: result,
    });
  }
  });

// 3.POST añadir nuevo signo del zodiaco nombre, elemento, descripcion

app.post('/signos', async (req, res) => {
    const data = req.body; 
    const {name, element, description} = data;

    //añadir signo en la base de datos
    const connection = await getDBconnection();
    const querysql = "INSERT INTO signos (nombre, elemento, descripcion) VALUES(?,?,?)";
    const [result] = await connection.query(querysql, [
      name,
      element,
      description,
    ]);

    connection.end();

    //enviar respuesta a front-end
    res.status(201).json({
      success: true,
      id: result.insertId,
    });
    });


//PUT  actualizar signo 

app.put('/signos/:id', async(req, res)=> {
    //recoge el id
    const idSigno = req.params.id;
    // recoge los datos 
    const newData = req.body;
    const {name, element, description} = newData;

    //actualiza el signo en la base de datos
    const connection = await getDBconnection();
    const querysql = "UPDATE signos SET nombre = ?, elemento = ?, descripcion = ? WHERE id = ?";
    const [result] = await connection.query(querysql, [
      name, 
      element,
      description,
      idSigno,
    ]);

    connection.end();

    //enviar respuesta a front-end

    res.status(200).json({
      success: true,
    });
    
  });

//5.DELETE

app.delete('/signos/:id', async(req,res) => {
    //recoge el id
    const idSigno = req.params.id;

    //actualiza el signo en la base de datos
    const connection = await getDBconnection();


    //elimina la receta de mi base de datos
    const querysql = "DELETE FROM signos WHERE id = ?";
    const [result] = await connection.query(querysql, [idSigno]);
  
    
    connection.end();
  
    //enviar respuesta a front-end

    if(result.affectedRows > 0){
      res.status(200).json({
        success: true,
        message: 'signo eliminado',
      });
    } else {
      res.status(400).json({
        success: false,
        message: 'No se ha eliminado el signo',
      });
    };

    
  });




