const mongoose = require('mongoose')
const Schema = mongoose.Schema

const User = new Schema({
    id: { type: Number },
    createAt: { type: String },
    updateAt: { type: String },
    email: { type: String, unique: true },
    fullname: { type: String },
    password: { type: String },
    role: { type: String },
    customer_ID: { type: Number },
    image: { type: String },
    Password: { type: String },
    Phone: { type: String },
    Date_of_birth: { type: String },
    Sex: { type: String },
    Address: { type: String }
},
    {
        timestamps: true
    }
)

module.exports = mongoose.model('User', User)
