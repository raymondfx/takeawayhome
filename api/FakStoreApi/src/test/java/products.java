
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import com.google.gson.JsonObject;

import org.testng.Assert;
import org.json.simple.JSONObject;
import org.testng.annotations.Test;

import static io.restassured.RestAssured.*;
import static org.hamcrest.Matchers.equalTo;

public class products {
    @Test (testName = "All Products")
    public void  allProducts(){
        given().log().all()
                .when()
                .get("https://fakestoreapi.com/products")
                .then()
                .statusCode(200);
    }


    @Test (testName = "Single Product")
    public void  singleProducts(){
        given().log().all()
                .when()
                .get("https://fakestoreapi.com/products/1")
                .then()
                .body("id", equalTo(1))
                .body("title", equalTo("Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops"))
                .body("price", equalTo(109.95F))
                .statusCode(200);
    }

    @Test (testName = "Limit results")
    public void  limitResults(){
        given().log().all()
                .when()
                .get("https://fakestoreapi.com/products?limit=5")
                .then()
                .statusCode(200);
    }

    @Test (testName = "Sort results")
    public void  sortResults(){
        given().log().all()
                .when()
                .get("https://fakestoreapi.com/products?sort=desc")
                .then()
                .statusCode(200);
    }
    @Test (testName = "Get all categories")
    public void  allCategories(){
        given().log().all()
                .when()
                .get("https://fakestoreapi.com/products/categories")
                .then()
                .statusCode(200);
    }
    @Test (testName = "Products in specific category ")
    public void  specificCategory(){
        given().log().all()
                .when()
                .get("https://fakestoreapi.com/products/category/jewelery")
                .then()
                .statusCode(200);
    }




    @Test(testName = "Add a Product")
    public void addProduct() {

        JsonObject json = new JsonObject();
        json.addProperty("title", "New Product");
        json.addProperty("price", 13.5);
        json.addProperty("description", "This is new");
        json.addProperty("image", "https://i.pravatar.cc");
        json.addProperty("category", "electronic");


        RestAssured.given().log().all()
                .body(json.toString())
                .when().post("https://fakestoreapi.com/products")
                .then()
                .statusCode(200)
        ;
    }

    @Test(testName = "Update a Product")
    public void updateProduct() {

        JsonObject json = new JsonObject();
        json.addProperty("title", "test product");
        json.addProperty("price", 13.5);
        json.addProperty("description", "lorem ipsum set");
        json.addProperty("image", "https://i.pravatar.cc");
        json.addProperty("category", "electronic");


        RestAssured.given().log().all()
                .body(json.toString())
                .when().put("https://fakestoreapi.com/products/7")
                .then()
                .statusCode(200)
        ;
    }
    @Test (testName = "Delete a product ")
    public void  deleteProduct(){
        given().log().all()
                .when()
                .delete("https://fakestoreapi.com/products/6")
                .then()
                .statusCode(200);
    }

}
