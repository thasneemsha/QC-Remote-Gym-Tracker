# Stakeholder Interviews

This document summarizes interviews conducted with primary stakeholders to understand their expectations and needs for the QFit Universal Workout Tracker.

---

## A. USER (Gym-Goer / Student)

**Motivation:**  
The user seeks to stay consistent with their fitness routine and track strength improvements over time.

**Interview Highlights:**
- Works out 3–4 times per week.
- Records exercise details including sets, reps, weight, and notes.
- Desires a progress dashboard showing weekly volume, personal records (PRs), and weight progression.
- Would benefit from reminders when inactive for several days.
- Prioritizes goal-setting (e.g., benching 135 lbs, squatting 225 lbs).
- Prefers a simple layout with detailed analytics available when needed.

**Identified Requirements:**
- SR-1.1: Track workouts anywhere  
- SR-1.2: View progress charts  
- SR-1.3: Set fitness goals  
- SR-1.4: Manage account settings  

---

## B. COACH (Peer Coach / Trainer)

**Motivation:**  
The coach uses client data to provide informed feedback and guide improvements in performance.

**Interview Highlights:**
- Reviews workout data once or twice a week.
- Tracks volume, frequency, and performance of major lifts.
- Prefers trends and progress over one-time metrics.
- Values a centralized dashboard to view all trainees.
- Provides feedback on form, workload, and progression.

**Identified Requirements:**
- SR-2.1: View users’ workout history  
- SR-2.2: Analyze progress remotely  
- SR-2.3: Provide feedback and recommendations  

---

## C. ADMIN (System Manager / Developer)

**Motivation:**  
The admin is responsible for managing system users, roles, and system maintenance tasks.

**Interview Highlights:**
- Manages user accounts, roles, and subscription statuses.
- Needs access to system metrics and activity logs.
- Requires tools to deactivate inactive accounts.
- Monitors active users and total logged workouts.
- Tracks system usage patterns for optimization.

**Identified Requirements:**
- SR-3.1: Manage users and roles  
- SR-4.1: Authenticate users  
- SR-4.3: Generate analytics  

---

## Full Interview Transcript (Appendix)

This section shows the raw questions and responses obtained during interviews.

### 1. User Interview (Gym Member)

**Q1:** How often do you work out and what motivates you to track your progress?  
**A:** “I go to the gym 3–4 times a week. I want to see if I’m getting stronger and staying consistent.”

**Q2:** What information do you usually record during a workout?  
**A:** “Exercise name, sets, reps, and weight. Sometimes I add notes like ‘felt heavy’ or ‘increase next week.’”

**Q3:** What type of progress data would you like to see on your dashboard?  
**A:** “Weekly volume, PR progress, and a graph that shows how much weight I’ve added over time.”

**Q4:** Would reminders help you stay consistent with your training?  
**A:** “Yes. A notification after 3–4 days of no workouts would help keep me on track.”

**Q5:** How important is goal-setting in your fitness routine?  
**A:** “Very important. I try to set strength goals like benching 135 or squatting 225.”

**Q6:** Would you be willing to pay for advanced analytics or coach feedback?  
**A:** “If it’s affordable for students, like $2–3 a month, yes.”

**Q7:** Do you prefer simple interfaces or more detailed analytics?  
**A:** “Simple layout, but detailed analytics available when I click deeper.”

**Q8:** What feature would make you use this app daily?  
**A:** “A clean workout logging form and charts that update immediately after I save a workout.”

---

### 2. Coach Interview (Peer Trainer / Fitness Club Member)

**Q1:** What information is essential for you to evaluate a student’s workout performance?  
**A:** “Total volume, frequency, and the main lifts (bench, squat, deadlift).”

**Q2:** How often would you review your assigned students’ workouts?  
**A:** “Probably once or twice a week.”

**Q3:** What type of chart or data visualization helps you most?  
**A:** “A volume-over-time chart and a trending 1RM estimate are super helpful.”

**Q4:** What kind of feedback do you usually give your trainees?  
**A:** “Things like adjusting weight, improving form, or increasing sets gradually.”

**Q5:** What makes feedback most effective for students?  
**A:** “Clear, specific comments tied to individual workouts.”

**Q6:** Would you prefer one central dashboard listing all trainees?  
**A:** “Yes, a table with each student’s last workout date and consistency score.”

**Q7:** How important is it to see trends instead of single workout data?  
**A:** “Very important. Trends show improvement or plateau over weeks, not just one session.”

**Q8:** How can the app make your job easier as a student coach?  
**A:** “A quick way to leave feedback and a clean timeline of each student’s progress.”

---

### 3. Admin Interview (System Manager / Developer)

**Q1:** What information do you need to manage users effectively?  
**A:** “Name, email, role (Member/Coach/Admin), account status, subscription status.”

**Q2:** What administrative tasks do you perform most frequently?  
**A:** “Activating accounts, changing roles, and checking subscription status.”

**Q3:** Should the Admin be able to deactivate users? Why?  
**A:** “Yes, for maintaining security and removing inactive or unused accounts.”

**Q4:** What statistics would help you monitor the system?  
**A:** “Number of active users, total workouts logged, weekly activity trends.”

**Q5:** How important is a clean UI for Admin tasks?  
**A:** “Very important — it makes it easier to manage a large user list.”

**Q6:** Should Admins see usage patterns (e.g., which pages are most used)?  
**A:** “Yes, that helps understand which features students find useful.”

**Q7:** How should Admin handle subscription (Premium) users?  
**A:** “Admins should see their renewal dates and assign or remove Premium manually if needed.”

**Q8:** What would help you maintain the app better over time?  
**A:** “Logs of user activity, error logs, and tools to view system health.”
