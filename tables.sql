drop database if exists vacations;
create database vacations;
use vacations;

create table users (
	id int auto_increment primary key,
	first_name varchar(255),
	last_name varchar(255),
	address_1 varchar(255),
	address_2 varchar(255),
	city varchar(255),
	state varchar(255),
	zip int,
	email varchar(255),
	password varchar(255),
	remember_token varchar(255),
	created_at datetime,
	updated_at datetime
);

create table destinations (
	id int auto_increment primary key,
	name varchar(255),
	description varchar(255),
	dest_date date,
	price decimal(9,2),
	discount_price decimal(9,2),
	default_image int
 
);

create table destination_image (
	destination_id int,
	image_name varchar(255),
	description varchar(255)
);

create table purchase (
	id int auto_increment primary key,
	user_id int,
	destination_id int,
	amount decimal(9,2),
	description varchar(255),
	paid_in_full boolean, 
	confirmation_code int,
	refunded boolean 
);


INSERT into users (first_name,last_name,email,phone) values
("Billy", "Bird", "William.Bird13@gmail.com","505-452-6156");

INSERT into destinations (name,dest_date,price,discount_price) values
("Galapagos Islands", "2016-08-01",2900.00,2000.00),
("Brazil", "2016-05-09",4000.00,2700.00),
("Mt. Fuji", "2017-02-10",2900.00,2100.00),
("Greece", "2016-05-09",1500.00,900.00),
("Australia", "2016-10-08",2115.00,1800.00);

INSERT into destinations (name,dest_date,price,discount_price) values
("Japan","2015-01-31",2600.00,2000.00);

UPDATE destinations set default_image = "hawaii_1.jpg" where name = "Hawaii";
UPDATE destinations set default_image = "jamaica_1.jpg" where name = "Jamaica";
UPDATE destinations set default_image = "florida_1.jpg" where name = "Florida";
UPDATE destinations set default_image = "africa_1.jpg" where name = "Africa";
UPDATE destinations set default_image = "bahamas_1.jpg" where name = "Bahamas";
UPDATE destinations set default_image = "disney_world_1.jpg" where name = "Disney World";
UPDATE destinations set default_image = "galapagos_island_1.jpeg" where name = "Galapagos Islands";
UPDATE destinations set default_image = "brazil_1.jpg" where name = "Brazil";
UPDATE destinations set default_image = "mt_fuji_1.jpg" where name = "Mt. Fuji";
UPDATE destinations set default_image = "greece_1.jpg" where name = "Greece";
UPDATE destinations set default_image = "australia_1.jpg" where name = "Australia";
UPDATE destinations set default_image = "mexico_1.jpg" where name = "Mexico";


UPDATE destinations set description = "3 days/2 nights" where name = "Hawaii";
UPDATE destinations set description = "4 days/3 nights" where name = "Jamaica";
UPDATE destinations set description = "3 days/2 nights" where name = "Florida";
UPDATE destinations set description = "6 days/5 nights" where name = "Africa";
UPDATE destinations set description = "5 days/4 nights" where name = "Bahamas";
UPDATE destinations set description = "3 days/2 nights" where name = "Disney World";
UPDATE destinations set description = "5 days/4 nights" where name = "Galapagos Islands";
UPDATE destinations set description = "7 days/6 nights" where name = "Brazil";
UPDATE destinations set description = "5 days/4 nights" where name = "Mt. Fuji";
UPDATE destinations set description = "4 days/3 nights" where name = "Greece";
UPDATE destinations set description = "6 days/5 nights" where name = "Australia";
UPDATE destinations set description = "5 days/4 nights" where name = "Mexico";

INSERT into destination_image (destination_id,image_name) values
("1","hawaii_2.jpg");

INSERT into destination_image (destination_id,image_name) values
("1","hawaii_3.jpg"),
("1","hawaii_4.jpg"),
("1","hawaii_5.jpg");

INSERT into destination_image (destination_id,image_name) values
("3","florida_2.jpg"),
("3","florida_3.jpg"),
("3","florida_4.jpeg"),
("3","florida_5.jpg");

INSERT into destination_image (destination_id,image_name) values
("2","jamaica_2.jpg"),
("2","jamaica_3.jpg"),
("2","jamaica_4.jpg"),
("2","jamaica_5.jpg");

INSERT into destination_image (destination_id,image_name) values
("5","africa_2.jpg"),
("5","africa_3.jpeg"),
("5","africa_4.jpg"),
("5","africa_5.jpg");

INSERT into destination_image (destination_id,image_name) values
("6","bahamas_2.jpg"),
("6","bahamas_3.jpg"),
("6","bahamas_4.jpg"),
("6","bahamas_5.png");

