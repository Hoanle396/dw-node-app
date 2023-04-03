const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Category extends Sequelize.Model {
    static init(sequelize, opts) {
        return super.init(
            {
                category_ID: {
                    type: DataTypes.INTEGER,
                    primaryKey: true,
                    autoIncrement: true,
                    allowNull: false
                },
                category_name: {
                    type: DataTypes.STRING
                }
            },
            {
                tableName: "category",
                modelName: "category",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { Category };
