db.products.find({color: {$in: ["black", "white"]}}, { name: 1,color: 1})
