testServer(
  expr = {
  # Check correct default values of the inputs can be set
  session$setInputs(xcol="Sepal.Length", ycol="Sepal.Width", clusters=3)

    expect_vector(clusters()$cluster)
})
