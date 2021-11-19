local has_plenary, Job = pcall(require, 'plenary.job')
if not has_plenary then
  vim.api.nvim_err_writeln("yapf.nvim requires nvim-lua/plenary.nvim")
  return
end

local M = {}

function M.setup(config)
  M.config = {}
  M.config.style = config.style or "pep8"
  M.config.command = config.command or "yapf"
end

function M.format()
  local filetype = vim.fn.eval("&filetype")
  if filetype ~= "python" then
    return
  end

  local style = M.config.style
  local bufnr = vim.api.nvim_get_current_buf()

  vim.command.write()

  local job = Job:new {
    command = M.config.command,
    args = { "--style", style, vim.api.nvim_buf_get_name(0) },
  }
  local output = job:sync()

  if job.code ~= 0 then
    print("Format error:")
    local err = job:stderr_result()
    for _, v in pairs(err) do
      print(v)
    end
    return
  end

  vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, output)
end

return M
