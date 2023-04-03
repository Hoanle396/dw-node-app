const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Order extends Sequelize.Model {
    static init(sequelize, opts) {
        return super.init(
            {
                ID: {
                    type: DataTypes.INTEGER,
                    primaryKey: true,
                    autoIncrement: true,
                    allowNull: false
                },
                order_ID: {
                    type: DataTypes.INTEGER,
                },
                order_Date: {
                    type: DataTypes.STRING
                },
                order_cancel: {
                    type: DataTypes.STRING
                },
                status: {
                    type: DataTypes.INTEGER
                },
            },
            {
                tableName: "tbl_order",
                modelName: "order",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { Order };
