require_relative "task"
require_relative "repository"
require_relative "view"
require_relative "controller"
require_relative "router"

repository = Repository.new
view = View.new
controller = Controller.new(view, repository)
router = Router.new(controller)

router.run

# Once we have repository = Repository.new we dont need to add it like below
# task1 = Task.new("Feed the cat")
# task2 = Task.new("Book maintenance")
# repository.add(task1)
# repository.add(task2)
# p task1
# p task2

# p repository


# controller.add_task
# controller.add_task
# controller.list_tasks
# controller.mark_task_as_complete
# controller.list_tasks
