# frozen_string_literal: true

class Carousel::ContainerComponent < ViewComponent::Base
  def initialize(slides:)
    @slides = slides
  end

end
