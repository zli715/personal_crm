class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_many :connections, :dependent => :destroy
  has_many :old_jobs, :dependent => :destroy
  has_one :latest_job, :dependent => :destroy

  def full_name
    return self.first_name + " " + self.last_name
  end

end
