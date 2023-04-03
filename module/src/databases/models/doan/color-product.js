const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class ColorProduct extends Sequelize.Model {
    static init(sequelize, opts) {
        return super.init(
            {
                color_ID: {
                    type: DataTypes.INTEGER,
                    primaryKey: true,
                    autoIncrement: true,
                    allowNull: false
                },
                image_color: {
                    type: DataTypes.STRING
                },
                color_name: {
                    type: DataTypes.STRING
                },
            },
            {
                tableName: "color_product",
                modelName: "color",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { ColorProduct };
