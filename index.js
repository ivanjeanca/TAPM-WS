const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const app = express()
var fs = require('fs')
var https = require('https')
const port = 3000

const corsConfig = { origin: '*', optionsSuccessStatus: 200 }
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: false }))
app.use(cors(corsConfig))

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

https.createServer({
  key: fs.readFileSync('server.key'),
  cert: fs.readFileSync('server.cert')
}, app)
.listen(port, () => {
  console.log(`App running on port ${port}.`)
})