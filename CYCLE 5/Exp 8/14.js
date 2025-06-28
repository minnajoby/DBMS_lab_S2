db.products.find({price: {$in: [699, 799]}}, {name: 1,price: 1})
