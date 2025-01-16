return {
	'rmagatti/auto-session',
	lazy = false,
	config = function()
		vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
		require('auto-session').setup {
			log_level = 'info',
			auto_session_enable_last_session = false,
			auto_session_root_dir = vim.fn.stdpath 'data' .. '/sessions/',
			auto_session_last_session_dir = vim.fn.stdpath 'data' .. '/sessions/',
			auto_session_enabled = true,
			auto_save_enabled = true,
			auto_restore_enabled = true,
			auto_session_use_git_branch = true,
		}
	end,
}
