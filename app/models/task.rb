class Task < ActiveRecord::Base
  belongs_to :volunteer
  belongs_to :city

  validates :name, presence: true
  validates :description, presence: true
  validates :date, presence: true
  # validates_format_of :date, :with => /\d{2}\/\d{2}\/\d{4}/, :message => "^Date must be in the following format: mm/dd/yyyy"
  validates :start_time, presence: true
  validates :hours, presence: true
  validates :image_path, presence: true
  validates :city_id, presence: true

  # def self.all_tasks
  #   all.map do |task|
  #     TaskTime.new(task)
  #   end
  # end

  def display_time
    self.start_time.strftime('%l:%M %p')
  end
end
