defmodule TaskTracker.Scheduler.Task do
  use Ecto.Schema
  import Ecto.Changeset
  alias TaskTracker.Scheduler.Task


  schema "task" do
    field :completed, :boolean, default: false
    field :description, :string
    field :minutes, :integer
    field :title, :string
    belongs_to :user, TaskTracker.Accounts.User

    timestamps()
  end

  @doc false
  def changeset(%Task{} = task, attrs) do
    task
    |> cast(attrs, [:title, :description, :completed, :minutes, :user_id])
    |> validate_required([:title, :description, :completed, :minutes, :user_id])
    |> validate_change :minutes, fn :minutes, minute ->
          if rem(minute, 15) != 0 do
              [minutes: "should be multiple of 15"]
          else
              []
          end
        end
  end


end
