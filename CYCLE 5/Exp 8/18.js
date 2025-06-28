db.products.find({$and: [{price: 899}, {color: {$in: ["white", "black"]}}]},  
{name:1,price:1,color:1})
