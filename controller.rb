# require_relative to initialize objects below like Task.new
require_relative "task"

class Controller
  # We dont need require_relative for view and repository, bc we create them externally and pass them as an argument
  # Both view and repository will be created in test_scenario and passed here as an arguments
  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  def add_task
    title = @view.ask_user_for_task
    task = Task.new(title)
    @repository.add(task)

  end

  def list_tasks
    tasks = @repository.all
    @view.list_tasks(tasks)
  end

  def mark_task_as_complete
    index = @view.ask_for_task_index
    task = @repository.find(index)
    task.mark_as_complete
  end
end
