const Sequelize = require("sequelize");

const { DataTypes } = Sequelize;

class Post extends Sequelize.Model {
    static init(sequelize, opts) {
        return super.init(
            {
                post_ID: {
                    type: DataTypes.INTEGER,
                    primaryKey: true,
                    autoIncrement: true,
                    allowNull: false
                },
                post_Name: {
                    type: DataTypes.STRING
                },
                post_image: {
                    type: DataTypes.STRING
                },
                post_summary: {
                    type: DataTypes.STRING
                },
                post_content: {
                    type: DataTypes.STRING
                },
            },
            {
                tableName: "post",
                modelName: "post",
                timestamps: false,
                sequelize,
                ...opts
            }
        );
    }
}

module.exports = { Post };
