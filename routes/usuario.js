const express = require('express');
const router = express.Router();
const srv = require('../services/usuario')

router.get('/', srv.getUsuarios)
router.get('/:correo', srv.getUsuarioByEmail)
router.get('/id/:id', srv.getUsuarioById)
router.post('/', srv.newUsuario)
router.put('/:id', srv.updateUsuario)
router.delete('/:id', srv.deleteUsuario)

module.exports = router;