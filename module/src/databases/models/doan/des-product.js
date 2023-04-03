const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class DescriptionProduct extends Sequelize.Model {
    static init(sequelize, opts) {
        return super.init(
            {
                des_ID: {
                    type: DataTypes.INTEGER,
                    primaryKey: true,
                    autoIncrement: true,
                    allowNull: false
                },
                product_ID: {
                    type: DataTypes.STRING
                },
                description: {
                    type: DataTypes.STRING
                },
                store: {
                    type: DataTypes.STRING
                },
            },
            {
                tableName: "des_product",
                modelName: "description",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { DescriptionProduct };
