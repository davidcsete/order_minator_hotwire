class HomeController < ApplicationController
  def index
    @slides = get_slides
    @restaurants = Restaurant.all
  end

  private
  def get_slides
    img_src = "https://daisyui.com/images/stock/photo-1625726411847-8cbb60cc71e6.jpg"
    slides = [
      {
        id: "1",
        img_src: img_src
      },
      {
        id: "2",
        img_src: img_src
      },
      {
        id: "3",
        img_src: img_src
      },
      {
        id: "4",
        img_src: img_src
      }
    ]
  end
end
