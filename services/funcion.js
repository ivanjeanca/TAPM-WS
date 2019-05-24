const Pool = require("pg").Pool
const pool = new Pool({
    user: "el_palomo",
    host: "localhost",
    database: "cine",
    password: "1",
    port: 5432
})

const getFunciones = (request, response) => {
    var val = 0
    pool.query(
        "select p.titulo, s.sala, h.horario, i.idioma, f.precio from funcion f join pelicula p using (id_pelicula) join sala s using (id_sala) join horario h using (id_horario) join idioma i using (id_idioma);",
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

const getFuncionById = (request, response) => {
    var val = 0
    const id = parseInt(request.params.id)
    pool.query(
        "select p.titulo, s.sala, h.horario, i.idioma, f.precio from funcion f join pelicula p using (id_pelicula) join sala s using (id_sala) join horario h using (id_horario) join idioma i using (id_idioma) where id_funcion = $1",
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

const newFuncion = (request, response) => {
    var val = 0
    const { id_pelicula, id_sala, id_horario, id_idioma, precio } = request.body
    pool.query(
        "insert into funcion(id_pelicula, id_sala, id_horario, id_idioma, precio) VALUES ($1, $2, $3, $4, $5);",
        [id_pelicula, id_sala, id_horario, id_idioma, precio],
        (error, results) => {
            if (error)
                throw error
            else
                val = 1
            response.status(201).send(`Clasificacion agregada, valid = ` + val)
        }
    )
}

const updateFuncion = (request, response) => {
    const id = parseInt(request.params.id)
    const { id_pelicula, id_sala, id_horario, id_idioma, precio } = request.body
    var val = 0
    pool.query(
        "update funcion set id_pelicula = $1, id_sala = $2, id_horario = $3, id_idioma = $4, precio = $5 where id_funcion = $6;",
        [id_pelicula, id_sala, id_horario, id_idioma, precio, id],
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

const deleteFuncion = (request, response) => {
    const id = parseInt(request.params.id)
    var val = 0
    pool.query(
        "delete from funcion where id_funcion = $1;",
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
    getFunciones,
    getFuncionById,
    newFuncion,
    updateFuncion,
    deleteFuncion
}