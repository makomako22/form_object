class UserForm
  include ActiveModel::Model
  attr_accessor :first_name, :last_name, :email, :nickname, :location, :hobby

  with_options presence: true do
    validates :first_name
    validates :last_name
    validates :email
    validates :nickname
    validates :location
    validates :hobby
  end

  def save
    user = User.create(first_name: first_name, last_name: last_name,email: email)
    Information.create(nickname: nickname, location: location, hobby: hobby, user_id: user.id)
  end

  def update(user_id)
    user = User.find(user_id)
    user.update(first_name: first_name, last_name: last_name,email: email)
    information = user.information
    information.update(nickname: nickname, location: location, hobby: hobby)
  end
end