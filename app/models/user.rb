# == Schema Information
#
# Table name: users
#
#  id                   :integer          not null, primary key
#  email                :string(255)      default(""), not null
#  encrypted_password   :string(128)      default(""), not null
#  password_salt        :string(255)      default(""), not null
#  reset_password_token :string(255)
#  remember_token       :string(255)
#  remember_created_at  :datetime
#  sign_in_count        :integer          default(0)
#  current_sign_in_at   :datetime
#  last_sign_in_at      :datetime
#  current_sign_in_ip   :string(255)
#  last_sign_in_ip      :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#

class User < ActiveRecord::Base
  has_many :ownage
  has_many :gemstones, through: :ownage
  has_and_belongs_to_many :roles
  belongs_to :person

  #attr_accessor :login

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates_uniqueness_of :email
  # attr_accessible :email, :password, :password_confirmation, :remember_me, :role_id

  #ROLES = %w[Admin Mäklare Säljare Köpare Revisor Press Vän]

  scope :op, order(:priority)

  #def self.find_for_authentication(conditions)
    #login = conditions.delete(:login)
    ##where(conditions).where(["lower(email) = :value", { :value => login.strip.downcase }]).first
    #where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.strip.downcase }]).first
  #end

  def admin?
    has_role? :admin
  end

  def role_symbols
    (roles || []).map { |r| r.name.underscore.to_sym }
  end

  def has_role?(role_sym)
    roles.any? { |r| r.name.underscore.to_sym == role_sym }
  end

end
