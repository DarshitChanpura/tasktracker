defmodule TaskTrackerWeb.PageController do
  use TaskTrackerWeb, :controller

  alias TaskTracker.Scheduler
  alias TaskTracker.Scheduler.Task

  def index(conn, _params) do
    render conn, "index.html"
  end

  def tasklist(conn, _params) do
    tasks = Scheduler.list_task()
    changeset = Scheduler.change_task(%Task{})
    render conn, "tasklist.html", tasks: tasks, changeset: changeset
  end
end
