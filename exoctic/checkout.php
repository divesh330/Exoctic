<!DOCTYPE html>
<html>
<head>
    <title>Checkout</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <?php include('navbar.php'); ?>
    <h1>Checkout</h1>

    <div class="container">
        <form id="checkoutForm">
            <div class="mb-3">
                <label for="fullName" class="form-label">Full Name</label>
                <input type="text" class="form-control" id="fullName" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" required>
            </div>
            <div class="mb-3">
                <label for="address" class="form-label">Address</label>
                <textarea class="form-control" id="address" required></textarea>
            </div>
            <div class="mb-3">
                <label for="phoneNumber" class="form-label">Phone Number</label>
                <input type="tel" class="form-control" id="phoneNumber" required>
            </div>
            
            <div class="mb-3">
                <label for="totalAmount" class="form-label">Total Amount</label>
                <input type="text" class="form-control" id="totalAmount" readonly>
            </div>
            <button type="submit" class="btn btn-primary">Place Order</button>
        </form>
    </div>

    <script>
            document.getElementById('checkoutForm').addEventListener('submit', function (e) {
        e.preventDefault();

        const fullName = document.getElementById('fullName').value;
        const email = document.getElementById('email').value;
        const address = document.getElementById('address').value;
        const phoneNumber = document.getElementById('phoneNumber').value;
        const totalAmount = document.getElementById('totalAmount').value;

        const orderData = {
            fullName,
            email,
            address,
            phoneNumber,
            totalAmount,
            
        };

        // Send orderData to your PHP API endpoint using fetch or AJAX
        fetch('api/save_order.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(orderData)
        })
       
        .then(data => {
            // Handle success response
            console.log('Order placed successfully:', data);
            localStorage.removeItem('cart'); // Clear cart after successful order placement
            alert('Order placed successfully');
          
        })
        .catch(error => {
            // Handle error
            console.error('Error placing order:', error);
            alert('Error placing order');
    
        });
    });

        function calculateTotal() {
            const cartItems = JSON.parse(localStorage.getItem('cart')) || [];
            let totalAmount = 0;

            // Calculate total from cart items
            for (const item of cartItems) {
                totalAmount += parseFloat(item.price);
            }

            return totalAmount.toFixed(2); // Limit to 2 decimal places
        }

        // Update total amount field when the page loads
        document.addEventListener('DOMContentLoaded', function () {
            const totalAmountField = document.getElementById('totalAmount');
            const total = calculateTotal();
            totalAmountField.value = `$${total}`;
        });
    </script>
</body>
</html>
