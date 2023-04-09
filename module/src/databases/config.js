

const mongoose = require('mongoose');

const MONGODB_URL = 'mongodb://root:example@localhost:27017/data-ware-house?authSource=admin'
module.exports = async function connectDB() {
    mongoose.connect(MONGODB_URL)
        .then(() => console.log('Connect database successfully! 🚀'))
        .catch((error) => {
        console.log('Connect database failed 🚀');
        console.log(error);
        })
    return mongoose.connection
};