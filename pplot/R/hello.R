# personalized plotting function
# changes the color, fontsize, uses italic/bold titles
personalized_plot <- function(data,
                              x,
                              y,
                              point_color = "skyblue",
                              title_size = 16,
                              axis_size = 12,
                              point_size = 4,
                              add_grid = TRUE) {
  library(ggplot2)

  ggplot(data, aes(x = x, y = y)) +
    geom_point(color = point_color,
               size = point_size,
               alpha = 0.7) +
    theme_linedraw(base_size = 14) +
    theme(
      plot.title = element_text(
        size = title_size,
        face = "bold",
        hjust = 0.5
      ),
      axis.title.x = element_text(size = axis_size, face = "italic"),
      axis.title.y = element_text(size = axis_size, face = "italic"),
      axis.text.x = element_text(size = axis_size),
      axis.text.y = element_text(size = axis_size)
    )  +
    labs(
      title = paste("Personalized plot", deparse(substitute(data))),
      x = deparse(substitute(x)),
      y = deparse(substitute(y))
    )
}