INSERT into destination_image (destination_id,image_name) values
("7","disney_world_2.jpg"),
("7","disney_world_3.jpg"),
("7","disney_world_4.jpg"),
("7","disney_world_5.jpg");

INSERT into destination_image (destination_id,image_name) values
("8","galapagos_island_2.jpg"),
("8","galapagos_island_3.jpg"),
("8","galapagos_island_4.jpg"),
("8","galapagos_island_5.jpg");

INSERT into destination_image (destination_id,image_name) values
("9","brazil_2.jpg"),
("9","brazil_3.jpg"),
("9","brazil_4.jpg"),
("9","brazil_5.jpg");

INSERT into destination_image (destination_id,image_name) values
("10","mt_fuji_2.jpg"),
("10","mt_fuji_3.jpg"),
("10","mt_fuji_4.jpg"),
("10","mt_fuji_5.jpg");

INSERT into destination_image (destination_id,image_name) values
("11","greece_2.jpg"),
("11","greece_3.jpg"),
("11","greece_4.jpg"),
("11","greece_5.jpg");

INSERT into destination_image (destination_id,image_name) values
("12","australia_2.jpg"),
("12","australia_3.jpg"),
("12","australia_4.jpg"),
("12","australia_5.jpg");

INSERT into destination_image (destination_id,image_name) values
("13","mexico_2.jpg"),
("13","mexico_3.jpg"),
("13","mexico_4.jpg"),
("13","mexico_5.jpg");


UPDATE destinations set description =
"Experience Luxury At Our Legendary Hawaii Resort 
Distinguished Among Hotels in Honolulu The Kahala Hotel & Resort is Hawaii’s
 reigning luxury resort among hotels in Honolulu, set on a white sand beach
 just ten minutes from the world-class shopping and entertainment of Waikiki, 
 Oahu.This legendary hideaway Hawaii resort in Honolulu's plush Kahala district
 is a favorite with presidents, international royalty and celebrities. From the
 moment you arrive, you will know that you are truly somewhere special. This luxurious
  oceanfront resort features 338 rooms and suites, romantic wedding venues, five stylish
   restaurants and a world-class spa. Visit our leisure facilities, CHI Health & Energy
    Fitness Center, lush tropical gardens and the private lagoon with our own resident dolphins.
With its great Hawaii vacation packages, and its unique beachfront location, shouldn't you be at The Kahala soon?" 
WHERE name = "Hawaii";

UPDATE destinations set description =
"Our Hotel Montego Bay All-Inclusive Hotel In Jamaica Highlighted by manicured
 gardens and pristine Caribbean beaches, Hyatt Ziva Rose Hall welcomes vacationers
 and families to explore the colorful culture and activities of Montego Bay.
Sophisticated, yet approachable, this luxurious Montego Bay all-inclusive hotel
elevates your Jamaica vacation with artisan dining experiences, deep relaxation,
infinite adventure, and family entertainment. Experience a stunning island
escape with all-inclusive splendor.Tucked between Jamaica’s Blue Mountains
and the crystalline sea, Hyatt Ziva Rose Hall is a paradise of relaxation
and recreation. Rejuvenate body and soul at our Zen Spa or enjoy shopping
and dining at Rose Hall Village. Sip a Red Stripe by our resort pools with
views of the sea while the kids play in our KidZ Club. From delectable cuisine,
pool and beach butlers and a fitness center to luxury suites as unique as you are,
Hyatt Ziva Rose Hall is a Caribbean paradise that captivates your spirit. Elevate
your vacation in our Hyatt Club Suites with amenities such as sunscreen and body
lotion and access to an exclusive Club Level Lounge."
WHERE name = "Jamaica";

UPDATE destinations set description =
"A WORLD OF DIFFERENCE at trump international beach resort Trump International
 Beach Resort is a world of indulgent pleasures waiting for you on the shores
of beautiful Miami Beach. Ideally located in the exclusive enclave of Sunny 
Isles, this Miami Beach hotel masterpiece, created by Donald Trump and Dezer
Properties, rises as a striking landmark to luxury amidst the white sands
of Miami Beach.Enjoy our resort's commitment to personal service that is distinctly
European within a carefree tropical oasis of pampering and palm trees. Relax
and rejuvenate with a soothing massage in a private oceanfront cabana. Dine
at the fabulous Neomi's, where All-American cuisine meets culinary influences
from places near and far. Fall into a chaise lounge at the grotto-style pool.
Unwind to breathtaking views of the ocean and Intracoastal Waterway from your
private balcony. Shop on site and at nearby boutiques that rival those of the
world's fashion centers or spend a relaxing day at our spa. There is no shortage
of indulgences here and you can rest assured that every need and every request
you have will be promptly seen by the most attentive staff at our Miami Beach
hotel resort in Sunny Isles Beach, FL.your private oceanfront getaway. Widely
regarded as one of the premier Miami Beach hotel destinations, Trump International
Beach Resort is home to 355 hotel rooms and guest suites, each of which is a
stunning combination of tropical charm and Trump flair. There is no compromise 
here. Best of all, you'll have the pleasure of experiencing our resort's commitment 
to five-star service each and every day.Trump International Beach Resort is 
your oceanfront Miami Beach hotel and spa paradise in Sunny Isles Beach, 
each day you spend with us is a promise of a world of difference."
WHERE name = "Florida";

