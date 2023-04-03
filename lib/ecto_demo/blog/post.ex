defmodule EctoDemo.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias EctoDemo.Blog.Comment

  schema "posts" do
    field :text, :string
    field :title, :string
    has_many :comments, Comment
    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :text])
    |> cast_assoc(:comments, with: &Comment.changeset/2)
    |> validate_required([:title, :text])
  end
end
