<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Your Profile - Dawn Airlines</title>
  <link rel="stylesheet" href="style.css" />
  <style>
    body.profile-page {
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(to bottom right, #e0f7fa, #000000);
      margin: 0;
      padding: 2rem;
    }

    .profile-container {
      background-color: white;
      max-width: 600px;
      margin: auto;
      padding: 2rem;
      border-radius: 15px;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
    }

    .profile-container h2 {
      text-align: center;
      color: #00796b;
      margin-bottom: 1.5rem;
    }

    form {
      display: flex;
      flex-direction: column;
      gap: 1rem;
    }

    label {
      font-weight: bold;
      color: #333;
    }

    input, select {
      padding: 0.75rem;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 1rem;
    }

    button {
      background-color: #00796b;
      color: white;
      padding: 0.75rem;
      border: none;
      border-radius: 8px;
      font-size: 1rem;
      cursor: pointer;
    }

    button:hover {
      background-color: #004d40;
    }
  </style>
</head>
<body class="profile-page">
  <div class="profile-container">
    <h2>Your Profile</h2>

    <form action="/update-profile" method="POST">
      <label for="fullName">Full Name</label>
      <input type="text" id="fullName" name="fullName" value="John Doe" required />

      <label for="username">Username</label>
      <input type="text" id="username" name="username" value="johndoe123" required />

      <label for="email">Email</label>
      <input type="email" id="email" name="email" value="john@example.com" required />

      <label for="passportNumber">Passport Number</label>
      <input type="text" id="passportNumber" name="passportNumber" value="A1234567" required />

      <label for="contact">Contact Number</label>
      <input type="tel" id="contact" name="contact" value="+1234567890" required />

      <label for="gender">Gender</label>
      <select id="gender" name="gender">
        <option value="male" selected>Male</option>
        <option value="female">Female</option>
        <option value="other">Other</option>
      </select>

      <label for="role">Role</label>
      <select id="role" name="role">
        <option value="passenger" selected>Passenger</option>
        <option value="admin">Admin</option>
      </select>

      <label for="newPassword">New Password</label>
      <input type="password" id="newPassword" name="newPassword" placeholder="New Password" />

      <button type="submit">Update Profile</button>
    </form>
  </div>
</body>
</html>
