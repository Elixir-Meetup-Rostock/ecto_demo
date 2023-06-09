defmodule EctoDemo.Repo.Migrations.CreateWeatherTable do
  use Ecto.Migration

  def up do
    create table("weather") do
      add :city, :string, size: 40
      add :temp_lo, :integer
      add :temp_hi, :integer
      add :prcp, :float

      timestamps()
    end
  end

  def down do
    drop table("weather")
  end
end
