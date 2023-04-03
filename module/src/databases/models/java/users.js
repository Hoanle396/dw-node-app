const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Users extends Sequelize.Model {
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
                email: {
                    type: DataTypes.STRING
                },
                fullname: {
                    type: DataTypes.STRING
                },
                password: {
                    type: DataTypes.STRING
                },
                role: {
                    type: DataTypes.STRING
                }
            },
            {
                tableName: "users",
                modelName: "users",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { Users };
