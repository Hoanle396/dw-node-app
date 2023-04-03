const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Feedback extends Sequelize.Model {
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
                name: {
                    type: DataTypes.STRING
                },
                email: {
                    type: DataTypes.STRING
                },
                subject: {
                    type: DataTypes.STRING
                },
                message: {
                    type: DataTypes.STRING
                }
            },
            {
                tableName: "feedback",
                modelName: "feedback",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { Feedback };