UPDATE destinations set description =
"Lounge in the intimate and secluded setting, pamper yourself at the U Spa 
by Constance and feast on exceptional cuisine created by our chefs from around 
the world. Families can choose our beach villas and complimentary Constance
kids club, while golf pros can retreat to our two 18-hole championship golf courses.
Designed by architectural mastermind Jean Marc Eynaud and designer David Edwards, 
Constance Le Prince Maurice is where style, space and architectural designs 
create the perfect hotel lifestyle. Peaceful by day, the hotel is amidst 
lush tropical greenery. Our infinity pool and natural reserves add to 
the décor by instilling a sense of tranquillity. Picturesque at night, 
the structure of the hotel is enhanced by warm lights positioned to harmonise 
with the environment. Inspired by Feng Shui principles to create the perfect 
sense of harmony, all beds stand high above floor level to help the circulation 
of Qi. In the first hall of the Archipel restaurant, internal concrete columns 
are at the centre of the hall so as to increase the concentration of energy in 
the centre."
WHERE name = "Africa";

UPDATE destinations set description =
"RELAX.... AND WELCOME TO PARADISE Atlantis has designed a comprehensive way 
for you to explore all of our room-types based on your preference and budget. 
This map represents multiple categories from value oriented vacations to 
exclusive ultra-luxurious experiences. No matter which room you choose, you 
receive complimentary access to Aquaventure (our 141-acre water park), beaches, 
pools, aquariums and restaurants throughout your stay. Sit back, take your time 
and explore the wonders of an Atlantis vacation. The iconic Royal Towers are 
the heartbeat of Atlantis and centrally located to all of the resort's premier 
attractions. Included in your stay is complimentary access to The Dig & Ruins 
Lagoon, Aquaventure water park, 11 pools, and the Atlantis Casino. Grand Suites 
at Royal Towers provides Atlantis guests with an opulent Master Bedroom offering 
splendid Caribbean beach views, a plush king-size bed, desk, two chairs, and 
a huge walk-in closet."
WHERE name = "Bahamas";

UPDATE destinations set description =
"Movie magic comes to life at Disney’s Hollywood Studios, awash in the glitz 
and glamour of Hollywood’s Golden Age. Step into the action with attractions 
based on blockbuster movies and top TV shows, and delight in exciting entertainment 
that puts you center stage. With the vibrancy of a bustling movie set, this park 
features 8 sections: Hollywood Boulevard, Echo Lake, Sunset Boulevard, Streets 
of America, Commissary Lane, Pixar Place, Mickey Avenue and Animation Courtyard 
areas. Revel in Victorian-style splendor and enjoy the comforts of home at this 
elegant Disney Resort hotel. Stay in a stately deluxe studio or multi-bedroom 
villa. Indulge in a luxurious massage at the full-service spa. Unwind on the 
beach as fireworks light up the sky over Cinderella Castle. Just one stop to 
Magic Kingdom park on the complimentary Resort Monorail, this timeless marvel 
evokes Palm Beach’s golden era. Deluxe studios and 1-bedroom villas sleep up 
to 5 Guests and 2-bedroom villas sleep up to 9—so there’s plenty of room for 
the family to unwind after an exhilarating day in the middle of the magic."
WHERE name = "Disney World";

UPDATE destinations set description =
"WELCOME TO THE HOTEL SAN VICENTE GALAPAGOS Hotel San Vicente Galapagos is 
dedicated to provide the highest quality of service and comfort to each 
and every of its guests. We like to complement your visit to the Galapagos 
as perfect as possible. We are proud to say that 
Hotel San Vicente has become one of the most popular of the Galapagos hotels 
on Isabela Island, which we believe is due to our standard of excellence and 
personal commitment to our guests. From our Galapagos hotel you can arrange a 
variety of land tours that are sure to leave you breathless. The natural beauty 
of the islands will amaze you while you enjoy a comfortable and superior service 
from the friendly staff of our Hotel San Vicente Galapagos. This fascinating 
island shelters most of the exotic species that exist in the Galapagos Islands, 
such as penguins, flamingos, blue sharks, endemic Galapagos sharks, blue-footed 
boobies, sea lions, marine iguanas, sea turtles, and a great variety of marine 
life. Isabela is also home to one of the largest active volcanoes of the islands, 
the Sierra Negra Volcano."
WHERE name = "Galapagos Islands";

