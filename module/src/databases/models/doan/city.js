const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class City extends Sequelize.Model {
    static init(sequelize, opts) {
        return super.init(
            {
                city_ID: {
                    type: DataTypes.INTEGER,
                    primaryKey: true,
                    autoIncrement: true,
                    allowNull: false
                },
                city_name: {
                    type: DataTypes.STRING
                }
            },
            {
                tableName: "city",
                modelName: "city",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { City };
