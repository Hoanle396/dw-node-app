const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class OrderDetails extends Sequelize.Model {
    static init(sequelize, opts) {
        return super.init(
            {
                order_details_ID: {
                    type: DataTypes.INTEGER,
                    primaryKey: true,
                    autoIncrement: true,
                    allowNull: false
                },
                order_ID: {
                    type: DataTypes.INTEGER
                },
                product_ID: {
                    type: DataTypes.STRING
                },
                quantity: {
                    type: DataTypes.INTEGER
                },
                Name: {
                    type: DataTypes.STRING
                },
                Phone: {
                    type: DataTypes.STRING
                },
                Address: {
                    type: DataTypes.STRING
                },
            },
            {
                tableName: "order_details",
                modelName: "details",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { OrderDetails };
