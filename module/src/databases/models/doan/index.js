const { db2 } = require("../../mysqls");
const { Brand } = require("./brand");
const Sequelize = require('sequelize');
const { Category } = require("./category");
const { City } = require("./city");
const { ColorProduct } = require("./color-product");
const { Customer } = require("./customer");
const { DescriptionProduct } = require("./des-product");
const { District } = require("./district");
const { Images } = require("./images");
const { OrderDetails } = require("./order-details");
const { Order } = require("./order");
const { Post } = require("./post");
const { Product } = require("./product");
const { Score } = require("./score");
const { Wards } = require("./wards");
const { Slider } = require("./slider");
const { Size } = require("./size");

const doan = {
    Brand: Brand.init(db2),
    Category: Category.init(db2),
    City: City.init(db2),
    ColorProduct: ColorProduct.init(db2),
    Customer: Customer.init(db2),
    DescriptionProduct: DescriptionProduct.init(db2),
    District: District.init(db2),
    Images: Images.init(db2),
    OrderDetail: OrderDetails.init(db2),
    Orders: Order.init(db2),
    Post: Post.init(db2),
    Product: Product.init(db2),
    Score: Score.init(db2),
    Size: Size.init(db2),
    Slider: Slider.init(db2),
    Wards: Wards.init(db2),
};


doan.sequelize = db2;
doan.Sequelize = Sequelize;

module.exports = doan;