local M = {}

function M.characterCount()
    local start_pos = vim.fn.getpos("'<")
    local end_pos = vim.fn.getpos("'>")

    local lines = vim.fn.getline(start_pos[2], end_pos[2])

    -- Adjust the first and last lines to include only the relevant parts
    if #lines > 0 then
        lines[1] = string.sub(lines[1], start_pos[3])
        lines[#lines] = string.sub(lines[#lines], 1, end_pos[3])
    end
    local char_count = 0
    for _, line in ipairs(lines) do
        char_count = char_count + #line
    end
    -- If no lines were selected, count the current line
    if #lines == 0 then
        local current_line = vim.fn.getline('.')
        char_count = #current_line
    end
    -- Display the character count

    print("Character count: " .. char_count)
end

return M
