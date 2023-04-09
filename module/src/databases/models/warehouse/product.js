const mongoose = require('mongoose')
const Schema = mongoose.Schema

const Product = new Schema({
    id: { type: Number },
    createAt: { type: String },
    updateAt: { type: String },
    name: { type: String },
    price: { type: Number },
    currency: { type: String },
    description: { type: String },
    image: { type: String },
    quantity: { type: String },
    color: { type: String }
},
    {
        timestamps: true
    }
)

module.exports = mongoose.model('Product', Product)
