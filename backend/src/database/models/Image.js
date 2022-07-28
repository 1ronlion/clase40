module.exports = (sequelize, dataTypes) => {
    let alias = 'Image'; // esto debería estar en singular
    let cols = {
        id: {
            type: dataTypes.BIGINT(11),
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },

        url: {
            type: dataTypes.STRING(500),
            allowNull: false
        },

        movie_id: dataTypes.BIGINT(11)
    };
    let config = {
        timestamps: false,
        underscored: true
    }
    const Image = sequelize.define(alias,cols,config);

    Image.associate = function (models) {
        Image.belongsTo(models.Movie, { // models.Genre -> Genres es el valor de alias en genres.js
            as: "image",
            foreignKey: "movie_id"
        })

    }

    return Image
};