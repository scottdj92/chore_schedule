defmodule ChoreSchedule.WeekView do
    use ChoreSchedule.Web, :view

    def show_day() do
        Calendar.DateTime.now_utc
        |> Calendar.Date.week_number
        |> Calendar.Date.dates_for_week_number
    end

    def show_day_name() do
        Calendar.DateTime.now_utc
        |> Calendar.Date.week_number
        |> Calendar.Strftime.strftime "%a"
    end
end
