package com.example.session07.controller;

import com.example.session07.model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@Controller
public class ListController {

    public ArrayList<Product> getProductList(){
        ArrayList<Product> listProduct  = new ArrayList<>();
        listProduct.add(new Product(1L,"Túi sách",14500,500,"Mô tả túi sách","https://gubag.vn/wp-content/uploads/2024/02/tui-xach-nu-deo-cheo-day-xich-gb-tc22-3.webp"));
        listProduct.add(new Product(2L,"iphone 15 pro",32000,120,"Mô tả iphone","https://gubag.vn/wp-content/uploads/2024/02/tui-xach-nu-deo-cheo-day-xich-gb-tc22-3.webp"));
        listProduct.add(new Product(3L,"Giày thể thao",500,1400,"Mô tả giày thể thao","https://gubag.vn/wp-content/uploads/2024/02/tui-xach-nu-deo-cheo-day-xich-gb-tc22-3.webp"));
        listProduct.add(new Product(4L,"Áo Polo",78000,280,"Mô tả áo polo","https://gubag.vn/wp-content/uploads/2024/02/tui-xach-nu-deo-cheo-day-xich-gb-tc22-3.webp"));
        listProduct.add(new Product(5L,"Quần jean",15000,350,"Mô tả quần jean","https://gubag.vn/wp-content/uploads/2024/02/tui-xach-nu-deo-cheo-day-xich-gb-tc22-3.webp"));
        return listProduct;
    }

    @GetMapping("/product_list")
    public String productList(Model model) {
        model.addAttribute("productList",getProductList());
        return "product_list";
    }

    @GetMapping("/product_list/detail")
    public String showProductDetails(Model model,@RequestParam("id") Long id) {
        for(Product product : getProductList()){
            if(product.getId().equals(id)){
                model.addAttribute("product",product);
                break;
            }
        }
        return "product_details";
    }

}
