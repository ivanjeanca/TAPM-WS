const express = require('express');
const router = express.Router();
const srv = require('../services/clasificacion')
const jwtVerify = require('../middleware')

router.get('/', jwtVerify.checkToken, srv.getClasificaciones)
router.get('/:id', jwtVerify.checkToken, srv.getClasificacionById)
router.post('/', jwtVerify.checkToken, srv.newClasificacion)
router.put('/:id', jwtVerify.checkToken, srv.updateClasificacion)
router.delete('/:id', jwtVerify.checkToken, srv.deleteClasificacion)

module.exports = router;