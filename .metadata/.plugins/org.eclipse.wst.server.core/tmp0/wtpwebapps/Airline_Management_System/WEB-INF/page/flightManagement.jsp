<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Flight Management</title>
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
        <!-- Header (Page Title + Add Flight Button) -->
        <div class="flight-management-header">
            <h1>FLIGHT MANAGEMENT</h1>
            <button class="add-flight-btn">Add Flight</button>
        </div>

        <!-- Filter Section (Date, Route, Search) -->
        <div class="filter-section">
            <div class="filter-group">
                <label for="filter-date">Filter by Date</label>
                <input type="date" id="filter-date">
            </div>

            <div class="filter-group">
                <label for="filter-route">Filter by Route</label>
                <input type="text" id="filter-route" placeholder="e.g. KTM - DEL">
            </div>

            <div class="filter-group">
                <label for="search-flight">Search Flight No.</label>
                <input type="text" id="search-flight" placeholder="e.g. F123">
            </div>
        </div>

        <!-- Flights Table -->
        <div class="flight-table-container">
            <table class="flight-table">
                <thead>
                    <tr>
                        <th>Flight No</th>
                        <th>Origin → Destination</th>
                        <th>Departure</th>
                        <th>Arrival</th>
                        <th>Status</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Example Rows -->
                    <tr>
                        <td>F123</td>
                        <td>KTM → DEL</td>
                        <td>10:00 AM</td>
                        <td>12:45 PM</td>
                        <td>On-time</td>
                        <td>$200</td>
                        <td>
                            <button class="edit-btn">Edit</button>
                            <button class="delete-btn">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Q456</td>
                        <td>KTM → DOH</td>
                        <td>03:30 PM</td>
                        <td>07:00 PM</td>
                        <td>Delayed</td>
                        <td>$350</td>
                        <td>
                            <button class="edit-btn">Edit</button>
                            <button class="delete-btn">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>A789</td>
                        <td>DEL → KTM</td>
                        <td>09:00 AM</td>
                        <td>11:30 AM</td>
                        <td>Cancelled</td>
                        <td>$180</td>
                        <td>
                            <button class="edit-btn">Edit</button>
                            <button class="delete-btn">Delete</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>
