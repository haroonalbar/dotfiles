-- Function to search highlighted text on Google
local function search_on_google()
  -- Get the current visual selection
  local start_pos = vim.fn.getpos("'<")
  local end_pos = vim.fn.getpos("'>")
  local lines = vim.fn.getline(start_pos[2], end_pos[2])

  -- Extract the selected text
  if #lines > 0 then
    lines[#lines] = string.sub(lines[#lines], 1, end_pos[3])
    lines[1] = string.sub(lines[1], start_pos[3])
  end
  local selected_text = table.concat(lines, " ")

  -- Replace spaces with '+' for URL encoding
  local search_query = selected_text:gsub(" ", "+")

  -- Construct the Google search URL
  local google_search_url = "https://www.google.com/search?q=" .. search_query

  -- Open the URL in the default web browser
  os.execute("xdg-open '" .. google_search_url .. "'")
end

-- Map the function to a key combination in visual mode
vim.api.nvim_set_keymap("v", "<leader>sg", [[:lua search_on_google()<CR>]], { noremap = true, silent = true })
