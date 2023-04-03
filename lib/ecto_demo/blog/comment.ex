defmodule EctoDemo.Blog.Comment do
  use Ecto.Schema
  import Ecto.Changeset
  alias EctoDemo.Blog.Post

  schema "comments" do
    field :text, :string
    field :title, :string
    belongs_to :post, Post

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:title, :text])
    |> put_change(:post_id, attrs.post.id)
    |> validate_required([:title, :text, :post_id])
  end
end
