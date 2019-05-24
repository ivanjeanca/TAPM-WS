const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors');
const app = express()
const port = 3000

const corsConfig = {
  origin: '*',
  optionsSuccessStatus: 200
};

app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: false,
  })
)
app.use(cors(corsConfig));

const API_Peliculas = require('./routes/peliculas')
const API_Clasificaciones = require('./routes/clasificacion')
const API_Funciones = require('./routes/funcion')
const API_Reservaciones = require('./routes/reservacion')
const API_Usuarios = require('./routes/usuario')

app.use('/api/peliculas', API_Peliculas)
app.use('/api/clasificacion', API_Clasificaciones)
app.use('/api/funciones', API_Funciones)
app.use('/api/reservaciones', API_Reservaciones)
app.use('/api/usuarios', API_Usuarios)

app.listen(port, () => {
    console.log(`App running on port ${port}.`)
})