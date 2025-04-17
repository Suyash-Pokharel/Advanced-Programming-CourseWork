<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add Booking</title>
    <!-- Link to your existing CSS file (make sure the filename/path matches) -->
    <link rel="stylesheet" href="style.css" />
</head>

<body>
    <!-- Sidebar Section -->
    <div class="sidebar">
        <img src="plane.png" alt="Airline Logo" class="logo" />
        <nav>
            <a href="#">Dashboard</a>
            <a href="#">Search Flights</a>
            <a href="#">Flight Details</a>
            <a href="#">Payment Page</a>
            <a href="#">My Bookings</a>
            <a href="#">Online Check-in</a>

            <div class="bottom">
                <img src="m.jpg" alt="Profile Picture" />
                <nav>
                    <a href="#">Settings</a>
                </nav>
            </div>
        </nav>
    </div>

    <!-- Main Content Section -->
    <div class="main">
        <!-- Add Booking Form Container -->
        <div class="add-booking-container">
            <h2>Add Booking</h2>

            <form class="add-booking-form" action="#" method="POST">
                <!-- Booking ID -->
                <div class="form-group">
                    <label for="booking-id">Booking ID:</label>
                    <input type="text" id="booking-id" name="booking-id" placeholder="e.g. BK1010" />
                </div>

                <!-- Passenger Name -->
                <div class="form-group">
                    <label for="passenger-name">Passenger Name:</label>
                    <input type="text" id="passenger-name" name="passenger-name" placeholder="e.g. John Doe" />
                </div>

                <!-- Flight Number -->
                <div class="form-group">
                    <label for="flight-number">Flight Number:</label>
                    <!-- Example: a dropdown with dummy flight numbers -->
                    <select id="flight-number" name="flight-number">
                        <option value="">Select Flight No</option>
                        <option value="F123">F123</option>
                        <option value="Q456">Q456</option>
                        <option value="A789">A789</option>
                    </select>
                </div>

                <!-- Route -->
                <div class="form-group">
                    <label for="route">Route:</label>
                    <input type="text" id="route" name="route" placeholder="e.g. KTM — DEL" />
                </div>

                <!-- Departure Date & Time -->
                <div class="form-group-inline">
                    <label for="departure-date">Departure Date:</label>
                    <input type="date" id="departure-date" name="departure-date" />

                    <label for="departure-time">Time:</label>
                    <input type="time" id="departure-time" name="departure-time" />
                </div>

                <!-- Seat No -->
                <div class="form-group">
                    <label for="seat-no">Seat No:</label>
                    <input type="text" id="seat-no" name="seat-no" placeholder="e.g. 10A" />
                </div>

                <!-- Status Radio Buttons -->
                <div class="form-group-radio">
                    <label>Status:</label>
                    <div>
                        <label>
                            <input type="radio" name="status" value="Confirmed" /> Confirmed
                        </label>
                        <label>
                            <input type="radio" name="status" value="Pending" /> Pending
                        </label>
                        <label>
                            <input type="radio" name="status" value="Cancelled" /> Cancelled
                        </label>
                    </div>
                </div>

                <!-- Payment Status Radio Buttons -->
                <div class="form-group-radio">
                    <label>Payment Status:</label>
                    <div>
                        <label>
                            <input type="radio" name="payment-status" value="Paid" /> Paid
                        </label>
                        <label>
                            <input type="radio" name="payment-status" value="Unpaid" />
                            Unpaid
                        </label>
                        <label>
                            <input type="radio" name="payment-status" value="Refunded" />
                            Refunded
                        </label>
                    </div>
                </div>

                <!-- Buttons -->
                <div class="form-actions">
                    <button type="submit" class="save-booking-btn">Save Booking</button>
                    <button type="button" class="cancel-booking-btn">Cancel</button>
                </div>
            </form>
        </div>
    </div>
</body>

</html>