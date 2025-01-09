function file_exists_in_parent(filename)
    local function search_in_directory(dir)
        local file_path = dir .. "/" .. filename
        local file = io.open(file_path, "r") -- Try to open the file in read mode
        if file then
            file:close() -- Close the file handle
            return true, file_path -- File exists, return its path
        else
            return false -- File doesn't exist in this directory
        end
    end

    local current_dir = os.getenv("PWD") or os.getenv("CD") or "." -- Get the current directory

    repeat
        local found, file_path = search_in_directory(current_dir)
        if found then
            return true, file_path -- File exists in the current directory or its ancestor
        else
            local parent_dir = current_dir:gsub("[^/\\]+$", ""):sub(0, -2)
            if parent_dir and parent_dir ~= current_dir then
                current_dir = parent_dir -- Move to the parent directory
            else
                break -- Reached the root directory
            end
        end
    until false

    return false -- File not found in the parent directory or its ancestors
end

local file_name = ".pylintrc"
local found, file_path = file_exists_in_parent(file_name)
if found then
  print("Found pylintrc", file_path:sub(0, -1))
  local pylint = require('lint').linters.pylint
  pylint.args = {
    '-f', 'json',
    '--rcfile', file_path,
  }
else
  print("No pylintrc file found. Using default config.")
end

require('lint').linters_by_ft = {
  python = {'pylint',}
}
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
