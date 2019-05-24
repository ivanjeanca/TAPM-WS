const Pool = require("pg").Pool
const pool = new Pool({
    user: "el_palomo",
    host: "localhost",
    database: "cine",
    password: "1",
    port: 5432
})

const getPeliculas = (request, response) => {
    var val = 0
    pool.query(
        "select p.titulo, p.sinopsis, p.duracion, g.genero, c.clasificacion from pelicula p join genero g using(id_genero) join clasificacion c using(id_clasificacion);",
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

const getPeliculaById = (request, response) => {
    var val = 0
    const id = parseInt(request.params.id)
    pool.query(
        "select p.titulo, p.sinopsis, p.duracion, g.genero, c.clasificacion from pelicula p join genero g using(id_genero) join clasificacion c using(id_clasificacion) where id_pelicula = $1;",
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

const newPelicula = (request, response) => {
    var val = 0
    const { titulo, sinopsis, duracion, id_genero, id_clasificacion } = request.body
    pool.query(
        "insert into pelicula(titulo, sinopsis, duracion, id_genero, id_clasificacion) values ($1, $2, $3, $4, $5);",
        [titulo, sinopsis, duracion, id_genero, id_clasificacion],
        (error, results) => {
            if (error)
                throw error
            else
                val = 1
            response.status(201).send(`Pelicula agregada, valid = ` + val)
        }
    )
}

const updatePelicula = (request, response) => {
    const id = parseInt(request.params.id)
    const { titulo, sinopsis, duracion, id_genero, id_clasificacion } = request.body
    var val = 0
    pool.query(
        "update pelicula set titulo = $1, sinopsis = $2, duracion = $3, id_genero = $4, id_clasificacion = $5 where id_pelicula = $6;",
        [titulo, sinopsis, duracion, id_genero, id_clasificacion, id],
        (error, results) => {
            if (error)
                throw error
            else
                val = 1
            response
                .status(200)
                .send(`Pelicula modificada con el ID: ${id}, valid = ` + val)
        }
    )
}

const deletePelicula = (request, response) => {
    const id = parseInt(request.params.id)
    var val = 0
    pool.query(
        "delete from pelicula where id_pelicula = $1;",
        [id],
        (error, results) => {
            if (error)
                throw error
            else
                val = 1
            response.status(200).send(`Pelicula eliminada con el ID: ${id}, valid = ` + val)
        }
    )
}

module.exports = {
    getPeliculas,
    getPeliculaById,
    newPelicula,
    updatePelicula,
    deletePelicula
}