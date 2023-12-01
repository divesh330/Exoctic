<!DOCTYPE html>
<html>
<head>
    <title>Shop</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        /* Add styles for the product cards */
        .product-card {
            border: 1px solid #ccc;
            padding: 10px;
            margin: 10px;
            width: 250px;
            text-align: center;
            cursor: pointer;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .product-card img {
            max-width: 100%;
            height: auto;
            margin-bottom: 10px;
        }

        /* Create a container to display products in columns */
        .product-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-evenly;
        }
    </style>
</head>
<body>
<?php
    include('navbar.php')
    ?>
    <h1>Shop</h1>
    <div class="product-container" id="productList"></div>

    <script>
        // Function to fetch products from the API
        async function fetchProducts() {
            try {
                const response = await fetch('api/get_products.php');
                const products = await response.json();
                displayProducts(products);
            } catch (error) {
                console.error('Error fetching products:', error);
            }
        }

        // Function to display products in the shop
        function displayProducts(products) {
            const productListDiv = document.getElementById('productList');
            products.forEach(product => {
                const productCard = document.createElement('div');
                productCard.classList.add('product-card');
                productCard.innerHTML = `
                    <img src="${product.pic}" alt="${product.name}">
                    <h3>${product.name}</h3>
             
                    <p>Price: $${product.price}</p>
                    <button onclick="viewProductDetails(${product.id})">View Details</button>
                `;
                productListDiv.appendChild(productCard);
            });
        }

        // Function to redirect to product details page
        function viewProductDetails(productId) {
            window.location.href = `product_details.php?id=${productId}`;
        }

        // Fetch and display products when the page loads
        fetchProducts();
    </script>
</body>
</html>
