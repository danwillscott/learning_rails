class User < ApplicationRecord
  has_secure_password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, format: { with: EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: {minimum: 6}, if: :password_digest_changed?
  validates_confirmation_of :password, error: 'Password must match'



  def self.register(data)
    User.new(first_name: data[:first_name], last_name: data[:last_name], email: data[:email], password: data[:password], password_confirmation: data[:password_confirmation])
  end

  def self.log_in(data)
    if User.find_by_email(data[:email])
      user = User.find_by_email(data[:email])
      user.authenticate(data[:password]).valid?
    else
      'Email is not registered'
    end
  end
end

'SECTION 1'
'Ensure all gems installed'
'Build blank user model'
'Run rails G for rspec install'

'RUN rspec spec each time you add to models'

'Create your model for user'
'Run rspec'
'Build tests for user validation'
'build tests for user login'
'build tests for user registration '
'build tests for user updating'

'SECTION 2'
''

# zyx A list of goals for IronClad
'1 start with a simple app that lets you log your daily ABC sheets'
'2 allow for connecting with other users but no direct messaging'
'3 allow for sharing with family by email or text message systems'
'4 allow users to track daily weekly and monthly goals'
'5 create tracking data based on emotions added. This will help show progress'
'6 no personal information is held'
'7 be clear about what this is for'
'8 find people willing to help'


'What makes this better?'
  '1 Track your daily emotional reactions'
  '2 no one wants to be controlled by emotions so gives a safe outlet'
  '3 integrate with health app iOS and android'
  '4 not patronizing in any way'
  '5 remove the fog of war from help'
  '6 link people together'
  '7 create accountability its hard to talk about these issues so dont use words show your reactions'
  '8 complete control over who sees what and when'
  '9 gives motivation despite this being insanely hard'
  '10 dont sugar coat any of it but straight and honest about dealing with this'
  '11 combine a list of places to go for help and look for ways to improve on this'
  '12 remove the patronizing tone of mental health and be honest'






