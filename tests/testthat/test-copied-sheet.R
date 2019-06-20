context("Disturbing graph")

test_that("column A of copied sheet with graph is read correctly", {
  data <- read_excel(path = "sheets/disturbing-graph.xls", sheet = "Copied",
                     col_names = FALSE, col_types = "text") %>%
    data.frame()
  expect_equal(data[6:55, 1], as.character(seq(1, 50, 1)))
})
