defmodule ChoreSchedule.WeekController do
    use ChoreSchedule.Web, :controller

    def index(conn, %{"time" => time}) do
        render conn, "index.html", time: time
    end
end
