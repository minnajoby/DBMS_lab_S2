db.products.find({releaseDate:{$exists: 1}},{name:1,releaseDate:1}).sort({releaseDate: -1});
