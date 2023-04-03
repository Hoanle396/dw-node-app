const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Score extends Sequelize.Model {
    static init(sequelize, opts) {
        return super.init(
            {
                score_ID: {
                    type: DataTypes.INTEGER,
                    primaryKey: true,
                    autoIncrement: true,
                    allowNull: false
                },
                customer_ID: {
                    type: DataTypes.INTEGER
                },
                score: {
                    type: DataTypes.INTEGER
                },
            },
            {
                tableName: "score",
                modelName: "score",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { Score };
