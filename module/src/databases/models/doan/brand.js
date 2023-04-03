const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Brand extends Sequelize.Model {
    static init(sequelize, opts) {
        return super.init(
            {
                brand_ID: {
                    type: DataTypes.INTEGER,
                    primaryKey: true,
                    autoIncrement: true,
                    allowNull: false
                },
                brand_Name: {
                    type: DataTypes.STRING
                },
                category_ID: {
                    type: DataTypes.STRING
                },
            },
            {
                tableName: "brand",
                modelName: "brand",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { Brand };
