const express = require('express');
const basicAuth = require('express-basic-auth');
require('dotenv').config();

const app = express();
const port = 3000;

app.get('/', (req, res) => {
    res.send('Hello, world!');
});

app.get('/secret', basicAuth({
    users: { [process.env.USERNAME]: process.env.PASSWORD },
    challenge: true
}), (req, res) => {
    res.send(process.env.SECRET_MESSAGE);
});

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});
