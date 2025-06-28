db.products.find({"spec.screen": {$lt: 7}}, {name: 1,"spec.screen": 1})
