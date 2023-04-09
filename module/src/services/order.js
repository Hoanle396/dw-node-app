const { User } = require("../databases/models/warehouse")
const connectDB = require('../databases/config');

const java = require('../databases/models/java')
const doan = require('../databases/models/doan');
const { default: mongoose } = require("mongoose");

async function compaseProduct() {
    try {
        const [product] = await java.sequelize.query("SELECT products.*,category.name as categoryName , category.description as categoryDescription FROM products,category where products.categoryId=category.id ORDER BY products.id")
        const prod = await Promise.all(product.map(async (x, i) => {
            return await mongoose.connection.collection('products').findOneAndUpdate({ id: x.id }, { $setOnInsert: x }, { upsert: true })
        }))
        const [s] = await doan.sequelize.query("Select * from product,brand,color_product where product.brand_ID=brand.brand_ID AND product.color_ID=color_product.color_ID ORDER BY product.product_ID")
        const prod2 = await Promise.all(s.map(async (x, i) => {
            return await mongoose.connection.collection('products').findOneAndUpdate({ product_ID: x.product_ID }, { $setOnInsert: x }, { upsert: true })
        }))
    } catch (err) {
        return err
    }
}

module.exports = {
    compaseProduct
}