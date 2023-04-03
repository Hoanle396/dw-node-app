const Sequelize = require('sequelize');
const { Category } = require('./category');
const { db1 } = require('../../mysqls');
const { Contact } = require('./contact');
const { Feedback } = require('./feedback');
const { Users } = require('./users');
const { Vouchers } = require('./vouchers');
const { Shipping } = require('./shipping');
const { Products } = require('./products');
const { Orders } = require('./orders');
const { OrderDetails } = require('./order-details');

const java = {
    Category: Category.init(db1),
    Contact: Contact.init(db1),
    Feedback: Feedback.init(db1),
    Users: Users.init(db1),
    Vouchers: Vouchers.init(db1),
    Shipping: Shipping.init(db1),
    Products: Products.init(db1),
    Orders: Orders.init(db1),
    OrderDetail: OrderDetails.init(db1),
};


// Object.values(models)
//     .filter(model => typeof model.associate === 'function')
//     .forEach(model => model.associate(models));

java.sequelize = db1;
java.Sequelize = Sequelize;

module.exports = java;
