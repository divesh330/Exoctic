<!DOCTYPE html>
<html>
<head>
    <title>Product Details</title>
    <!-- Include any necessary stylesheets, scripts, etc. -->
    <style>
        /* Add styles for the product details */
        .product-details {
            border: 1px solid #ccc;
            padding: 20px;
            width: 60%;
            margin: 20px auto;
            text-align: center;
        }

        .product-details img {
            max-width: 100%;
            height: auto;
            margin-bottom: 15px;
        }

        .add-to-cart-btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-size: 16px;
        }
    </style>
</head>
<body>
<?php
    include('navbar.php')
    ?>
    <h1>Product Details</h1>
    <div class="product-details" id="productDetails"></div>

    <script>
        // Fetch the product ID from the URL parameter
        const urlParams = new URLSearchParams(window.location.search);
        const productId = urlParams.get('id');

        // Function to fetch product details from the API
        async function fetchProductDetails() {
            try {
                const response = await fetch(`api/get_product_details.php?id=${productId}`);
                const productDetails = await response.json();
                displayProductDetails(productDetails);
            } catch (error) {
                console.error('Error fetching product details:', error);
            }
        }

        // Function to display product details on the page
        function displayProductDetails(productDetails) {
            const productDetailsDiv = document.getElementById('productDetails');
            const productImage = document.createElement('img');
            productImage.src = productDetails.pic;
            productImage.alt = productDetails.name;

            const productName = document.createElement('h2');
            productName.textContent = productDetails.name;

            const productDescription = document.createElement('p');
            productDescription.textContent = `Description: ${productDetails.description}`;

            const productPrice = document.createElement('p');
            productPrice.textContent = `Price: $${productDetails.price}`;

            const addToCartBtn = document.createElement('button');
            addToCartBtn.textContent = 'Add to Cart';
            addToCartBtn.classList.add('add-to-cart-btn');
            addToCartBtn.addEventListener('click', () => {
                addToCart(productDetails);
            });

            productDetailsDiv.appendChild(productImage);
            productDetailsDiv.appendChild(productName);
            productDetailsDiv.appendChild(productDescription);
            productDetailsDiv.appendChild(productPrice);
            productDetailsDiv.appendChild(addToCartBtn);
        }

        // Function to add product to the cart in localStorage
        function addToCart(product) {
            let cartItems = JSON.parse(localStorage.getItem('cart')) || [];
            cartItems.push(product);
            localStorage.setItem('cart', JSON.stringify(cartItems));
            alert('Product added to cart!');
        }

        // Fetch and display product details when the page loads
        fetchProductDetails();
    </script>
</body>
</html>