UPDATE destinations set description =
"Casas da Vila has a rustic yet sophisticated decor and offers comfortable 
accommodation in trendy Trancoso. Situated near the beach, this luxury resort 
is within 1 mile of Praca da Independencia, Tancredo Neves Square, and Quadrado 
Square. Sao Joao Batista Church and Coqueiros Beach are also nearby. The 7 
individually decorated villas feature WiFi and room service. All of the rooms 
feature a balcony with garden views and hammocks. They are air-conditioned and 
come with living and dining areas, cable TV, and a private bathroom. Certain 
villas have kitchenettes and a private pools. This private resort features two 
outdoor pools, and a bistro. It is surrounded by nature and boasts a swimming 
pool with sun terrace. Guests can relax with drinks at the bar and have a meal 
in the restaurant or at the guesthouse’s pool. The breakfast menu offers a 
variety of tropical items and can be served at the lounge. Other amenities 
include coffee/tea in the lobby, concierge services, and dry cleaning."
WHERE name = "Brazil";

UPDATE destinations set description =
"Welcome to Hotel Mt. Fuji. Hotel Mt. Fuji is a highland resort hotel built 
near the banks of Lake Yamanaka in Yamanashi Prefecture to provide views of Mt. Fuji. 
With an elevation of roughly 1,100 meters, guests can enjoy fantastic scenery in 
all seasons, including Mt. Fuji and Lake Yamanaka below their eyes. The nearby 
region contains shrines and lakes that are part of a UNESCO World Heritage 
Site, allowing guests to experience both nature and culture. Majestic Mt. Fuji 
can also be seen in all seasons from the guest rooms, rotenburo (open-air baths), 
and courtyard, all of which are popular spots for taking photographs. At the hotel’s 
three restaurants, guests can enjoy Japanese food and other types of cuisine. 
The hotel is in a convenient location that is easy to get to; it takes roughly 
two hours to Hotel Mt. Fuji by highway bus from Shinjuku (Tokyo). Wireless, 
high-speed Internet access is provided at no charge throughout the hotel and 
all guest rooms."
WHERE name = "Mt. Fuji";

UPDATE destinations set description =
"Grecotel Amirandes Number of rooms: 212. Amirandes 5 star hotel in Crete, 
is a sparkling exclusive resort on the coast of east Crete. Themed around the 
lagoons that swirl through its centre, the luxury hotel in Crete covers a 
70,000 sq m beachfront estate comprising of eight restaurants, sandy beaches, 
Elixir Spa with authentic Ayurveda treatments, outdoor Olympic-size seawater pool, 
over 60 private pools and extensive children's facilities. The sophisticated 
guestrooms suites and villas feature indulgent details such as private gyms, 
home cinema and state-of-the-art bathrooms with colour-therapy and aromatherapy 
Jacuzzi bathtubs. Refined and considerate service mirrors the Resort's meticulous 
attention to detail and utmost respect for the privacy of its guests."
WHERE name = "Greece";

UPDATE destinations set description =
"Xanadu Resort is a beachside highrise apartment resort located at the northern 
end of the Gold Coast. We have a wide selection of uniquely decorated and furnished 
very large one and two bedroom two bathroom apartments (three per floor) - 
140 square meters. Our resort facilities include swimming pools, tennis courts, 
sauna, spa pools, free car parking and free in-room WiFi. The beach is 2 mins 
walk, playground at Hollindale Park 5 mins walk, bird park (Macintosh Island) 
15 mins walk, children’s water park and playground 20 mins walk (Broadwater) 
plus many other parks and places of interest nearby."
WHERE name = "Australia";

UPDATE destinations set description =
"Nestled in a captivating setting on one of the world's most alluring beaches, 
The St. Regis Punta Mita Resort promises to offer an experience that transcends 
ordinary travel, immersing guests in unsurpassed luxury. As the first St. Regis 
property in all of Latin America, the resort features discerning service, 
120 exquisite accommodations, thoughtful amenities, and spectacular grounds. 
It will energize, rejuvenate and refresh the mind, body and spirit with two 
golf courses, tennis courts, three infinity pools, a Spa, and superior international 
cuisine among its seemingly endless offerings. Honored with prestigious AAA Five 
Diamond Award, the St. Regis Punta Mita Resort’s signature restaurant offers a 
seductive blend of bespoke service, casual luxury, romantic ocean views and 
distinctive flavors - the name Carolina pays homage to Caroline Astor. This 
epicurean destination captures the resort’s uncompromised style and promises 
a memorable experience for even the most discerning palate."
WHERE name = "Mexico";

