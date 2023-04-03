defmodule EctoDemo.BlogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `EctoDemo.Blog` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        text: "some text",
        title: "some title"
      })
      |> EctoDemo.Blog.create_post()

    post
  end

  @doc """
  Generate a comment.
  """
  def comment_fixture(attrs \\ %{}) do
    {:ok, comment} =
      attrs
      |> Enum.into(%{
        text: "some text",
        title: "some title"
      })
      |> EctoDemo.Blog.create_comment()

    comment
  end
end
