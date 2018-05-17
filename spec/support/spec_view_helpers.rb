
#
# Use view helpers methods into rspec tests
#
# @see https://gist.github.com/dimroc/60b9f419f9bc23f8be4e650346b58f6e
#
module ViewHelpers
  def h
    ViewHelper.instance
  end

  class ViewHelper
    include Singleton
    include ActionView::Helpers::NumberHelper
    include ApplicationHelper
  end
end

RSpec.configure do |config|
  config.include ViewHelpers
end