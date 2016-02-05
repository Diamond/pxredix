ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Pxredix.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Pxredix.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Pxredix.Repo)