UPDATE destinations set ten_percent = 90 where name = "Hawaii";
UPDATE destinations set ten_percent = 140 where name = "Jamaica";
UPDATE destinations set ten_percent = 70 where name = "Florida";
UPDATE destinations set ten_percent = 300 where name = "Africa";
UPDATE destinations set ten_percent = 290 where name = "Bahamas";
UPDATE destinations set ten_percent = 140 where name = "Disney World";
UPDATE destinations set ten_percent = 200 where name = "Galapagos Islands";
UPDATE destinations set ten_percent = 270 where name = "Brazil";
UPDATE destinations set ten_percent = 210 where name = "Mt. Fuji";
UPDATE destinations set ten_percent = 90 where name = "Greece";
UPDATE destinations set ten_percent = 180 where name = "Australia";
UPDATE destinations set ten_percent = 200 where name = "Mexico";

UPDATE destinations set percent_off = 35 where name = "Hawaii";
UPDATE destinations set percent_off = 39 where name = "Jamaica";
UPDATE destinations set percent_off = 22 where name = "Florida";
UPDATE destinations set percent_off = 38 where name = "Africa";
UPDATE destinations set percent_off = 15 where name = "Bahamas";
UPDATE destinations set percent_off = 40 where name = "Disney World";
UPDATE destinations set percent_off = 31 where name = "Galapagos Islands";
UPDATE destinations set percent_off = 65 where name = "Brazil";
UPDATE destinations set percent_off = 28 where name = "Mt. Fuji";
UPDATE destinations set percent_off = 40 where name = "Greece";
UPDATE destinations set percent_off = 15 where name = "Australia";
UPDATE destinations set percent_off = 23 where name = "Mexico";

UPDATE destinations set amenities = "Welcome gifts just for keiki
In your room...
 Nightly turn-down service
Private lanai
Built-in entertainment center with large flat screen TV, media hub for internet access, iPod, movies on demand and more
Bedside iPod clock-radio
Mini refrigerators stocked with bottled water replenished daily
Coffee maker and Kona Blend coffee service
Safe for valuables
Robes and slippers
Iron and ironing board, hair dryer" where name = "Hawaii";
UPDATE destinations set amenities = "Complimentary  Amenities & Services

Guests enjoy a welcome cocktail upon arrival, invitation to the Manager's weekly Cocktail Reception (Wednesdays), and nightly entertainment.

Complimentary use of Fitness Centre with instructor.

Use of all non-motorized water sports.

Supervised activities at the Pineapple Kids Club.

Formal Afternoon Tea served daily at the Cocktail Bar, featuring light snacks, tea and Blue Mountain Coffee.

Daily shuttle service to Montego Bay for shopping or to Tryall Golf Club. The shuttle is available for church service every Sunday morning. Other transfers and ground transportation are available through the resort's transportation service. Bell staff is happy to transport you around the property via golf carts." where name = "Jamaica";
UPDATE destinations set amenities = "Florida Keys Resort Features and Amenities Include:

1,100 foot palm-lined private beach
525-foot wooden fishing pier
Spa at Cheeca Lodge
Fitness Studio
Two heated swimming pools and one saltwater lagoon
Complete line of watersports including, snorkeling, family fishing trips, eco tours, sunset cruises, sailboats, paddleboards and parasailing.
Camp Cheeca
Cheeca Daily Tours
Six lighted tennis courts
9-hole par 3 golf course designed by Jack Nicklaus
Award-winning dining
TIki Bar
Over 4,600 square feet of event space
Fishing rods, sea kayaks & bicycles
Shade cabanas for beach chairs
Spa exercise classes
Valet parking
Concierge Services
Cheeca Signature Store - Click To Visit Our Online Store" where name = "Florida";
UPDATE destinations set amenities = "Room Amenities
All 14 rooms feature comforts like memory foam beds and premium bedding, while conveniences include living rooms and refrigerators. Guests will also find furnished lanais, WiFi, and minibars." where name = "Africa";
UPDATE destinations set amenities = "RELAX.... AND WELCOME TO PARADISE

Atlantis has designed a comprehensive way for you to explore all of our room-types based on your preference and budget. This map represents multiple categories from value oriented vacations to exclusive ultra-luxurious experiences. No matter which room you choose, you receive complimentary access to Aquaventure (our 141-acre water park), beaches, pools, aquariums and restaurants throughout your stay. Sit back, take your time and explore the wonders of an Atlantis vacation." where name = "Bahamas";
UPDATE destinations set amenities = "Disney Monorail Transportation

