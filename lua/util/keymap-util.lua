local default_opts = {
	noremap = true,
	silent = true,
}

local set_opts = function(opts)
	local all_opts = opts
	
  if all_opts == nil then
		all_opts = {}
	end

  for k, v in pairs(default_opts) do
		all_opts[k] = all_opts[k] or v
	end

  return all_opts
end

local map = function(vim_mode, keymaps, command, options)
	local opts = set_opts(options)

  vim.keymap.set(vim_mode, keymaps, command, opts)
end

return { map = map }
