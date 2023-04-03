const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Contact extends Sequelize.Model {
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
                address: {
                    type: DataTypes.STRING
                },
                email: {
                    type: DataTypes.STRING
                },
                phone: {
                    type: DataTypes.STRING
                }
            },
            {
                tableName: "contact",
                modelName: "contact",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { Contact };
