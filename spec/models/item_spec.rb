require 'rails_helper'

RSpec.describe Cart, type: :model do
  it { is_expected.to respond_to :cart_items }
  it { is_expected.to respond_to :add }
end
