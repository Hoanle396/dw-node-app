const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Product extends Sequelize.Model {
    static init(sequelize, opts) {
        return super.init(
            {
                product_ID: {
                    type: DataTypes.INTEGER,
                    primaryKey: true,
                    autoIncrement: true,
                    allowNull: false
                },
                product_name: {
                    type: DataTypes.STRING
                },
                brand_ID: {
                    type: DataTypes.INTEGER
                },
                color_ID: {
                    type: DataTypes.INTEGER
                },
                price: {
                    type: DataTypes.INTEGER
                },
                discount: {
                    type: DataTypes.INTEGER
                },
                image: {
                    type: DataTypes.STRING
                },
            },
            {
                tableName: "product",
                modelName: "product",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { Product };
