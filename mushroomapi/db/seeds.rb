# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


mushrooms =  [
    {
        latin_name: "Amanita muscaria",
        common_name: ["Fly agaric", "Fly amanita"],
        confused_with: ["Amanita caesarea"],
        region: ["Worldwide"],
        habitat: "Native to conifer and deciduous woodlands throughout the temperate and boreal region of the Northern Hemisphere. It forms symbiotic relationships with many trees, including pine, spruce, fir, birch, and cedar.",
        fairy_rings: true,
        characteristics: {
            psychoactive: true,
            poisonous: true,
            deadly: false,
            cap: ["flat", "convex"],
            hymenium: ["free"],
            sporePrint: ["white"],
            ecology: ["mycorrhizal"],
        },
        img_url: "https://images.unsplash.com/photo-1508018151423-1b1e201c4203?ixlib=rb-0.3.5&s=bfd847c9e103c14b5aa2393003ef7131&auto=format&fit=crop&w=634&q=80"
    },
    {
        latin_name: "Agaricus arvensis",
        common_name: ["Horse mushroom"],
        confused_with: ["Amanita"],
        region: ["Britain", "Iran", "North America"],
        habitat: "Appearing during the months of July-November, it is frequently found near stables, as well as in meadows. It is often found growing with nettles, and sometimes associates with spruce trees.",
        fairy_rings: true,
        characteristics: {
            psychoactive: false,
            posionous: false,
            deadly: false,
            cap: ["convex"],
            hymenium: ["free"],
          scoreprint: ["brown", "black-brown"],
          ecology: ["saprotrophic"],
        },
        img_url: "https://cdn.pixabay.com/photo/2016/03/13/16/13/horse-mushroom-1254040_960_720.jpg"
    },
    {
        latin_name: "Agaricus campestris",
        common_name: ["Field mushroom", "Meadow mushroom"],
        confused_with: ["Amanita bisporigera"],
        region: ["Asia", "Europe", "Northern Africa", "Australia", "New Zealand", "North America"],
        habitat: "Common in fields and grassy areas after rain from late summer onwards worldwide. It is often found on lawns in suburban areas",
        fairy_rings: true,
        characteristics: {
            psychoactive: false,
            posionous: false,
            deadly: false,
            cap: ["convex", "flat"],
            hymenium: ["free"],
          scoreprint: ["brown"],
          ecology: ["saprotrophic"],
        },
        img_url: "http://www.fichasmicologicas.com/typo3temp/pics/5cf3e53469.jpg"
    },
    {
        latin_name: "Armillaria mellea",
        common_name: ["Honey fungus"],
        confused_with: [],
        region: ["Northern Asia", "Europe", "North America", "South Africa"],
        habitat: "Armillaria mellea is widespread in northern temperate zones. The fungus grows parasitically on a large number of broadleaf trees. It fruits in dense clusters at the base of trunks or stumps.",
        fairy_rings: false,
        characteristics: {
            psychoactive: false,
            posionous: false,
            deadly: false,
            cap: ["convex", "flat"],
            hymenium: ["adnate", "subdecurrent"],
          scoreprint: ["white"],
          ecology: ["parasitic"],
        },
        img_url: "https://cdn.pixabay.com/photo/2017/10/08/19/44/armillaria-mellea-2831291_960_720.jpg"
    },
    {
        latin_name: "Flammulina velutipes",
        common_name: ["Enoki", "Enokitake", "Enokidake", "Golden needle mushroom", "Lily mushroom"],
        confused_with: [],
        region: ["Asia", "Europe", "North America"],
        habitat: "The mushroom naturally grows on the stumps of the Chinese Hackberry tree, but also on other trees, such as mulberry and persimmon trees.",
        fairy_rings: false,
        characteristics: {
            psychoactive: false,
            posionous: false,
            deadly: false,
            cap: ["convex"],
            hymenium: ["adnexed"],
          scoreprint: ["white"],
          ecology: ["saprotrophic"],
        },
        img_url: "http://www.midwestmycology.org/images/Species%20pictures/Flammulina%20velutipes/On%20page/Flammulina%20Velutipes%203%20cluster.jpg"
    },
    {
        latin_name: "Grifola frondosa",
        common_name: ["Maitake mushroom", "Hen-of-the-woods", "Ram's head", "Sheep's head"],
        confused_with: ["Laetiporus sulphureus"],
        region: ["North America", "Japan"],
        habitat: "Grows on living hardwoods (especially oaks) and occasionally on conifers.",
        fairy_rings: false,
        characteristics: {
            psychoactive: false,
            posionous: false,
            deadly: false,
            cap: ["offset", "indistinct"],
            hymenium: ["decurrent"],
          scoreprint: ["white"],
          ecology: ["parasitic"],
        },
        img_url: "https://c1.staticflickr.com/8/7152/6486237693_f4ae4f432b_b.jpg"
    },
    {
        latin_name: "Gyromitra esculenta",
        common_name: ["Beefsteak morel", "Lorchel"],
        confused_with: [],
        region: ["Scandinavia", "Eastern Europe", "Upper Great Lakes of North America"],
        habitat: "Grows on sandy soil in temperate coniferous forest and occasionally in deciduous woodlands. Among conifers it is mostly found under pines , but also sometimes under aspen.",
        fairy_rings: false,
        characteristics: {
            psychoactive: false,
            posionous: false,
            deadly: true,
            cap: ["convex"],
            hymenium: ["irregular"],
          scoreprint: ["yellow", "buff"],
          ecology: ["saprotrophic", "mycorrihizal"],
        },
        img_url: "https://c1.staticflickr.com/4/3695/8915950671_5e91f53f98_b.jpg"
    },
    {
        latin_name: "Morchella esculenta",
        common_name: ["Morel", "Morel yellow", "True Morel", "Morel mushroom", "Sponge morel"],
        confused_with: ["Morel crassipes"],
        region: ["Asia", "Europe", "North America", "Africa"],
        habitat: "Grows in calcareous or nutrient-rich soil, sometimes amongst woodchips or on fire sites, often in disturbed areas. Also in woodland, evidently mycorrhizal with pine, spruce and other conifers at some stage of the lifecycle.",
        fairy_rings: false,
        characteristics: {
            psychoactive: false,
            posionous: false,
            deadly: false,
            cap: ["conical", "convex"],
            hymenium: ["irregular"],
          scoreprint: ["yellow", "cream"],
          ecology: ["mycorrhizal", "saprotrophic"],
        },
        img_url: "https://thumbs.dreamstime.com/b/common-morel-fungus-morchella-esculenta-two-forest-41176798.jpg"
    },
    {
        latin_name: "Pleurotus ostreatus",
        common_name: ["Oyster mushroom", "Oyster shelf", "Tree oyster"],
        confused_with: [],
        region: ["Asia", "Europe", "South America", "Africa", "North America"],
        habitat: "Found from mid Fall to mid December and seems to prefer sugar maple and occasionally beech, or other hardwoods.  These are likely to be on living mature trees with obvious signs they are on the way out or occasionally on dead wood. They can be very high in the tree and grow in enormous numbers.",
        fairy_rings: false,
        characteristics: {
            psychoactive: false,
            posionous: false,
            deadly: false,
            cap: ["offset"],
            hymenium: ["decurrent"],
          scoreprint: ["white"],
          ecology: ["saprotrophic"],
        },
        img_url: "http://www.mykoweb.com/CAF/photos/large/Pleurotus_ostreatus%28fs-03%29.jpg"
    },
    {
        latin_name: "Pluteus cervinus",
        common_name: ["Deer shield", "Deer fawn mushroom"],
        confused_with: [],
        region: ["North America"],
        habitat: "Usually a woodland species, and is not generally found on woodchips in urban areas. It can be found fruiting on very rotten logs almost any time of the year except when it's too cold or snow is on the ground.",
        fairy_rings: false,
        characteristics: {
            psychoactive: false,
            posionous: false,
            deadly: false,
            cap: ["flat"],
            hymenium: ["free"],
          scoreprint: ["salmon", "reddish-brown"],
          ecology: ["saprotrophic"],
        },
        img_url: "https://www.mushroomexpert.com/images/kuo4/pluteus_cervinus_13.jpg"
    },
    {
        latin_name: "Tremella fuciformis",
        common_name: ["Snow fungus", "Silver ear fungus", "White jelly mushroom"],
        confused_with: [],
        region: ["Asia", "North America", "South America", "Central America", "Caribbeain", "Australia", "New Zealand", "Pacific Islands"],
        habitat: "Following its host, fruit bodies are typically found on dead, attached or recently fallen branches of broadleaf trees.",
        fairy_rings: false,
        characteristics: {
            psychoactive: false,
            posionous: false,
            deadly: false,
            cap: [],
            hymenium: [],
          scoreprint: ["white"],
          ecology: ["saprotrophic"],
        },
        img_url: "http://www.indianamushrooms.com/images/Tremella_fuciformis_88.JPG"
    },
    {
        latin_name: "Volvariella volvacea",
        common_name: ["Paddy straw mushroom", "Straw mushroom"],
        confused_with: ["Amanita phalloides"],
        region: ["Asia", "North America"],
        habitat: "Grows well between 28 and 35°C. It is a fast growing mushroom compared with most other cultivated mushrooms",
        fairy_rings: false,
        characteristics: {
            psychoactive: false,
            posionous: false,
            deadly: false,
            cap: ["conical", "umbonate"],
            hymenium: ["free"],
          scoreprint: ["salmon", "pink"],
          ecology: ["saprotrophic"],
        },
        img_url: "https://files.shroomery.org/files/05-18/532106279-cluster2.jpg"
    },
    {
        latin_name: "Lentinula edodes",
        common_name: ["Shiitake", "Sawtooth oak mushroom", "Black forest mushroom", "Black mushroom", "Golden oak mushroom", "Oakwood mushroom"],
        confused_with: [],
        region: ["East Asia"],
        habitat: "Shiitake mushrooms grow in groups on the decaying wood of deciduous trees, particularly shii, chestnut, oak, maple, beech, sweetgum, poplar, hornbeam, ironwood, mulberry, and chinquapin.",
        fairy_rings: false,
        characteristics: {
            psychoactive: false,
            posionous: false,
            deadly: false,
            cap: ["convex"],
            hymenium: ["free"],
          scoreprint: ["white", "buff"],
          ecology: ["saprotrophic"],
        },
        img_url: "https://www.boletsdesoca.com/wp-content/uploads/2014/02/xiitake_donko_cultiu_01.jpg"
    },
    {
        latin_name: "Amanita phalloides",
        common_name: ["Death cap"],
        confused_with: ["Amanita caesarea", "Volvariella volvacea"],
        region: ["Europe", "North Africa", "Scandinavia"],
        habitat: "It appears most commonly under oaks, but also under beeches, chestnuts, horse-chestnuts, birches, filberts, hornbeams, pines, and spruces. In other areas, A. phalloides may also be associated with these trees or with only some species and not others.",
        fairy_rings: false,
        characteristics: {
            psychoactive: false,
            posionous: true,
            deadly: true,
            cap: ["convex", "flat"],
            hymenium: ["free"],
          scoreprint: ["white"],
          ecology: ["mycorrhizal"],
        },
        img_url: "http://www.mykoweb.com/CAF/photos/large/Amanita_phalloides_fs-09.jpg"
    },
    {
        latin_name: "Cantharellus cibarius",
        common_name: ["Chanterelle", "Golden chanterelle", "Girolle"],
        confused_with: ["Hygrophoropsis aurantiaca"],
        region: ["Europe", "North America", "Asia"],
        habitat: "They can grow in both uplands and lowlands and can often be found in washes or along trail edges and country dirt roads with mixed woods and a lot of shade.",
        fairy_rings: false,
        characteristics: {
            psychoactive: false,
            posionous: false,
            deadly: false,
            cap: ["infundibuliform"],
            hymenium: ["decurrent"],
          scoreprint: ["yellow", "cream"],
          ecology: ["mycorrhizal"],
        },
        img_url: "https://i.pinimg.com/originals/00/1c/bb/001cbb07ade180ad357d5f3d044ddb2d.jpg"
    },
    {
        latin_name: "Hericium erinaceus",
        common_name: ["Lion's Mane Mushroom", "Bearded tooth mushroom", "Satyr's Beard", "Bearded hedgehog mushroom", "Pom pom mushroom", "Bearded tooth fungus"],
        confused_with: ["Hygrophoropsis aurantiaca"],
        region: ["Europe", "North America", "Asia"],
        habitat: "It appears on hardwoods and its tendency to grow a single clump of dangling spines.",
        fairy_rings: false,
        characteristics: {
            psychoactive: false,
            posionous: false,
            deadly: false,
            cap: [],
            hymenium: ["decurrent"],
          scoreprint: ["white"],
          ecology: ["parasitic"],
        },
        img_url: "https://www.mushroomexpert.com/images/kuo2/hericium_erinaceus_01.jpg"
    },
    {
        latin_name: "Lactarius vinaceorufescens",
        common_name: ["Cinnamon Cap", "Brick top", "Yellow-staining milkcap", "Yellow-latex milky"],
        confused_with: ["Lactarius xanthogalactus"],
        region: ["North America"],
        habitat: "Grows scattered or in groups on the ground under pine between August and October. The species is known to develop mycorrhizal associations with Douglas fir.",
        fairy_rings: false,
        characteristics: {
            psychoactive: false,
            posionous: true,
            deadly: false,
            cap: ["depressed"],
            hymenium: ["decurrent"],
          scoreprint: ["white", "yellow"],
          ecology: ["mycorrhizal"],
        },
        img_url: "http://farm4.static.flickr.com/3065/2756870427_8500394f03.jpg"
    },
    {
        latin_name: "Amanita regalis",
        common_name: ["Royal fly agaric", "King of Sweden Amanita"],
        confused_with: ["Amanita muscaria"],
        region: ["Scandinavia", "Europe", "Alaska"],
        habitat: "A rare species typically found growing on the ground in mountainous forests, both deciduous and coniferous.",
        fairy_rings: true,
        characteristics: {
            psychoactive: false,
            posionous: true,
            deadly: false,
            cap: ["convex", "flat"],
            hymenium: ["free"],
          scoreprint: ["white"],
          ecology: ["mycorrhizal"],
        },
        img_url: "https://i.pinimg.com/originals/74/30/8f/74308f53201ff3126452371ad3cff864.jpg"
    },
    {
        latin_name: "Lactarius deliciosus",
        common_name: ["Saffron milk cap", "Red pine mushroom"],
        confused_with: [],
        region: ["Europe"],
        habitat: "Grows under conifers on acidic soils and forms a mycorrhizal relationship with its host tree.",
        fairy_rings: false,
        characteristics: {
            psychoactive: false,
            posionous: false,
            deadly: false,
            cap: ["depressed"],
            hymenium: ["decurrent"],
          scoreprint: ["tan"],
          ecology: ["mycorrhizal"],
        },
        img_url: "http://www.mykoweb.com/CAF/photos/large/Lactarius_deliciosus_fs-04.jpg"
    },
    {
        latin_name: "Coprinus comatus",
        common_name: ["Shaggy ink cap", "Lawyer's wig", "Shaggy Mane"],
        confused_with: ["Coprinopsis picacea"],
        region: ["Europe", "North America"],
        habitat: "Grows in groups in places which are often unexpected, such as green areas in towns. ",
        fairy_rings: false,
        characteristics: {
            psychoactive: false,
            posionous: false,
            deadly: false,
            cap: ["conical"],
            hymenium: ["free"],
          scoreprint: ["black"],
          ecology: ["saprotrophic"],
        },
        img_url: "http://www.mykoweb.com/CAF/photos/large/Coprinus_comatus_fs-07.jpg"
    }
]

mushrooms.to_json


mushrooms.each do |mushroom|
  Mushroom.create(mushroom)
end