Take the quick and complimentary Resort Monorail to Magic Kingdom park and—with one transfer—Epcot. Disney Water Transportation

Breeze to Disney’s Wilderness Lodge and Disney’s Fort Wilderness Resort & Campground by water taxi. Complimentary Parking

Self-parking at theme parks and Resort hotels is complimentary for Resort Guests. Laundry and Dry Cleaning Services

This Resort hotel offers a 24-hour self-service laundry room on the 1st floor, as well as dry" where name = "Disney World";
UPDATE destinations set amenities = "Restaurant & Bar
A beautiful space for our guests to wine and dine with spectacular views across the estate and out to the sea, on a clear day. The Royal Palm Restaurant is a combination of elegant colonial style and traditional island design and offers the ultimate indoor and outdoor dining experience. The warm mahogany furniture reflects the glow of the open fire which divides the bar and restaurant, and on warmer nights you can enjoy the terrace under the equatorial stars. Sport & Fitness
In addition to our outdoor pool and Jacuzzi, the Royal Palm has a small gym, indoor table tennis and two hard-surface tennis courts; rackets and balls are available from reception.
For the more adventurous, there is a lava tunnel on the Estate just waiting to be explored. If you want to go further afield, you can go horse riding or enjoy scenic hiking trails, jogging paths and off-road cycling routes using the hotel’s mountain bikes. Just off the coast, you will find some of the world’s most spectacular diving and snorkeling. Kayaking and surfing is also available." where name = "Galapagos Islands";
UPDATE destinations set amenities = "SPA
Ahh. Need we say more? At Palace Resorts, the art of relaxation is alive and well. Here, you'll find hydrating body wraps, deep-tissue massages and luxurious facials. Hydrotherapy, plunge pools, herbal steam rooms and more. Here's a list of the services we offer. It's everything you need to trade the normal life for a day spent in utter relaxation. Grab a robe, and step right this way. WATER JOURNEY

Initiate your hydrotherapy circuit with a revitalizing shower.
Detoxify your body with our herbal steam or sauna (5 to 10 min.)
Following each heat, stage cool off with the pressure shower or with the cool and warm lagoons (1 or 2 min.)
Hydrate during the whole hydrotherapy circuit.
Relax in our double whirlpool tub (10 or 15 min.)
Stimulate your feet in our hydrotherapy pool (10 or 15 min.)" where name = "Brazil";
UPDATE destinations set amenities = "Highland Resort Hotel & Spa is located at the foot of Mt. Fuji, a designated UNESCO World Heritage Site. The nearby region contains shrines and lakes that are part of the World Heritage Site. Highland Resort Hotel & Spa also adjoins and is the official hotel of Fuji-Q Highland, home to thrilling, world-class attractions. At the hotel's four restaurants, guests can enjoy Japanese food and other types of cuisine. The hotel is in a convenient location that is easy to get to; it takes roughly 1.5 hours to Highland Resort Hotel & Spa by highway bus from Shinjuku (Tokyo). Wireless, high-speed Internet access is provided at no charge throughout the hotel and all guest rooms. Fujiyama Onsen, a natural hot spring facility, and Fujiyama Museum, dedicated to famous images of Mt. Fuji, are also near the hotel and can be visited at no cost by staying guests. We hope you will enjoy the spectacular scenery of Mt. Fuji from the hotel, the thrilling attractions, and the tourist attractions near Mt. Fuj i!" where name = "Mt. Fuji";
UPDATE destinations set amenities = "Mykonos Grand is a unique resort on Mykonos, on one of the island’s most famous beaches Ayios Yiannis known for the glorious sunsets. The resort’s Cycladic architecture of cube shaped whitewashed buildings linked by pathways and terraces is combined with classic interior ambience. The hotel offers 100 bedrooms and suites including Superior rooms and luxurious Suites with private pools. The resort’s facilities include an outstanding spa, tennis and squash courts, an impressive stone-built amphitheatre for inspiring yoga sessions." where name = "Greece";
UPDATE destinations set amenities = "The 4 star Novotel Twin Waters Resort is located on the Sunshine Coast in Queensland, only 5 minutes from the airport. The hotel has 361 rooms and is set in tropical gardens, surrounding a central private lagoon with sandy beaches. This is the perfect destination for a break or holiday with your partner or family. Guests have free access to windsurfers and kayaks and there are four restaurants and three bars to choose from, plus a Kids Club, day spa and a wide range of leisure activities to enjoy." where name = "Australia";
UPDATE destinations set amenities = "Hotel Valentin Imperial Maya is the new definition of paradise. Our 5 star Adults-Only (18+) All-Inclusive Resort is located a short 25 minutes from Cancun International Airport in the Riviera Maya. Set amid lavish gardens on a half-mile-long stretch of white sand beach named Playa Del Secreto (The Secret Beach), this magnificent award-winning resort boasts one of the largest swimming pools in Mexico. The location is ideal as one can easily reach Cancun and the world famous Mayan archaeological sites such as Tulum, Coba, and Chichen Itza, yet be removed enough to enjoy the casually elegant ambience of Valentin Imperial Maya. Escape into a world where your every wish is our command. Come indulge yourself....You deserve it! Valentin Imperial Maya Hotel & Spa is committed to preserve the environment by reducing the consumption of natural resources, promoting among our guests and staff, protection and respect for the environment through good environmental practices." where name = "Mexico";

