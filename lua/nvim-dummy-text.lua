local M = {}

-- many of Vermont's mountains. partially sourced from https://en.wikipedia.org/wiki/List_of_mountains_of_Vermont
local mountains = {
  -- favorites
  "Abraham", "Buck", "Ellen", "Equinox", "Killington", "Lincoln", "Mansfield", "Moosalamoo", "Philo", "Pico", "Pisgah", "Snake", "Tabor",
  -- others
  "Aeolus", "Anthony", "Ascutney", "BabyStark", "Baker", "Bald", "Barton",
  "Battell", "Bean", "Bear", "BearHead", "Belvidere", "BigJay", "Bloodroot",
  "Bolton", "Bone", "Bowen", "Boyce", "BreadLoaf", "Bromley", "Brousseau",
  "Buchanan", "Buckball", "Buffalo", "Bull", "Burke", "Burnt", "BurntRock",
  "CapeLookoff", "Carmel", "Central", "CherryKnoll", "Clark", "Cleveland",
  "ColdHollow", "Consultation", "Deer", "DeerLeap", "Dewey", "DomeysDome",
  "Dorset", "Drew", "East", "EastHaven", "Elmore", "Ephraim", "EthanAllen",
  "Farr", "Fletcher", "Gile", "Gilpin", "Glastenbury", "Glebe", "Gore",
  "Grant", "Grass", "Hardwood", "Haystack", "Hogback", "Hooker", "Hor",
  "Hunger", "IraAllen", "JacksonGore", "Jay", "Kirby", "Laraway", "LittleDeer",
  "LittleJay", "LittleKillington", "Ludlow", "Madonna", "Marshfield", "Mayo",
  "Mays", "Mendon", "MollyStark", "Monadnock", "Morse", "NancyHanks", "Norris",
  "NorthJay", "NorthStratton", "Okemo", "Olga", "Owlshead", "Pease", "Peru",
  "Prospect", "Putnam", "RamsHead", "Ricker", "Roosevelt", "Seneca",
  "Shrewsbury", "Signal", "Skye", "Snow", "Snowden", "SouthBuckball",
  "SplitRock", "Spruce", "Stannard", "Stark", "Sterling", "Stimson",
  "Stratton", "Styles", "Sugarloaf", "Sunrise", "TheDome", "TheFoxCobble",
  "Tillotson", "Tiny", "Tom", "Umpire", "Vista", "Wheeler", "WhiteRocks",
  "Whiteface", "Wilson", "Woodbury", "Woodward", "Worcester"
}

-- M.insertVermontMountains inserts words from the table above along the left
-- side of the visual selection.
function M.insertVermontMountains()
  local sel_start = vim.fn.getpos("'<")
  local sel_end = vim.fn.getpos("'>")

  local start_row = sel_start[2] -1
  local end_row = sel_end[2] - 1
  local col = sel_start[3] - 1

  if end_row - start_row + 1 > #mountains then
    print("nvim-dummy-text ERROR: selection has more lines than available dummy words")
    return
  end

  local idx = 1
  for row=start_row,end_row do
    vim.api.nvim_buf_set_text(0, row, col, row, col, { mountains[idx] })
    idx = idx + 1
  end
end

return M
