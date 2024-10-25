local env = LUASNIP_ENV -- global variable declared in `lua/plugins/luasnip.lua`
if env == nil then
	return
end

return {
	env.s(
		"dt",
		env.fmt(
			[[
	Date: {date}
	Time: {time}
	]],
			{
				date = env.p(os.date, "%Y-%m-%d"),
				time = env.p(os.date, "%H:%M"),
			}
		)
	),

	env.s(
		"html",
		env.fmt(
			[[<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>HTML5</title>
    <link rel="stylesheet" href="styles.css">
  </head>

  <body>
    <h1>Page Title</h1>
    <script src="scripts.js"></script>
  </body>

</html>]],
			{}
		)
	),
}
