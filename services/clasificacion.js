const Pool = require("pg").Pool
const pool = new Pool({
    user: "el_palomo",
    host: "localhost",
    database: "cine",
    password: "1",
    port: 5432
})

const getClasificaciones = (request, response) => {
    var val = 0
    pool.query(
        "select * from clasificacion;",
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

const getClasificacionById = (request, response) => {
    var val = 0
    const id = parseInt(request.params.id)
    pool.query(
        "select * from clasificacion where id_clasificacion = $1",
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

const newClasificacion = (request, response) => {
    var val = 0
    const { clasificacion } = request.body
    pool.query(
        "insert into clasificacion(clasificacion) values ($1);",
        [clasificacion],
        (error, results) => {
            if (error)
                throw error
            else
                val = 1
            response.status(201).send(`Clasificacion agregada, valid = ` + val)
        }
    )
}

const updateClasificacion = (request, response) => {
    const id = parseInt(request.params.id)
    const { clasificacion } = request.body
    var val = 0
    pool.query(
        "update clasificacion set clasificacion = $1 where id_clasificacion = $2;",
        [clasificacion, id],
        (error, results) => {
            if (error)
                throw error
            else
                val = 1
            response
                .status(200)
                .send(`Clasificacion modificada con el ID: ${id}, valid = ` + val)
        }
    )
}

const deleteClasificacion = (request, response) => {
    const id = parseInt(request.params.id)
    var val = 0
    pool.query(
        "delete from clasificacion where id_clasificacion = $1;",
        [id],
        (error, results) => {
            if (error)
                throw error
            else
                val = 1
            response.status(200).send(`Clasificacion eliminada con el ID: ${id}, valid = ` + val)
        }
    )
}

module.exports = {
    getClasificaciones,
    getClasificacionById,
    newClasificacion,
    updateClasificacion,
    deleteClasificacion
}