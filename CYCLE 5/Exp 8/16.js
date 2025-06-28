db.products.find({price: {$nin: [599, 799]}}, {name: 1,price: 1})
