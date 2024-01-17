# Responsible for CRUD actions, doesn't take arguments
# Equivalent to db in a real app
class Repository
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end
end
