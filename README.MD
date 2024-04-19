# EVALUACIÓN FINAL MÓDULO 4 BACK-END

En esta evaluación he creado una API REST donde puedes obtener información sobre los 12 signos del zodiaco. Debes utilizar el formato JSON para las solicitudes y respuestas. Toda su información está almacenada en la base de datos _signos_zodiaco_.

## TIPOS DE ENDPOINTS QUE ENCONTRARÁS:

1. **GET/signos:** puedes obtener información sobre todos los signos del zodiaco.
2. **GET/signos/:id:** puedes obtener información sobre un signo según su ID.
3. **POST/signos:** puedes agregar un nuevo signo zodiacal.
4. **PUT/signos/:id:** puedes actualizar nueva información sobre un signo según su ID.
5. **DELETE/signos/:id:** puedes eliminar un signo de la base de datos.

## Ejemplos de Solicitudes y Respuestas

### 1. Obtener información sobre todos los signos del zodiaco (GET/signos)

#### Solicitud

- Método: GET
- URL: `http://localhost:5001/signos`

#### Respuesta

```[
{
"id": 1,
"nombre": "Aries",
"fecha": "21 de marzo",
"elemento": "fuego",
"descripcion": "..."
},
{
"id": 2,
"nombre": "Tauro",
"fecha_inicio": "20 de abril",
"elemento": "tierra",
"descripcion": "..."
},
...
]```
´´´

### 2. Obtener información sobre un signo específico (GET/signos/:id)

#### Solicitud

- Método: GET
- URL: `http://localhost:5001/signos/3`

#### Respuesta

```{
"id": 3,
"nombre": "Géminis",
"fecha": "21 de mayo",
"elemento": "aire",
"descripcion": "..."
}```
´´´
### 3. Agregar un nuevo signo zodiacal (POST/signos)

#### Solicitud

- Método: POST
- URL: `http://localhost:5001/signos`

```{
"nombre": "Cáncer",
"fecha": "21 de junio",
"elemento": "agua",
"descripcion": "..."
}```
´´´
#### Respuesta

```{
"id": 13,
"nombre": "Ofiuco",
"fecha": "21 de junio",
"elemento": "agua",
"descripcion": "..."
}```
´´´
### 4. Actualizar información sobre un signo zodiacal existente (PUT/signos/:id)

#### Solicitud

- Método: PUT
- URL: `http://localhost:5001/signos/3`

```{
"descripcion": "Los cáncer son conocidos por ser sensibles y emocionales."
}```
´´´
#### Respuesta

```{
"id": 1,
"nombre": "Aries",
"fecha_inicio": "21 de marzo",
"fecha_fin": "19 de abril",
"descripcion": "Los cáncer son conocidos por ser sensibles y emocionales."
}```
´´´
### 5. Eliminar un signo zodiacal existente (DELETE /signos/:id)

#### Solicitud

- Método: DELETE
- URL: `http://localhost:5001/signos/8`

#### Respuesta

El servidor puede responder con un código de estado 200 (signo eliminado) si la eliminación es exitosa.
