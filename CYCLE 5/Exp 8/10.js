db.products.find({releaseDate:{$eq:new ISODate("2020-05-14")}},{name:1,releaseDate:1})
