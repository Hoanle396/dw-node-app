const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Products extends Sequelize.Model {
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
                name: {
                    type: DataTypes.STRING
                },
                price: {
                    type: DataTypes.INTEGER
                },
                curency: {
                    type: DataTypes.STRING
                },
                descripton: {
                    type: DataTypes.STRING
                },
                createBy: {
                    type: DataTypes.STRING
                },
                categoryId: {
                    type: DataTypes.INTEGER
                },
                images: {
                    type: DataTypes.STRING
                },
                quantity: {
                    type: DataTypes.INTEGER
                }
            },
            {
                tableName: "products",
                modelName: "products",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { Products };
