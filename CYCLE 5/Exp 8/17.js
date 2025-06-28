db.products.find({color: {$nin: ["black", "white"]}}, {name: 1,color: 1})
