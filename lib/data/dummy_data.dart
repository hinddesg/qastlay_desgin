import 'package:qastlay/features/shop/models/category_model.dart';
import 'package:qastlay/utils/constants/image_strings.dart';

class TDummyData {

//   /// Banners

//   static final List<BannerModel> banners = [
//     BannerModel(imageUrl: CustomImages.banner1, targetScreen: TRoutes.order, active: false),
//     BannerModel(imageUrl: CustomImages.banner2, targetScreen: TRoutes.cart, active: true),
//     BannerModel(imageUrl: CustomImages.banner3, targetScreen: TRoutes.favourites, active: true),
//     BannerModel(imageUrl: CustomImages.banner4, targetScreen: TRoutes.search, active: true),
//     BannerModel(imageUrl: CustomImages.banner5, targetScreen: TRoutes.settings, active: true),
//     BannerModel(imageUrl: CustomImages.banner6, targetScreen: TRoutes.userAddress, active: true),
//     BannerModel(imageUrl: CustomImages.banner8, targetScreen: TRoutes.checkout, active: false),

//   ];



/// -- List of all Categories
  static final List<CategoryModel> categories = [
  // CategoryModel(id: '1', image: CustomImages.laptop, name: 'Laptop', ),
  // CategoryModel(id: '2', image: CustomImages.pc, name: 'PC', ),
  // CategoryModel(id: '3', image: CustomImages.phone, name: 'Mobile', ),
  // CategoryModel(id: '4', image: CustomImages.tablet, name: 'Tablet', ),
  // CategoryModel(id: '4', image: CustomImages.memoryCard, name: 'Memory Card', ),
];

  // ProductModel(
  // id: '001',
  // title: 'Leather brown Jacket',
  // price: 38000,
  // thumbnail: TImages.productImage64,
  // description:
  // 'This is a Product description for Leather brown Jacket.'
  // 'There are more things that can be added but'
  // 'i am just practicing and nothing else.',
  // brand:'',
  // categoryId: '16',
  //
  // ), // ProductModel

