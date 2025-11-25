<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Account · QFit</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="static/css/styles.css">
</head>
<body class="qfit-body">

<div class="qfit-page-wrapper">
    <div class="qfit-bg-gradient"></div>

    <!-- Header (same style as home) -->
    <header class="qfit-header">
        <div class="qfit-logo-group">
            <img src="static/images/logo.png" alt="QFit Logo" class="qfit-logo">
            <div class="qfit-title-block">
                <h1 class="qfit-title">QFit Universal Workout Tracker</h1>
                <p class="qfit-subtitle">Create your QFit account</p>
            </div>
        </div>
    </header>

    <main class="qfit-main">
        <section class="qfit-glass-card qfit-register-card">
            <div class="qfit-register-header">
                <h2>Select Account Type</h2>
                <p>Choose how you will use QFit. Users and coaches must upload Queens College ID (front &amp; back).</p>
            </div>

            <div class="qfit-role-grid">
                <!-- User card -->
                <div class="qfit-role-card">
                    <h3>Student User</h3>
                    <p>Track your own workouts, goals, and progress.</p>
                    <ul>
                        <li>Log workouts (sets, reps, weights)</li>
                        <li>Track goals and progress charts</li>
                        <li>Receive feedback from assigned coaches</li>
                    </ul>
                    <button type="button"
                            class="qfit-btn qfit-btn-primary qfit-role-btn"
                            onclick="window.location.href='registerUser.jsp'">
                        Continue as User
                    </button>
                </div>

                <!-- Coach card -->
                <div class="qfit-role-card">
                    <h3>Coach</h3>
                    <p>Support assigned students with guidance and feedback.</p>
                    <ul>
                        <li>View assigned student workout history</li>
                        <li>Leave written feedback and notes</li>
                        <li>Help students reach their fitness goals</li>
                    </ul>
                    <button type="button"
                            class="qfit-btn qfit-btn-secondary qfit-role-btn"
                            onclick="window.location.href='registerCoach.jsp'">
                        Continue as Coach
                    </button>
                </div>

                <!-- Admin card -->
                <div class="qfit-role-card">
                    <h3>Admin</h3>
                    <p>Manage users, approvals, and system roles.</p>
                    <ul>
                        <li>Approve student &amp; coach accounts</li>
                        <li>Activate / deactivate users</li>
                        <li>Manage roles and basic settings</li>
                    </ul>
                    <button type="button"
                            class="qfit-btn qfit-role-btn qfit-role-btn-ghost"
                            onclick="window.location.href='index.jsp'">
                        Admin Login
                    </button>
                    <p class="qfit-role-note">
                        Admin accounts are created by the system owner.  
                        Please contact the QFit administrator if you need access.
                    </p>
                </div>
            </div>

            <div class="qfit-register-footer-link">
                <p>Already have an account?
                    <a href="index.jsp" class="qfit-link">Back to Log In</a>
                </p>
            </div>
        </section>
    </main>

    <footer class="qfit-footer">
        <p>© 2025 QFit Universal Workout Tracker · Queens College</p>
    </footer>
</div>

</body>
</html>
