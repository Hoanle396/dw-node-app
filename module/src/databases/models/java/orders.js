const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Orders extends Sequelize.Model {
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
                userId: {
                    type: DataTypes.INTEGER
                },
                code: {
                    type: DataTypes.STRING
                },
                price: {
                    type: DataTypes.INTEGER
                },
                voucherId: {
                    type: DataTypes.INTEGER
                }
            },
            {
                tableName: "orders",
                modelName: "orders",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { Orders };
