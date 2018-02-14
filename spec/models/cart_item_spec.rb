require 'rails_helper'

RSpec.describe CartItem, type: :model do
  it{ is_expected.to have_db_column :id}
end
