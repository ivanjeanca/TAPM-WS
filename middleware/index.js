const jwt = require('jsonwebtoken');
const secret_password = 'el_palomo'

function authentication(user) {
    return jwt.sign({ user }, secret_password);
}

function checkToken(request, response, next) {
    const bearerHeader = request.headers['authorization']
    if (typeof bearerHeader !== 'undefined') {
        const bearer = bearerHeader.split(" ")
        const bearerToken = bearer[1]
        request.token = bearerToken
        jwt.verify(request.token, secret_password, (error, data) => {
            if(error)
                response.sendStatus(403)
            else
                next()
        })
    } else
        response.sendStatus(403)
}

module.exports = {
    authentication,
    checkToken
};