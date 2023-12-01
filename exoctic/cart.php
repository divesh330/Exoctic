<!DOCTYPE html>
<html>
<head>
    <title>Cart</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <?php include('navbar.php'); ?>
    <h1>Cart</h1>

    <div class="container">
        <div id="cartItems">
            <!-- Cart items will be displayed here -->
        </div>
        <hr>
        <div id="cartSummary">
            <!-- Cart summary will be displayed here -->
        </div>
    </div>

    <script>
        // Function to display cart items
        function displayCart() {
            const cartItems = JSON.parse(localStorage.getItem('cart')) || [];

            const cartItemsDiv = document.getElementById('cartItems');
            const cartSummaryDiv = document.getElementById('cartSummary');

            cartItemsDiv.innerHTML = '';
            cartSummaryDiv.innerHTML = '';

            let total = 0;

            cartItems.forEach(item => {
                const itemHTML = `
                    <div class="card mb-3">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="${item.pic}" class="img-fluid" alt="${item.name}">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">${item.name}</h5>
                                    <p class="card-text">$${item.price}</p>
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                `;
                cartItemsDiv.innerHTML += itemHTML;

                total += parseFloat(item.price);
            });

            const summaryHTML = `
                <h4>Cart Summary</h4>
                <p>Total: $${total.toFixed(2)}</p>
                <button class="btn btn-primary">Checkout</button>
            `;
            cartSummaryDiv.innerHTML = summaryHTML;
        }

        // Function to remove item from cart
      

        // Display cart items and summary when the page loads
        document.addEventListener('DOMContentLoaded', function () {
            displayCart();
        });
        function redirectToCheckout() {
        window.location.href = 'checkout.php'; // Replace 'checkout.php' with your actual checkout page URL
    }

    document.addEventListener('DOMContentLoaded', function () {
        // ... (previous code)

        const checkoutButton = document.querySelector('.btn-primary');
        checkoutButton.addEventListener('click', redirectToCheckout);
    });
    </script>
</body>
</html>