UPDATE destinations set whats_popular = "North Shore of Oahu. The North Shore of Oahu refers to the geographic area between West Oahu’s Ka’ena Point and East Oahu’s Kahuku Point. The North Shore is most well-renowned for its larger than life waves during the Winter, breathtaking coastlines, and for attracting surfers from all around the globe. Famous North Shore surf-spots include Waimea Bay, Sunset Beach, and Banzai Pipeline (Ehukai Beach) The main hub in the North Shore is the historic Town of Hale’iwa, named after the first hotel opened on the North Shore by Benjamin Dillingham in 1898. Hale’iwa is definitely one of the coolest and most charming towns to visit in all of Hawaii with art galleries, local food spots, surf shops, a surf museum, gift shops, food trucks, yoga studios, and a great community of laid back residents.

" where name = "Hawaii";
UPDATE destinations set whats_popular = "Negril Beach. Also known as Seven Mile Beach, Negril Beach is one of Jamaica's most beautiful stretches of white sand and aqua sea. The beach extends from Bloody Bay to Long Bay and the Negril Cliffs south of town. Tucked within groves of coconut palms, many resorts and restaurants fringe the shore here. Water sports abound, and snorkelers will find schools of fish swimming in the clear waters. Be prepared for persistent hawkers prowling the beach." where name = "Jamaica";
UPDATE destinations set whats_popular = "Castillo de San Marcos. Located in the city of St. Augustine, The Castillo de San Marcos site is the oldest masonry fort in the United States. Given the fine state of the Castillo de San Marcos National Monument it’s difficult to believe that the fortress was built in the late 1600s. Its longevity is due to its design: a diamond-shaped rampart at each corner maximized firepower, and 14 feet thick walls reduced its vulnerability to attack. St Augustine itself is a small jewel of a city known as the oldest European settlement in the United States, full of romantic ambiance and old world charm." where name = "Florida";
UPDATE destinations set whats_popular = "Cape Town & Cape Peninsula
Cape Town and the Cape Peninsula up to Cape Point, are famous for scenic beauty; celebrity beaches; Table Mountain; whale-watching; world-class shopping, nightlife, food & wine; and a laid-back atmosphere. The Winelands
Discover the joys of SA’s award-winning wines and cuisine along any of the beautiful Cape wine routes, taking you through green valleys and historic towns." where name = "Africa";
UPDATE destinations set whats_popular = "Dominating the skyline on Paradise Island, this splashy, salmon-pink resort evocatively recreates the legend of Atlantis in a luxury hotel, entertainment complex, aquarium, and water park. Guests at the hotel score free entry into the popular 141-acre Aquaventure, a waterscape packed with high-speed slides, more than 20 pools, and a mile-long Lazy River Ride. In the marine habitat, hammerhead sharks and swordfish swim through sparkling open-air pools. Guests will also find many shops, restaurants, and entertainment venues on site. The fantasy sea theme continues throughout, capturing the imagination of young and old alike." where name = "Bahamas";
UPDATE destinations set whats_popular = "1. Trattoria al Forno at Disney’s Boardwalk – The newest Disney restaurant just opened its doors a few days ago. The menu features authentic Italian cuisine and wines – and is now an option on the Disney Dining Plan. Yum! 2. Exposition Park Food Trucks – While we’re on the topic of food, 2015 will give you time to check out the recently opened food trucks at Downtown Disney. This dedicated outdoor area also has live entertainment at night. Walt Disney World Pro Soccer Classic – Soccer fans can get their kicks at the Walt Disney World Pro Soccer Classic February 1-March 1 at ESPN Wide World of Sports Complex. In it, eight pro teams, including six Major League Soccer squads, will compete in 16 games." where name = "Disney World";
UPDATE destinations set whats_popular = "The Island's interesting volcanic geology, as well as its rich flora and fauna have been admired and studied by numerous travelers, scientists, and nature-lovers. Scientists are still faced with the mystery of how such a large diversity of species could develop in a remote location like the Galapagos Islands.

