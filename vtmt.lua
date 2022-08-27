-- [bufnum, lnum, col, off]
local mountains = {"ellen", "pico", "killington", "buck", "snake"}

local sel_start = vim.fn.getpos("'<")
local sel_end = vim.fn.getpos("'>")

local start_line = sel_start[2]
local end_line = sel_end[2]
local start_col = sel_start[3]
local end_col = sel_end[3]

print("start line", start_line)
print("end line", end_line)
print("start col", start_col)
print("end col", end_col)

vim.api.nvim_buf_set_text(0, start_line-1, start_col-1, start_line-1, start_col-1, {'pisgah'})

-- nvim_buf_set_text({buffer}, {start_row}, {start_col}, {end_row}, {end_col},
--                   {replacement})
--                 Sets (replaces) a range in the buffer

--                 This is recommended over nvim_buf_set_lines when only
--                 modifying parts of a line, as extmarks will be preserved on
--                 non-modified parts of the touched lines.

--                 Indexing is zero-based and end-exclusive.

--                 To insert text at a given index, set `start` and `end` ranges
--                 to the same index. To delete a range, set `replacement` to an
--                 array containing an empty string, or simply an empty array.

--                 Prefer nvim_buf_set_lines when adding or deleting entire lines
--                 only.

--                 Parameters: ~
--                     {buffer}        Buffer handle, or 0 for current buffer
--                     {start_row}     First line index
--                     {start_column}  First column
--                     {end_row}       Last line index
--                     {end_column}    Last column
--                     {replacement}   Array of lines to use as replacement

