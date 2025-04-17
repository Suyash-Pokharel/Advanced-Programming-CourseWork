<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Passenger Dashboard - Dawn Airlines</title>
    <!-- Use context path for all resources -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dashboard.css">
</head>
<body>
    <!-- Sidebar Section -->
    <div class="sidebar">
        <!-- Use context path for images -->
        <img src="${pageContext.request.contextPath}/images/plane.png" alt="Airline Logo" class="logo">
        <nav>
            <a href="#" class="active">Dashboard</a>
            <a href="${pageContext.request.contextPath}/flight-search">Search Flights</a>
            <a href="${pageContext.request.contextPath}/flight-details">Flight Details</a>
            <a href="${pageContext.request.contextPath}/payment">Payment</a>
            <a href="${pageContext.request.contextPath}/bookings">My Bookings</a>
            <a href="${pageContext.request.contextPath}/checkin">Online Check-in</a>
            <div class="bottom">
                <img src="${pageContext.request.contextPath}/images/m.jpg" alt="Profile Picture">
                <nav>
                    <a href="${pageContext.request.contextPath}/settings">Settings</a>
                </nav>
            </div>
        </nav>
    </div>

    <!-- Main Content Section -->
    <div class="main">
        <!-- Welcome Message with User Info -->
        <div class="welcome">
            <h2>Welcome, ${user.fullname}!</h2>
            <p>Your upcoming flights and travel information</p>
        </div>

        <!-- Search Bar -->
        <div class="search-bar">
            <form action="${pageContext.request.contextPath}/flight-search" method="get">
                <input type="text" name="flightNumber" placeholder="Search by Flight No.">
                <button type="submit">Search</button>
            </form>
        </div>

        <!-- Activity Section -->
        <div class="activity">
            <h3>Your Activity</h3>
            <div class="activity-grid">
                <div class="activity-item">
                    <strong>${bookingCount} Bookings</strong>
                    <br>
                    <small>Last: ${lastBookingDate}</small>
                </div>
                <div class="activity-item">
                    <strong>${flightCount} Flights</strong>
                    <br>
                    <small>Next: ${nextFlightDate}</small>
                </div>
                <div class="activity-item">
                    <strong>${waitingListCount} Waiting</strong>
                    <br>
                    <small>Last updated: ${lastUpdateDate}</small>
                </div>
                <div class="activity-item">
                    <strong>${loyaltyPoints} Points</strong>
                    <br>
                    <small>${membershipTier} Status</small>
                </div>
            </div>
        </div>

        <!-- Planning Journey Section -->
        <div class="planning-journey">
            <!-- Left: Booking Form -->
            <div class="planning-form">
                <h3>Where To?</h3>
                <p>Book a Flight</p>
                <img src="${pageContext.request.contextPath}/images/plane.png" alt="Plane Illustration">

                <form action="${pageContext.request.contextPath}/flight-search" method="get">
                    <label for="from">From:</label>
                    <input id="from" name="origin" type="text" placeholder="City or Airport" required>

                    <label for="to">To:</label>
                    <input id="to" name="destination" type="text" placeholder="City or Airport" required>

                    <label for="date">Date:</label>
                    <input id="date" name="departureDate" type="date" required>

                    <label for="passengers">Passengers:</label>
                    <input id="passengers" name="passengerCount" type="number" min="1" value="1" required>

                    <button type="submit">Search Flights</button>
                </form>
            </div>

            <!-- Right: Upcoming Flights -->
            <div class="upcoming-flights">
                <h3>Your Upcoming Flights</h3>
               
                    
                        <ul class="flight-list">
                           
                                <li>
                                    <span class="flight-number">${flight.flightNumber}</span>
                                    <span class="route">${flight.origin} → ${flight.destination}</span>
                                    <span class="date">${flight.departureTime}</span>
                                    <a href="${pageContext.request.contextPath}/checkin?flightId=${flight.id}" 
                                       class="checkin-btn">Check-in</a>
                                </li>
                            
                        </ul>
                  
                    
                        <p>No upcoming flights booked.</p>
                  
               
            </div>
        </div>
    </div>
</body>
</html>