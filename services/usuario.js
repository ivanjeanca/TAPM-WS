const midd = require("../middleware")
const Pool = require("pg").Pool
const pool = new Pool({
    user: "el_palomo",
    host: "localhost",
    database: "cine",
    password: "1",
    port: 5432
})

const getUsuarios = (request, response) => {
    var val = 0
    pool.query(
        "select * from usuario;",
        (error, results) => {
            if (error)
                throw error
            else
                val = 1

            data = {
                data: results.rows,
                valid: val
            }
            response.status(200).json(data)
        }
    )
}

const getUsuarioByEmail = (request, response) => {
    var val = 0
    const correo = request.params.correo
    pool.query(
        "select * from usuario where correo = $1;",
        [correo],
        (error, results) => {
            if (error)
                throw error
            else
                val = 1
            data = {
                data: results.rows,
                valid: val
            }
            response.status(200).json(data)
        }
    )
}

const getUsuarioById = (request, response) => {
    var val = 0
    const id = parseInt(request.params.id)
    pool.query(
        "select * from usuario where id_usuario = $1;",
        [id],
        (error, results) => {
            if (error)
                throw error
            else
                val = 1
            data = {
                data: results.rows,
                valid: val
            }
            response.status(200).json(data)
        }
    )
}

const newUsuario = (request, response) => {
    var val = 0
    const { nombre, apaterno, amaterno, correo, contrasena } = request.body
    pool.query(
        "insert into usuario(nombre, apaterno, amaterno, correo, contrasena) VALUES ($1, $2, $3, $4, md5($5));",
        [nombre, apaterno, amaterno, correo, contrasena],
        (error, results) => {
            if (error)
                throw error
            else
                val = 1
            response.status(201).send(`Usuario agregado, valid = ` + val)
        }
    )
}

const updateUsuario = (request, response) => {
    const id = parseInt(request.params.id)
    const { nombre, apaterno, amaterno, correo, contrasena } = request.body
    var val = 0
    pool.query(
        "update usuario set nombre = $1, apaterno = $2, amaterno = $3, correo = $4, contrasena = md5($5) where id_usuario = $6;",
        [nombre, apaterno, amaterno, correo, contrasena, id],
        (error, results) => {
            if (error)
                throw error
            else
                val = 1
            response
                .status(200)
                .send(`Usuario modificado con el ID: ${id}, valid = ` + val)
        }
    )
}

const deleteUsuario = (request, response) => {
    const id = parseInt(request.params.id)
    var val = 0
    pool.query(
        "delete from usuario where id_usuario = $1;",
        [id],
        (error, results) => {
            if (error)
                throw error
            else
                val = 1
            response.status(200).send(`Usuario eliminado con el ID: ${id}, valid = ` + val)
        }
    )
}

const login = (request, response) => {
    const { correo, contrasena } = request.body
    var val = 0
    pool.query(
        "select nombre, apaterno, amaterno, correo from usuario where correo = $1 and contrasena = md5($2);",
        [correo, contrasena],
        (error, results) => {
            if (error)
                throw error
            else
                val = 1

            token = {
                token: midd.authentication(results.rows),
                valid: val
            }
            response.status(200).json(token)
        }
    )
}

module.exports = {
    getUsuarios,
    getUsuarioByEmail,
    getUsuarioById,
    newUsuario,
    updateUsuario,
    deleteUsuario,
    login
}