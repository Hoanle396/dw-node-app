const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Customer extends Sequelize.Model {
    static init(sequelize, opts) {
        return super.init(
            {
                customer_ID: {
                    type: DataTypes.INTEGER,
                    primaryKey: true,
                    autoIncrement: true,
                    allowNull: false
                },
                Name: {
                    type: DataTypes.STRING
                },
                image: {
                    type: DataTypes.STRING
                },
                Email: {
                    type: DataTypes.STRING
                },
                Password: {
                    type: DataTypes.STRING
                },
                Phone: {
                    type: DataTypes.STRING
                },
                Date_of_birth: {
                    type: DataTypes.STRING
                },
                Sex: {
                    type: DataTypes.FLOAT
                },
                Address: {
                    type: DataTypes.STRING
                }
            },
            {
                tableName: "customer",
                modelName: "customer",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { Customer };
