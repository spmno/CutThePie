module WorkRecordsHelper
  def user_id_options
    User.all.collect { |user| [user.email, user.id] }
  end
end
