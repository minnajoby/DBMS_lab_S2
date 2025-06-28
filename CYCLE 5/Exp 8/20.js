db.products.find({}, {name: 1,spec: 1}).sort({"spec.ram": 1});
