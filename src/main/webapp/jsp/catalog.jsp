<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ubay - Catalog</title>

    <%@include file="parts/resources.jsp"%>
    <link rel="stylesheet" href="css/catalog/catalog.css">
    <script src="js/parts/sha512.js"></script>
    <script src="js/parts/ref_token.js"></script>
    <script src="js/http_requests/auction.js"></script>
</head>
<body>
    <%@include file="parts/header_bar.jsp"%>

    <div class="categories">
        <h2 class="main_container">Explore categories</h2>
        <div class="categories-background">
            <div class="main_container">
                <div id="categories-container">
                    <div class="categories-item">
                        <img src="resources/category_collectibles.png" alt="category collectibles" onclick="onCategory('collectibles')">
                        <p>Collectibles</p>
                    </div>
                    <div class="categories-item">
                        <img src="resources/category_clothing.png" alt="category clothing" onclick="onCategory('clothing')">
                        <p>Clothing</p>
                    </div>
                    <div class="categories-item">
                        <img src="resources/category_technics.png" alt="category clothing" onclick="onCategory('technics')">
                        <p>Technics</p>
                    </div>
                    <div class="categories-item">
                        <img src="resources/category_furniture.png" alt="category furniture" onclick="onCategory('furniture')">
                        <p>Furniture</p>
                    </div>
                    <div class="categories-item">
                        <img src="resources/category_household.png" alt="category household" onclick="onCategory('household')">
                        <p>Household</p>
                    </div>
                    <div class="categories-item">
                        <img src="resources/category_jewellery.png" alt="category jewellery" onclick="onCategory('jewellery')">
                        <p>Jewellery</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="auctions">
        <h2 class="main_container">Popular auctions</h2>
        <div class="block-background">
            <div class="main_container">
                <div id="auctions-container">

                </div>
            </div>
        </div>
    </div>

    <script src="js/catalog/queries.js"></script>
    <script src="js/catalog/generate_lots.js"></script>
    <%@include file="parts/scripts.jsp"%>
</body>
</html>
