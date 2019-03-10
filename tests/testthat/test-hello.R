context("hello")

test_that("hello() says \"Hello World!\"", {
  expect_equal(length(hello()), 2)
  expect_equal(hello(), c("Hello, world!", "Hello again"))
})
