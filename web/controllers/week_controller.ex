defmodule ChoreSchedule.WeekController do
    use ChoreSchedule.Web, :controller

    def index(conn, _params) do
        currentWeek = Calendar.DateTime.now_utc |> Calendar.Date.week_number

        render conn, "index.html"
    end
end
