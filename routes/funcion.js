const express = require('express');
const router = express.Router();
const srv = require('../services/funcion')

router.get('/', srv.getFunciones)
router.get('/:id', srv.getFuncionById)
router.post('/', srv.newFuncion)
router.put('/:id', srv.updateFuncion)
router.delete('/:id', srv.deleteFuncion)

module.exports = router;