const express = require('express');
const router = express.Router();
const srv = require('../services/reservacion')

router.get('/', srv.getReservacionesFunciones)
router.get('/:correo', srv.getReservacionesFuncionesByEmail)
router.get('/id/:id', srv.getReservacionesFuncionesById)
router.post('/', srv.newReservacion)
router.put('/:id', srv.updateReservacion)
router.delete('/:id', srv.deleteReservacion)

module.exports = router;