# frozen_string_literal: true

class Carousel::SlideComponent < ViewComponent::Base
  def initialize(id:, next_slide:, previous_slide:, img_src:)
    @id = id
    @next_slide = next_slide
    @previous_slide = previous_slide
    @img_src = img_src
  end

end
