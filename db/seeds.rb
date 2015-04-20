azurite = Jewel.create({
  name: "Azurite",
  description: "Some gems have hidden qualities beyond their luster, beyond their shine... Azurite is one of those gems.",
  shine: 8,
  price: 110.50,
  rarity: 7,
  color: "Blue",
  faces: 14
})

azurite.images.create([
	{url: 'images/azurite1.jpg'}, 
	{url: 'images/azurite2.jpg'}, 
	{url: 'images/azurite3.jpg'} 
])

azurite.reviews.create([
	{
		stars: 4,
		body: "This gem is pretty cool",
		author: "flathead"
	},
	{
		stars: 5,
		body: "Super, super blue",
		author: "Blueish"
	}
])

bloodstone = Jewel.create({
  name: "Bloodstone",
  description: "Origin of the Bloodstone is unknown, hence its low value. It has a very high shine and 12 sides, however.",
  shine: 9,
  price: 22.90,
  rarity: 6,
  color: "Green",
  faces: 12
})

bloodstone.images.create([
	{url: "images/bloodstone1.jpg"},
	{url: "images/bloodstone2.jpg"},
	{url: "images/bloodstone3.jpg"}
])

zircon = Jewel.create({
  name: "Zircon",
  description: "Zircon is our most coveted and sought after gem. You will pay much to be the proud owner of this gorgeous and high shine gem.",
  shine: 70,
  price: 1100,
  rarity: 2,
  color: "Aqua",
  faces: 6
})

zircon.images.create([
	{url: "images/zircon1.jpg"},
	{url: "images/zircon2.jpg"},
	{url: "images/zircon3.jpg"}
])


