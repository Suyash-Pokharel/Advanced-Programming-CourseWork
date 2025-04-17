<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add New Flight</title>
    <!-- Link to your existing CSS file (make sure the filename/path matches) -->
    <link rel="stylesheet" href="style.css" />
</head>

<body>
    <!-- Sidebar Section (Same or Similar to Other Pages) -->
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
        <!-- Add Flight Form Container -->
        <div class="add-flight-container">
            <h2>Add New Flight</h2>

            <form class="add-flight-form" action="#" method="POST">
                <!-- Flight Number -->
                <div class="form-group">
                    <label for="flight-number">Flight Number:</label>
                    <input type="text" id="flight-number" name="flight-number" placeholder="e.g. F123" />
                </div>

                <!-- Airline -->
                <div class="form-group">
                    <label for="airline">Airline:</label>
                    <input type="text" id="airline" name="airline" placeholder="e.g. Nepal Airlines" />
                </div>

                <!-- Origin -->
                <div class="form-group">
                    <label for="origin">Origin:</label>
                    <input type="text" id="origin" name="origin" placeholder="e.g. KTM" />
                </div>

                <!-- Destination -->
                <div class="form-group">
                    <label for="destination">Destination:</label>
                    <input type="text" id="destination" name="destination" placeholder="e.g. DEL" />
                </div>

                <!-- Departure Date & Time -->
                <div class="form-group-inline">
                    <label for="departure-date">Departure Date:</label>
                    <input type="date" id="departure-date" name="departure-date" />

                    <label for="departure-time">Time:</label>
                    <input type="time" id="departure-time" name="departure-time" />
                </div>

                <!-- Arrival Date & Time -->
                <div class="form-group-inline">
                    <label for="arrival-date">Arrival Date:</label>
                    <input type="date" id="arrival-date" name="arrival-date" />

                    <label for="arrival-time">Time:</label>
                    <input type="time" id="arrival-time" name="arrival-time" />
                </div>

                <!-- Price -->
                <div class="form-group">
                    <label for="price">Price:</label>
                    <input type="number" id="price" name="price" placeholder="e.g. 200" step="0.01" />
                </div>

                <!-- Aircraft Type -->
                <div class="form-group">
                    <label for="aircraft-type">Aircraft Type:</label>
                    <input type="text" id="aircraft-type" name="aircraft-type" placeholder="e.g. Boeing 737" />
                </div>

                <!-- Total Seats -->
                <div class="form-group">
                    <label for="total-seats">Total Seats:</label>
                    <input type="number" id="total-seats" name="total-seats" placeholder="e.g. 180" />
                </div>

                <!-- Status -->
                <div class="form-group">
                    <label for="status">Status:</label>
                    <select id="status" name="status">
                        <option value="Scheduled">Scheduled</option>
                        <option value="Delayed">Delayed</option>
                        <option value="Cancelled">Cancelled</option>
                    </select>
                </div>

                <!-- Buttons -->
                <div class="form-actions">
                    <button type="submit" class="save-flight-btn">Save Flight</button>
                    <button type="button" class="cancel-flight-btn">Cancel</button>
                </div>
            </form>
        </div>
    </div>
</body>

</html>