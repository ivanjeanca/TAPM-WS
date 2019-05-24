const express = require('express');
const router = express.Router();
const srv = require('../services/clasificacion')

router.get('/', srv.getClasificaciones)
router.get('/:id', srv.getClasificacionById)
router.post('/', srv.newClasificacion)
router.put('/:id', srv.updateClasificacion)
router.delete('/:id', srv.deleteClasificacion)

module.exports = router;