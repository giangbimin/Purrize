# frozen_string_literal: true

class PageTitleComponent < ViewComponent::Base
  include HashConstructed
  attr_accessor :title, :description
end
