db.products.find({color: {$eq: "black"}}, {name: 1,color: 1})
