db.products.find({}, {name: 1,price: 1}).sort({price: -1,name: 1}).limit(1);
