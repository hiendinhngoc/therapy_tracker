# Therapy Tracker

This is an app to track physical therapy exercise logs.

- Ruby: 2.5.3
- Rails: 5.2.2
- Postgres: '>= 0.18', '< 2.0'
- Devise
- RSpec
- Admin namespace for Users

## Placeholder Tones
Placeholder tones used are from [https://freesound.org/](https://freesound.org/)  licensed under the Attribution Noncommercial License.

## Features
Add your own exercises, types of pain you experience, and your target body parts for physical therapy. Then track them all with the logging feature. This app is designed to be mobile-first, so it's super handy to enter data on your phone.

### Exercise Logging
Log every time you do an exercise, tracking your sets, reps, burn reps, and resistance levels. You can also write notes on your progress. Data entry is minimized by having default set/rep information automatically populated into the form fields whenever you select an exercise from the dropdown.

#### Rep Counter
One of my favorite features of this application is the rep counter. After entering a new exercise log, you can launch the counter and it will play beeps and count your reps for you, indicating which set and rep you're on.

### Pain Logging
One of the challenges of reporting pain back to a physical therapist is getting accurate data on how often and how severe pain is. Replacing the anecdotal version of pain with a data version gives everybody a better picture of what's happening. The pain tracking lets you enter date/time, body part, the pain level, pain quality, and what may have triggered the pain.

### Physical Therapy Session Logging
A lot can happen at a PT session. You'll be doing workouts, getting consultation, and being assigned homework. The physical therapy tracking makes it easy to stay on top of what you've accomplished and what you need to work on between sessions.

### Reporting
Data is best served in a way that is visually meaningful. That is why we have chart representation of the data from your logs.
