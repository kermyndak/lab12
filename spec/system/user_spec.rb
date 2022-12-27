require 'rails_helper.rb'

RSpec.describe 'Static content', type: :system do
  let(:email) { 'example@gmail.com' }
  let(:password) { 'password' }
  let(:input) { 1500 }

  scenario 'Sign up, login in, calculate' do
    visit '/users/new'
    fill_in :user_email, with: email
    fill_in :user_password, with: password
    fill_in :user_password_confirmation, with: password
    find(".btn").click
    expect(current_path).to eq('/users/new')

    visit '/log/sign_in'
    fill_in :email, with: email
    fill_in :password, with: password
    find(".btn").click
    expect(current_path).to eq("/log/sign_in")

    visit root_path
    fill_in :query, with: input
    find(".btn").click
    expect(find('table')).to have_text("Дружественные числа\nЧисло Число\n220 284\n1184 1210")
  end
end