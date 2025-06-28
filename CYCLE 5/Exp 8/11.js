db.products.find({price: {$lt: 799}}, {name: 1,price: 1})
