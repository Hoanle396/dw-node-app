const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const http = require('http')
const app = express();


const connectDB = require('./databases/config');
const { writeUser } = require('./services/user');
const { runCronJob } = require('./cron');

const client = connectDB()

const server = http.createServer(app);
app.use(cors({ origin: true, credentials: true }));
app.use(bodyParser.json())

app.get('/', function (req, res) {
    return writeUser()
        .then((resp) => res.status(200).json(resp))
        .catch((err) => res.status(400).send(err));
})


server.listen(8183, async () => {
    console.log(`🚀 App running on port 8183`);
    await runCronJob();
});

