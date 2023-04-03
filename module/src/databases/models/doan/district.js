const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class District extends Sequelize.Model {
    static init(sequelize, opts) {
        return super.init(
            {
                district_ID: {
                    type: DataTypes.INTEGER,
                    primaryKey: true,
                    autoIncrement: true,
                    allowNull: false
                },
                district_name: {
                    type: DataTypes.STRING
                },
                city_ID: {
                    type: DataTypes.INTEGER
                },
            },
            {
                tableName: "district",
                modelName: "district",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { District };
