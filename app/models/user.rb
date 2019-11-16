class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable,
    :confirmable, :lockable, :trackable

  ROLES = %i[user admin].freeze

  def roles=(roles)
    roles = [*roles].map(&:to_sym)
    self.role_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
  end

  def roles
    ROLES.reject do |r|
      ((role_mask.to_i || 0) & 2**ROLES.index(r)).zero?
    end
  end

  ROLES.each do |role|
    define_method("#{role}?") do
      roles.include?(role)
    end
  end
end