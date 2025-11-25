<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Coach Registration · QFit</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="static/css/styles.css">
</head>
<body class="qfit-body">

<div class="qfit-page-wrapper">
    <div class="qfit-bg-gradient"></div>

    <!-- Header -->
    <header class="qfit-header">
        <div class="qfit-logo-group">
            <img src="static/images/logo.png" alt="QFit Logo" class="qfit-logo">
            <div class="qfit-title-block">
                <h1 class="qfit-title">QFit Universal Workout Tracker</h1>
                <p class="qfit-subtitle">Coach Registration</p>
            </div>
        </div>
    </header>

    <main class="qfit-main">
        <section class="qfit-glass-card qfit-form-card">
            <div class="qfit-register-header">
                <h2>Create Your Coach Account</h2>
                <p>
                    Please provide your details and upload your Queens College ID
                    (<strong>front &amp; back</strong>) for verification. An admin must approve
                    your coach account before you can log in and manage students.
                </p>
            </div>

            <!-- IMPORTANT: multipart/form-data for file upload -->
            <form class="qfit-login-form qfit-two-column-form"
                  method="post"
                  action="registerCoach"
                  enctype="multipart/form-data">

                <!-- Left column: basic info + coach details -->
                <div class="qfit-column">
                    <div class="qfit-form-group">
                        <label for="fullName">Full name</label>
                        <input type="text" id="fullName" name="fullName" required>
                    </div>

                    <div class="qfit-form-group">
                        <label for="email">Queens College email</label>
                        <input type="email" id="email" name="email" required>
                    </div>

                    <div class="qfit-form-group">
                        <label for="phone">Phone number</label>
                        <input type="text" id="phone" name="phone" required>
                    </div>

                    <div class="qfit-form-group">
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" required>
                    </div>

                    <div class="qfit-form-group">
                        <label for="confirmPassword">Confirm password</label>
                        <input type="password" id="confirmPassword" name="confirmPassword" required>
                    </div>

                    <div class="qfit-form-group">
                        <label for="coachingArea">Coaching area</label>
                        <select id="coachingArea" name="coachingArea" required>
                            <option value="">Select an area</option>
                            <option value="General Fitness">General Fitness</option>
                            <option value="Weightlifting / Strength">Weightlifting / Strength</option>
                            <option value="Cardio / Endurance">Cardio / Endurance</option>
                            <option value="Sports Performance">Sports Performance</option>
                            <option value="Rehabilitation / Mobility">Rehabilitation / Mobility</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>

                    <div class="qfit-form-group">
                        <label for="experienceYears">Experience (years)</label>
                        <input type="number" id="experienceYears" name="experienceYears" min="0" max="50">
                    </div>

                    <div class="qfit-form-group">
                        <label for="bio">Short coach bio / notes</label>
                        <textarea id="bio" name="bio" rows="3"
                                  placeholder="Briefly describe your coaching style, certifications, or focus."></textarea>
                    </div>
                </div>

                <!-- Right column: ID uploads -->
                <div class="qfit-column qfit-upload-column">
                    <div class="qfit-form-group">
                        <label>Queens College ID (Front) <span class="qfit-required">*</span></label>
                        <div class="qfit-upload-box">
                            <input type="file"
                                   id="idFront"
                                   name="idFront"
                                   accept="image/*"
                                   required>
                        </div>
                    </div>

                    <div class="qfit-form-group">
                        <label>Queens College ID (Back) <span class="qfit-required">*</span></label>
                        <div class="qfit-upload-box">
                            <input type="file"
                                   id="idBack"
                                   name="idBack"
                                   accept="image/*"
                                   required>
                        </div>
                    </div>

                    <p class="qfit-note qfit-note-small">
                        Your ID images are used only for verification by QFit admins and stored securely.
                    </p>
                </div>

                <!-- Full-width bottom row -->
                <div class="qfit-form-actions">
                    <button type="submit" class="qfit-btn qfit-btn-primary">
                        Submit Coach Application
                    </button>

                    <p class="qfit-note qfit-note-small">
                        After submission, you will be redirected to a pending approval page. You cannot
                        log in until an admin approves your coach account.
                    </p>

                    <p class="qfit-register-footer-link">
                        Already registered?
                        <a href="index.jsp" class="qfit-link">Back to Log In</a>
                    </p>
                </div>
            </form>
        </section>
    </main>

    <footer class="qfit-footer">
        <p>© 2025 QFit Universal Workout Tracker · Queens College</p>
    </footer>
</div>

</body>
</html>
