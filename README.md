# 📊 User Behavior Analysis – R

### Website Engagement, Navigation & Conversion Analytics

This project applies R-based statistical and data analytics techniques to analyse website user behavior, engagement patterns, navigation behavior, and conversion activity.

The analysis uses a dataset containing 1,000 simulated user sessions and examines metrics such as pages viewed, time on site, scroll depth, landing page, exit page, and conversion status.

---

## 📌 Project Overview

Understanding how users interact with a website can help organizations identify engagement patterns, potential drop-off points, and opportunities to improve the user journey.

This project analyses user sessions to investigate:

- User engagement
- Website navigation patterns
- Landing-page performance
- Exit-page behavior
- Conversion activity
- Relationships between engagement metrics
- Behavioral segments
- Statistical relationships between user actions

The project uses **R** as the primary analytical tool.

---

## 🎯 Project Objectives

The main objectives of the project are to:

- Measure user engagement using key behavioral metrics
- Analyse landing-page and exit-page performance
- Understand user navigation patterns
- Examine relationships between engagement variables
- Analyse conversion behavior
- Apply statistical techniques to user behavior data
- Identify potential areas for website optimization
- Develop data-driven recommendations for improving user experience

---

## 📊 Dataset

The project uses a dataset containing **1,000 user sessions** and 9 variables.

### Dataset Variables

| Variable | Description |
|---|---|
| `user_id` | Unique user identifier |
| `session_id` | Unique session identifier |
| `landing_page` | Page where the user entered the website |
| `exit_page` | Page where the user exited |
| `pages_viewed` | Number of pages viewed during the session |
| `time_on_site` | Time spent on the website |
| `scroll_depth` | Depth of page scrolling |
| `conversion` | Conversion indicator |
| `page_sequence` | Sequence of pages visited during the session |

The dataset contains no missing values in the analysed fields.

> **Dataset note:** The project includes a synthetically generated user-behavior dataset created for academic analysis.

📁 Dataset:

`data/user_behavior_analysis_dataset.xlsx`

---

## 🔄 Analytical Workflow

The project follows a structured R-based analytics workflow:

```text
Data Generation / Collection
          │
          ▼
Data Loading & Validation
          │
          ▼
Data Preparation
          │
          ▼
Engagement Metrics
          │
          ▼
Page-Level Analysis
          │
          ▼
Descriptive Statistics
          │
          ▼
Data Visualization
          │
          ▼
Correlation Analysis
          │
          ▼
Regression Analysis
          │
          ▼
Chi-Square Testing
          │
          ▼
Behavioral Interpretation
          │
          ▼
Recommendations
