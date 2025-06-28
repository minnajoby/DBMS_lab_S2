db.products.find({storage: {$lt: 128}}, {name: 1,storage: 1})
