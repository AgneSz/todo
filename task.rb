class Task
  # exposing title to be available in view list_tasks method
  attr_reader :title 

  def initialize(title)
    @title = title
    @completed = false 
  end

  def mark_as_complete
    @completed = true
  end

  # withouth attr_reader - from the outside we call task.completed? - method on an instance of a task
  # with attr_reader - from the outside we could call task.completed, as if calling task.@completed
  def completed?
    @completed
  end
end