  // Dummy data for products
  final List<Map<String, dynamic>> products = [
  {

  // Laptop category
    "product_id": "101",
    "name": "HP Laptop 15-fc0010ne",
    "price": 199.99,
    "brand": "HP",
    "description": "Model name  HP Laptop 15-fc0010ne ,Screen size  15.6 Inches,Colour "
    " Gold,Hard disk size  512 GB,CPU model  Ryzen 5,Installed RAM memory size 8 GB,Operating system"
    "  Windows 11 Home,Special features  Digital, Comfortable, Flickering,Graphics card Integrated",

    "image":  "assets/images/products/laptop/HP Laptop 15-fc0010ne_labtop.png", // Dummy image URL
    "category_id": "1",
    "category_name": "Laptop",
  },
  {
    "product_id": "102",
    "name": "MSI GF75,17.3in Gaming Laptop",
    "price": 1.224,
    "brand": "MSI",
    "description": "Model name  GF75Screen size 173 Inches,Hard disk size 512 GB,CPU "
    "model Intel Core i5,Installed RAM memory size 8 GB,Operating system Windows 10,Special features"
    " Anti Glare Coating,Graphics card Dedicated,Graphics co-processor NVIDIA GeForce GTX 1650",

    "image":  "assets/images/products/laptop/msi_laptop.png",
    "category_id": "1",
    "category_name": "Laptop",
  },
  {
    "product_id": "103",
    "name": "dynabook Toshiba",
    "price": 812,
    "brand": "dynabook",
    "description": "Capacity: Win11 ,Style: Core i5 : 8GB : 256GB,Brand dynabook, "
    "Operating system Windows 11,Installed RAM memory size 8 GB,CPU model Core i5,CPU speed 3.4 GHz",

    "image": "assets/images/products/laptop/dynabook Toshiba_laptop.png",
    "category_id": "1",
    "category_name": "Laptop",
  },
  {
    "product_id": "104",
    "name": "Dell Inspiron 15 3520 2022",
    "price": 517,
    "brand": "DELL",
    "description": "Model name  Inspiron 15 3520Screen size 15.6 Inches,Colour Silver,"
    "Hard disk size 512 GB,CPU model Core i5,Installed RAM memory size  8 GB,Operating system"
    " Windows 11 Home,Special features 12th Gen Intel Core i5-1235U, 512GB SSD, 8 GB RAM, Dell "
    "Inspiron 15 3520 2022 Laptop, 15.6 Inch FHD, NVIDIA® GeForce® MX550 with 2GB GDDR6 Graphics12th "
    "Gen Intel Core i5-1235U, 512GB SSD, 8 GB RAM, Dell Inspiron 15 3520 2022 Laptop",

    "image": "assets/images/products/laptop/Dell Inspiron_laptop.png",
    "category_id": "1",
    "category_name": "Laptop",
  },

  // PC category
  {
  "product_id": "105",
  "name": "HP ProOne 440 Desktop",
  "price": 734,
  "brand": "HP",
  "description": "Operating system  Windows 11 ProCPU model Intel Core i7,CPU speed 4.5"
  " GHz,Cache size 16 GB,Graphics card description Integrated,Graphics co-processor Intel"
  " UHD Graphics 630,Memory storage capacity 1 TB,Memory slots available 2,Specific uses "
  "for product Everyday Use, Education, Business",

  "image": "assets/images/products/pc/HP ProOne_pc.png",
  "category_id": "2",
  "category_name": "PC",
  },
  {
  "product_id": "106",
  "name": "Lenovo IdeaCentre A340",
  "price": 448,
  "brand": "Lenovo",
  "description": "Operating system  Windows 11 HomeCPU model Core i5,Graphics "
  "card description Integrated,Graphics co-processor Integrated Graphics,Memory storage "
  "capacity 512 GB,Specific uses for product Personal, BusinessPersonal computer design "
  "type  All in One,Screen size  23.8 Inches,Installed RAM memory size  8 GB",

  "image": "assets/images/products/pc/Lenovo IdeaCentre_pc.png",
  "category_id": "2",
  "category_name": "PC",
  },
  {
    "product_id": "107",
    "name": "Dell OptiPlex 7450",
    "price": 271.40,
    "brand": "Lenovo",
    "description": "Operating system  Windows 10 ProCPU model  Core i5 6500,"
    "CPU speed  3.2 GHz,Cache size  8 GB,Graphics card description  Dedicated,"
    "Graphics co-processor  Intel,Memory storage capacity  8 GB,Specific"
    " uses for product  Business,",

    "image": "assets/images/products/pc/Lenovo IdeaCentre_pc.png",
    "category_id": "2",
    "category_name": "DELL",
  },
  {
    "product_id": "108",
    "name": " HP ProOne 440  Desktop",
    "price": 740,
    "brand": "HP",
    "description": "Operating system  Windows 11 HomeCPU model Core i5,Graphics "
    "card description Integrated,Graphics co-processor Integrated Graphics,Memory storage "
    "capacity 512 GB,Specific uses for product Personal, BusinessPersonal computer design "
    "type  All in One,Screen size  23.8 Inches,Installed RAM memory size  8 GB",

    "image": "assets/images/products/pc/HP ProOne_pc.png",
    "category_id": "2",
    "category_name": "PC",
  },


  //Mobile
    {
    "product_id": "109",
    "name": "Samsung Galaxy A05s",
    "price": 104,
    "brand": "SAMSUNG",
    "description": "Brand SAMSUNG Operating system Android 13.0,"
        "Installed RAM memory size 4 GB,CPU model Snapdragon,"
        "Memory storage capacity 128 GB",

    "image": "assets/images/products/phone/Samsung.png",
    "category_id": "3",
    "category_name": "Mobile",
  },
    {
      "product_id": "110",
      "name": "OPPO A76 Smartphone",
      "price": 108,
      "brand": "OPPO",
      "description": "Operating system  Android "
          "11.0Installed RAM memory size 4 GB,"
          "CPU model Snapdragon,CPU speed 2.4",

      "image": "assets/images/products/phone/A76.png",
      "category_id": "3",
      "category_name": "Mobile",
    },
    {
      "product_id": "111",
      "name": "Honor X7b",
      "price": 160,
      "brand": "HONOR",
      "description": "Brand HONOR operating system  Magic OS 7.2,"
          " Android 13.0,Installed RAM memory size 8 GB,"
          "CPU model Snapdragon,CPU speed 2.4 GHz",

      "image": "assets/images/products/phone/Honor.png",
      "category_id": "3",
      "category_name": "Mobile",
    },
    {
      "product_id": "112",
      "name": "Samsung Galaxy S20",
      "price": 149.47,
      "brand": "SAMSUNG",
      "description": "Brand  SAMSUNG Operating system Android,"
          "Installed RAM memory size 12 GB,CPU model Snapdragon,"
          "Memory storage capacity 128 GB",

      "image": "assets/images/products/phone/S20.png",
      "category_id": "3",
      "category_name": "Mobile",
    },
  ];


//   /// -- List of all Brand Categories


}