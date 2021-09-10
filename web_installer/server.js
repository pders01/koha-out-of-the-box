const express = require("express");
const path = require('path');
const app = express();

const favicon = require('serve-favicon');

app.use(express.static(__dirname + '/public'));
app.use(favicon(path.join(__dirname,'public','images','favicon.ico')));

app.get('/', (req, res) => {
    res.sendFile('index.html');
})

app.listen(8080, function() {
    console.log("Running on port 8080.");
});