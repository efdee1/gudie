import 'package:flutter/material.dart';
import 'package:hoc/Class/model.dart';


List<CategoryModel>getCategories(){
  List <CategoryModel> category = new List<CategoryModel>();
  CategoryModel categoryModel = new CategoryModel();

//1

  categoryModel. categoryName = "Women";
  categoryModel.image = "assets/real.jpeg";
  categoryModel.price = "#7000";
  category.add(categoryModel);
//2
  categoryModel = new CategoryModel();
  categoryModel. categoryName = "Men";
  categoryModel.image = "assets/real.jpeg";
  categoryModel.price = "#7000";
  category.add(categoryModel);
//3
  categoryModel = new CategoryModel();
  categoryModel. categoryName = "Office";
  categoryModel.image = "assets/real.jpeg";
  categoryModel.price = "#7000";
  category.add(categoryModel);
//4
  categoryModel = new CategoryModel();
  categoryModel. categoryName = "Household";
  categoryModel.image = "assets/real.jpeg";
  categoryModel.price = "#7000";
  category.add(categoryModel);
//5
  categoryModel = new CategoryModel();
  categoryModel. categoryName = "Sport";
  categoryModel.image = "assets/real.jpeg";
  categoryModel.price = "#7000";
  //categoryModel.imageUrl="https://images.unsplash.com/photo-1535914254981-b5012eebbd15?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);

  return category;

}

