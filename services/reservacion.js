const Pool = require("pg").Pool
const pool = new Pool({
    user: "el_palomo",
    host: "localhost",
    database: "cine",
    password: "1",
    port: 5432
})

const getReservacionesFunciones = (request, response) => {
    var val = 0
    pool.query(
        "select p.titulo, h.horario, s.sala, r.id_asiento from reservacion r join funcion f using (id_funcion) join pelicula p using (id_pelicula) join horario h using (id_horario) join sala s using (id_sala);",
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

const getReservacionesFuncionesByEmail = (request, response) => {
    var val = 0
    const correo = request.params.correo
    pool.query(
        "select p.titulo, h.horario, s.sala, r.id_asiento from reservacion r join funcion f using (id_funcion) join pelicula p using (id_pelicula) join horario h using (id_horario) join sala s using (id_sala) where r.id_usuario = (select id_usuario from usuario where correo = $1);",
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

const getReservacionesFuncionesById = (request, response) => {
    var val = 0
    const id = parseInt(request.params.id)
    pool.query(
        "select p.titulo, h.horario, s.sala, r.id_asiento from reservacion r join funcion f using (id_funcion) join pelicula p using (id_pelicula) join horario h using (id_horario) join sala s using (id_sala) where r.id_usuario = $1;",
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

const newReservacion = (request, response) => {
    var val = 0
    const { id_usuario, id_funcion, id_asiento } = request.body
    pool.query(
        "insert into reservacion(id_usuario, id_funcion, id_asiento) VALUES ($1, $2, $3);",
        [id_usuario, id_funcion, id_asiento],
        (error, results) => {
            if (error)
                throw error
            else
                val = 1
            response.status(201).send(`Reservacion agregada, valid = ` + val)
        }
    )
}

const updateReservacion = (request, response) => {
    const id = parseInt(request.params.id)
    const { id_usuario, id_funcion, id_asiento } = request.body
    var val = 0
    pool.query(
        "update reservacion set id_usuario = $1, id_funcion = $2, id_asiento = $3 where id_reservacion = $4;",
        [id_usuario, id_funcion, id_asiento, id],
        (error, results) => {
            if (error)
                throw error
            else
                val = 1
            response
                .status(200)
                .send(`Reservacion modificada con el ID: ${id}, valid = ` + val)
        }
    )
}

const deleteReservacion = (request, response) => {
    const id = parseInt(request.params.id)
    var val = 0
    pool.query(
        "delete from reservacion where id_reservacion = $1;",
        [id],
        (error, results) => {
            if (error)
                throw error
            else
                val = 1
            response.status(200).send(`Reservacion eliminada con el ID: ${id}, valid = ` + val)
        }
    )
}

module.exports = {
    getReservacionesFunciones,
    getReservacionesFuncionesByEmail,
    getReservacionesFuncionesById,
    newReservacion,
    updateReservacion,
    deleteReservacion
}