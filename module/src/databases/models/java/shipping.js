const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Shipping extends Sequelize.Model {
    static init(sequelize, opts) {
        return super.init(
            {
                id: {
                    type: DataTypes.INTEGER,
                    primaryKey: true,
                    autoIncrement: true,
                    allowNull: false
                },
                orderId: {
                    type: DataTypes.INTEGER
                },
                firstname: {
                    type: DataTypes.STRING
                },
                lastname: {
                    type: DataTypes.STRING
                },
                city: {
                    type: DataTypes.STRING
                },
                address: {
                    type: DataTypes.STRING
                },
                email: {
                    type: DataTypes.STRING
                },
                zipcode: {
                    type: DataTypes.STRING
                },
            },
            {
                tableName: "shipping",
                modelName: "shipping",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { Shipping };
