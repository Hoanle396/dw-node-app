const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Wards extends Sequelize.Model {
    static init(sequelize, opts) {
        return super.init(
            {
                wards_ID: {
                    type: DataTypes.INTEGER,
                    primaryKey: true,
                    autoIncrement: true,
                    allowNull: false
                },
                wards_name: {
                    type: DataTypes.STRING
                },
                district_ID: {
                    type: DataTypes.STRING
                },
            },
            {
                tableName: "wards",
                modelName: "wards",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { Wards };
