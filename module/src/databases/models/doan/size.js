const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Size extends Sequelize.Model {
    static init(sequelize, opts) {
        return super.init(
            {
                size_ID: {
                    type: DataTypes.INTEGER,
                    primaryKey: true,
                    autoIncrement: true,
                    allowNull: false
                },
                brand_ID: {
                    type: DataTypes.INTEGER
                },
                size: {
                    type: DataTypes.STRING
                },
            },
            {
                tableName: "size",
                modelName: "size",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { Size };
