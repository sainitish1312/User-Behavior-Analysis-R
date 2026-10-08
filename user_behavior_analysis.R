# Load behavior data
behavior <- read.csv(file.choose())

# 1. User engagement metrics
engagement_summary <- behavior %>%
  summarise(
    avg_pages_viewed = mean(pages_viewed),
    avg_time_on_site = mean(time_on_site),
    avg_scroll_depth = mean(scroll_depth),
    conversion_rate = mean(conversion)  
  )

# 2. Landing page analysis
landing_page_analysis <- behavior %>%
  group_by(landing_page) %>%
  summarise(
    sessions = n(),
    avg_pages = mean(pages_viewed),
    avg_time = mean(time_on_site),
    conversion_rate = mean(conversion)  
  ) %>%
  arrange(desc(sessions))

# 3. Exit page analysis
exit_analysis <- behavior %>%
  group_by(exit_page) %>%
  summarise(
    exits = n(),
    exit_rate = n() / nrow(behavior)  
  ) %>%
  arrange(desc(exits))

# 4. Correlation analysis
library(corrplot)
correlation_matrix <- cor(behavior[, c("pages_viewed", "time_on_site", 
                                       "scroll_depth", "conversion")])
corrplot(correlation_matrix, method = "color", type = "upper")

# 5. Behavioral segmentation
behavior$engagement_level <- cut(behavior$time_on_site,
                                 breaks = c(0, 60, 300, 600, 1800),
                                 labels = c("Very Low", "Low", "Medium", "High"))

engagement_segments <- behavior %>%
  group_by(engagement_level) %>%
  summarise(
    users = n(),
    avg_pages = mean(pages_viewed),
    conversion_rate = mean(conversion)
  )
