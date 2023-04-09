const mongoose = require('mongoose')
const Schema = mongoose.Schema

const Order = new Schema({
    id: { type: Number },
    createAt: { type: String },
    updateAt: { type: String },
    code: { type: String },
    price: { type: Number },
    userEmail: { type: String },
    productName: { type: String },
},
    {
        timestamps: true
    }
)

module.exports = mongoose.model('Order', Order)
