const Sequelize = require('sequelize');
const pool = {
    max: 60,
    min: 0,
    acquire: 60000,
    idle: 10000
};

const dialectOptions = {
    decimalNumbers: true
};

const sneaker = {
    username: "root",
    password: "",
    database: "java-web",
    host: "127.0.0.1",
    dialect: "mysql",
    operatorsAliases: 0,
    port: "3306",
    benchmark: true,
    pool: pool,
    dialectOptions: dialectOptions
};

const fashion = {
    username: "root",
    password: "",
    database: "doan",
    host: "127.0.0.1",
    dialect: "mysql",
    operatorsAliases: 0,
    port: 3307,
    pool: pool,
    dialectOptions: dialectOptions
};

const db2 = new Sequelize(fashion.database, fashion.username, fashion.password, fashion);
const db1 = new Sequelize(sneaker.database, sneaker.username, sneaker.password, sneaker);

module.exports = { db1, db2 }