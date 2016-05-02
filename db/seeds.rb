User.create!([
  {email: "mark@anyonecanlearntocode.com", password: "password"}
])
CartedProduct.create!([
  {product_id: 1, quantity: 4, order_id: 1},
  {product_id: 1, quantity: 4, order_id: 1},
  {product_id: 2, quantity: 3, order_id: 1},
  {product_id: 5, quantity: 3, order_id: 2}
])
Order.create!([
  {user_id: 1, subtotal: "1018.0", tax: "91.62", total: "1109.62", completed: true},
  {user_id: 1, subtotal: nil, tax: nil, total: nil, completed: false}
])
Product.create!([
  {name: "Cochinita Pibil", price: 122, image: "http://www.foodpeoplewant.com/wp-content/uploads/2009/09/Tacos-De-Cochinita-Pibil-1024x686.jpg", description: "Mouthwatering, slow-cooked pork on a corn tortilla, served with queso fresco, pickled onions y cilantro!", rating: nil},
  {name: "Al Pastor", price: 14, image: "http://upload.wikimedia.org/wikipedia/commons/b/b5/01_Tacos_al_Pastor.jpg", description: "Succulent, smoky, earthy, spiced and grilled pork strips seasoned with adobo seasoning. Served on a corn tortilla with cilantro y cebollas", rating: nil},
  {name: "Tacos de Asador", price: 343, image: "http://chicago.seriouseats.com/images/2012/10/20121004-224862-chicago-tacos-2-amigos-carne-asada.jpg", description: "Skirt steak seasoned and grilled until crisp, served in a corn tortilla with cilantro y cebollas. Spicy habanero or medium chile salsa upon request. #awesome", rating: nil},
  {name: "Tacos de pescado", price: 121, image: "http://i.ytimg.com/vi/gN8IVq7Phn4/maxresdefault.jpg", description: "Fresh Mahi Mahi battered and flash-fried, served on a corn tortilla and garnished with slaw, crema and a side of avocado, lime and pico de gallo.", rating: "5"},
  {name: "Exploding Taco", price: 10, image: "http://stream1.gifsoup.com/view7/4201326/exploding-taco-in-slow-motion-o.gif", description: "BOOM!", rating: nil},
  {name: "Carnitas", price: 65, image: "http://www.gimmesomeoven.com/wp-content/uploads/2012/09/crispy-slow-cooker-carnitas-2.jpg", description: "Twice-cooked mouthwatering pork tacos served on a corn tortilla con cebollas y cilantro", rating: nil}
])
