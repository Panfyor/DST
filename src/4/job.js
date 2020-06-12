use job;

// Query 1:
db.createCollection('Collection');

// Query 2:
db.Collection.insertMany( [{
  "name": "Aria",
  "age": 19,
  "house": "Stark",
  "will die": false,
  "abilities": ["Tough", "Killer"],
} ,
{
  "name": "John",
  "age": 26,
  "house": "Targarien",
  "will die": false,
  "abilities": ["King", "BestSword", "Killer"],
} ]);

// Query 3:
db.Collection.find();

// Query 4:
db.Collection.find().skip(1).limit(1);

// Query 5:
db.Collection.find({_id:ObjectId("5ee2ee86b42c19ef0ea7547f")});
