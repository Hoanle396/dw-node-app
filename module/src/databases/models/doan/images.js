const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Images extends Sequelize.Model {
    static init(sequelize, opts) {
        return super.init(
            {
                images_ID: {
                    type: DataTypes.INTEGER,
                    primaryKey: true,
                    autoIncrement: true,
                    allowNull: false
                },
                images: {
                    type: DataTypes.STRING
                },
                product_ID: {
                    type: DataTypes.STRING
                },
            },
            {
                tableName: "images",
                modelName: "images",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { Images };
