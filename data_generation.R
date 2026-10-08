# Generate sample user behavior data
set.seed(123)
behavior_data <- data.frame(
  user_id = paste0("user_", 1:1000),
  session_id = paste0("session_", sample(1001:2000, 1000)),
  landing_page = sample(c("/home", "/products", "/blog", "/about"), 1000, 
                        prob = c(0.4, 0.3, 0.2, 0.1), replace = TRUE),
  exit_page = sample(c("/home", "/products", "/cart", "/checkout", "/blog"), 1000,
                     prob = c(0.2, 0.3, 0.1, 0.1, 0.3), replace = TRUE),
  pages_viewed = rpois(1000, lambda = 5) + 1,
  time_on_site = round(runif(1000, min = 30, max = 1800)),
  scroll_depth = runif(1000, min = 0.1, max = 1),
  conversion = rbinom(1000, 1, prob = 0.15)
)

# Add page sequence data as STRING (not list)
pages <- c("/home", "/products", "/product-details", "/cart", 
           "/checkout", "/blog", "/about", "/contact", "/faq")

# Convert list to pipe-separated string
behavior_data$page_sequence <- sapply(1:1000, function(x) {
  path <- sample(pages, sample(2:8, 1), replace = TRUE)
  paste(path, collapse = "|")  # Convert to string
})

# Now save successfully
write.csv(behavior_data, "user_behavior_sample.csv", row.names = FALSE)