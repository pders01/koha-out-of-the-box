const express = require('express');
const path = require('path');
const { exec } = require('child_process');
const fs = require('fs');

const app = express();

const favicon = require('serve-favicon');

// get local ip address

const { networkInterfaces } = require('os');
const { stderr } = require('process');

const nets = networkInterfaces();
const results = Object.create(null); // Or just '{}', an empty object

for (const name of Object.keys(nets)) {
    for (const net of nets[name]) {
        // Skip over non-IPv4 and internal (i.e. 127.0.0.1) addresses
        if (net.family === 'IPv4' && !net.internal) {
            if (!results[name]) {
                results[name] = [];
            }
            results[name].push(net.address);
        }
    }
}
const serverIp = results['en0'][0];

// helper functions

const writeData = (lib, dom, file) => {
    configurationData = `libraryname=${lib}\ndomainname=${dom}`;
    fs.writeFile(file, configurationData, (err) => {
        if (err) throw err;
        console.log('Configuration Data saved!');
    });
};

const executeAndLog = (command) => {
    exec(command, (error, stdout, stderr) => {
        if (error) {
            console.log(`error: ${error.message}`);
            fs.writeFile('install.log', `error: ${error.message}\n`, (err) => {
                if (err) throw err;
            });
            return;
        }
        if (stderr) {
            console.log(`stderr: ${stderr}`);
            fs.writeFile('install.log', `stderr: ${stderr}\n`, (err) => {
                if (err) throw err;
            });
            return;
        }
        console.log(`stdout: ${stdout}`);
        fs.writeFile('install.log', `stdout: ${stdout}\n`, (err) => {
            if (err) throw err;
        });
    });
};

// middleware config

app.use(express.static(__dirname + '/public'));
app.use(favicon(path.join(__dirname, 'public', 'images', 'favicon.ico')));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.get('/', (req, res) => {
    res.render('index.html', { serverIp: serverIp });
});

app.post('/submit', (req, res) => {
    const { libraryName, domainName } = req.body;
    writeData(libraryName, domainName, 'test.txt');

    res.redirect('success.html');
});

app.listen(8080, function () {
    console.log('Running on port 8080.');
});
