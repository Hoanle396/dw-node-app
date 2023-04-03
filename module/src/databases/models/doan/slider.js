const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Slider extends Sequelize.Model {
    static init(sequelize, opts) {
        return super.init(
            {
                slider_ID: {
                    type: DataTypes.INTEGER,
                    primaryKey: true,
                    autoIncrement: true,
                    allowNull: false
                },
                image: {
                    type: DataTypes.STRING
                },
            },
            {
                tableName: "slider",
                modelName: "slider",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { Slider };
