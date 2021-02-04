const express = require('express');
const req = require('request');
const bp = require('body-parser');
const ht = require('https');

const app = express();
app.get('/', function (req, res) {
    // res.send("<h1> first app</h1>");
    res.sendFile(__dirname + '/signup.html')

    ht.request('api.openweathermap.org/data/2.5/weather?q=London,uk&appid=159e4cd635efbeaeaca73fe59e2bb03b',
        function (r1, r2) {
            console.log(r2.on(data))
        });

});
var port = 3000;
app.listen(port, function () {
    console.log("server running ${port} ");
});
