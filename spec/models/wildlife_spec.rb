require 'rails_helper'
describe Wildlife do
  it { should validate_presence_of :name }
end
