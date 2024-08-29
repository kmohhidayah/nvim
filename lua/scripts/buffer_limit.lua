-- Function to get a list of all buffers
local function get_buffers()
    return vim.api.nvim_list_bufs()
end

-- Function to close the oldest buffer that is not currently active
local function close_oldest_buffer()
    local buffers = get_buffers()
    for _, buf in ipairs(buffers) do
        if vim.api.nvim_buf_is_loaded(buf) then
            -- Check if the buffer is not modified and not the current one
            local is_modified = vim.api.nvim_get_option_value('modified', { buf = buf })
            if not is_modified and buf ~= vim.api.nvim_get_current_buf() then
                vim.api.nvim_buf_delete(buf, { force = true })
                break
            end
        end
    end
end

-- Function to enforce buffer limit
local function enforce_buffer_limit()
    local buffers = get_buffers()
    local buffer_count = 0

    -- Count the number of loaded and non-modified buffers
    for _, buf in ipairs(buffers) do
        if vim.api.nvim_buf_is_loaded(buf) then
            local is_modified = vim.api.nvim_get_option_value('modified', { buf = buf })
            if not is_modified then
                buffer_count = buffer_count + 1
            end
        end
    end

    -- If buffer count exceeds 4, close the oldest buffer
    if buffer_count > 4 then
        close_oldest_buffer()
    end
end

-- Autocommand to enforce buffer limit after opening a new buffer
vim.api.nvim_create_autocmd("BufEnter", {
    callback = enforce_buffer_limit
})
