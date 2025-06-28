db.products.find({'price': {$exists: 1}}, { name: 1, price: 1}).sort({price: 1,name: 1});
