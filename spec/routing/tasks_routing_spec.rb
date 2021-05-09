require 'rails_helper'
# test to make sure index route from task controller routes to root
describe "routing to tasks" do
  it "routes / to tasks#index" do
    expect(get: "/").to route_to(
      controller: "tasks",
      action: "index"
    )
  end

# test to make sure creat route from task controller routes to create

  it "routes /tasks to tasks#create" do
    expect(post: "/tasks").to route_to(
      controller: "tasks",
      action: "create"
    )
  end

end