const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class OrderDetails extends Sequelize.Model {
    static init(sequelize, opts) {
        return super.init(
            {
                id: {
                    type: DataTypes.INTEGER,
                    primaryKey: true,
                    autoIncrement: true,
                    allowNull: false
                },
                createAt: {
                    type: DataTypes.TIME
                },
                updateAt: {
                    type: DataTypes.TIME
                },
                productId: {
                    type: DataTypes.INTEGER
                },
                code: {
                    type: DataTypes.STRING
                }
            },
            {
                tableName: "orderdetail",
                modelName: "details",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { OrderDetails };
