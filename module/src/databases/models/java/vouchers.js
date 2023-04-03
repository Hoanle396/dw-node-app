const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Vouchers extends Sequelize.Model {
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
                startDate: {
                    type: DataTypes.DATE
                },
                endDate: {
                    type: DataTypes.DATE
                },
                percent: {
                    type: DataTypes.INTEGER
                }
            },
            {
                tableName: "vouchers",
                modelName: "vouchers",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { Vouchers };
