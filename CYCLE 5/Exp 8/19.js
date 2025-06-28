db.products.find({$or: [{ price: {$lt: 699} },{ price: {$gt: 799} }]}, {name: 1,price: 1})
