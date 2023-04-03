const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Category extends Sequelize.Model {
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
                description: {
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
