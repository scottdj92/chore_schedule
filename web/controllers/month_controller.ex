defmodule ChoreSchedule.MonthController do
    use ChoreSchedule.Web, :controller

    def index(conn, _params) do
        render conn, "index.html"
    end
end