The main reason for tourists and nature lovers to visit the Galapagos Islands is the multitude of animals, freely romping about that are known to most people only from the Discovery Channel." where name = "Galapagos Islands";
UPDATE destinations set whats_popular = "June Parties (Festa Junina)
This celebration commemorates the birth of John the Baptist, a saint in the Roman Catholic Church. This takes place at the beginning of the Brazilian winter and allows the celebrants to thank St John for the rain and to celebrate rural life. The venue for this event is most typically a huge thatched tent. Men and women dress up as farm boys and –girls respectively, and many return to their rural hometowns to visit their families. In modern times, this festival has become more and more popular, even in urban areas. Therefore, it has become an occasion to wear grand outfits, sing, dance and party the night away. Square dancers are everywhere, turning parks and streets into giant dance floors." where name = "Brazil";
UPDATE destinations set whats_popular = "Mount Fuji is the single most popular tourist site in Japan, for both Japanese and foreign tourists. More than 200,000 people climb to the summit every year, mostly during the warmer summer months. Huts on the route up the mountain cater to climbers, providing refreshments, basic medical supplies, and room to rest. Many people start climbing Mount Fuji at night, as better to experience sunrise from the summit—Japan, after all, is nicknamed the Land of the Rising Sun. The sunrise from Mount Fuji has a special name, Goraiko." where name = "Mt. Fuji";
UPDATE destinations set whats_popular = "Lindos is a medieval village on the island of Rhodes that is made up of a network of cobbled streets amid whitewashed houses. Above the town rises the acropolis of Lindos, offering spectacular views of the surrounding harbors and coastline. Lindos beach and Saint Pauls beach are only a short distance from the town center." where name = "Greece";
UPDATE destinations set whats_popular = "The International Art Series will showcase two inspired exhibitions - Pop to popism (1 Nov 2014 –1 Mar 2015) at the Art Gallery of NSW and Chuck Close: Prints, Process and Collaboration (20 Nov 2014 - 15 Mar 2015) at the Museum of Contemporary Art. ‘Popular, witty, sexy and glamorous’ - Pop to popism will fill an entire floor of the gallery this summer with over 200 works from the Pop art era including art by Warhol, Lichtenstein, Koons, Haring, and Hockney. The MCA exhibition Chuck Close: Prints, Process and Collaboration, is the largest collection of Close's work ever presented in the southern hemisphere. One of America's best-loved visual artists, Close is famed for his large scale, photo-based portrait paintings. Purchase a Sydney International Art Pass to see both exhibitions and save 20% on the entry price. " where name = "Australia";
UPDATE destinations set whats_popular = "Acapulco is the original Mexican resort town which came into prominence by the 1950s as a getaway for Hollywood stars and millionaires. Still, Acapulco remains a popular tourist destination especially among Mexicans and as a spring break destination among US college students. No visit to Acapulco is complete without watching the cliff divers perform their impressive jumps into ocean. They have been doing it since the 1930s, although today the divers are professionals" where name = "Mexico";





INSERT into purchase (user_id,destination_id,amount) values 
("32","2","140"); 
INSERT into purchase (user_id,destination_id,amount) values 
("32","3","70");
INSERT into purchase (user_id,destination_id,amount) values 
("32","5","300");
INSERT into purchase (user_id,destination_id,amount) values 
("32","6","290");
INSERT into purchase (user_id,destination_id,amount) values 
("32","7","140");
INSERT into purchase (user_id,destination_id,amount) values 
("32","8","200");
INSERT into purchase (user_id,destination_id,amount) values 
("32","9","270");
INSERT into purchase (user_id,destination_id,amount) values 
("32","10","210");
INSERT into purchase (user_id,destination_id,amount) values 
("32","11","90");
INSERT into purchase (user_id,destination_id,amount) values 
("32","12","180");
INSERT into purchase (user_id,destination_id,amount) values 
("32","13","200");



UPDATE destinations set whats_included = "" where name = "Hawaii";
UPDATE destinations set whats_included = "" where name = "Jamaica";
UPDATE destinations set whats_included = "" where name = "Florida";
UPDATE destinations set whats_included = "" where name = "Africa";
UPDATE destinations set whats_included = "" where name = "Bahamas";
UPDATE destinations set whats_included = "" where name = "Disney World";
UPDATE destinations set whats_included = "" where name = "Galapagos Islands";
UPDATE destinations set whats_included = "" where name = "Brazil";
UPDATE destinations set whats_included = "" where name = "Mt. Fuji";
UPDATE destinations set whats_included = "" where name = "Greece";
UPDATE destinations set whats_included = "" where name = "Australia";
UPDATE destinations set whats_included = "" where name = "Mexico";














