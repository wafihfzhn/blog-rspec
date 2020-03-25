# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  birthday               :date
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  last_name              :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'rails_helper'

RSpec.describe User, type: :model do
  context "Validation tests" do
    it 'ensures first name presence' do
      user = User.new(last_name: 'Last', birthday: '1996-70-27', email: 'email@sample.com', password: 'password').save
      expect(user).to eq(false)
    end

    it 'ensures last name presence' do
      user = User.new(first_name: 'First', birthday: '1996-07-27', email: 'email@sample.com', password: 'password').save
      expect(user).to eq(false) 
    end

    it 'ensures email presence' do
      user = User.new(first_name: 'First', last_name: 'last', birthday: '1996-07-27', password: 'password').save
      expect(user).to eq(false) 
    end

    it 'ensures birthday presence' do
      user = User.new(first_name: 'First', last_name: 'last', email: 'email@sample.com', password: 'password').save
      expect(user).to eq(false) 
    end

    it 'ensures password presence' do
      user = User.new(first_name: 'First', last_name: 'last', birthday: '1996-07-27', email: 'email@sample.com').save
      expect(user).to eq(false) 
    end

    it 'should save successfully' do
      user = User.new(first_name: 'First', last_name: 'last', birthday: '1996-07-27', email: 'email@sample.com', password: 'password').save
      expect(user).to eq(true) 
    end
  end
end
