require 'rails_helper'

# Test suite for the Item model
RSpec.describe Item, type: :model do
  # Association test
  # ensure an item record belongs to a single todo record
  it { should belong_to(:todo) }
  # Validation test
  # ensure columns name and done are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_inclusion_of(:done).in_array([true, false]) }
end