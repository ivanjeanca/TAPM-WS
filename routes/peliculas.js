const express = require('express');
const router = express.Router();
const srv = require('../services/peliculas')

router.get('/', srv.getPeliculas)
router.get('/:id', srv.getPeliculaById)
router.post('/', srv.newPelicula)
router.put('/:id', srv.updatePelicula)
router.delete('/:id', srv.deletePelicula)

module.exports = router;