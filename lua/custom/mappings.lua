local M = {}

M.abc = {
  n = {
     --["<C-n>"] = {"<cmd> Telescope <CR>", "Telescope"},
     ["<S-s>"] = {":Telescope Files <CR>", "Telescope Files"},
     ["keys"] = {"action", "description", opts = {}},
     ["<S-n>"] = {"<cmd> NvimTreeToggle <CR>", "Toggle nvimtree"},
     ["<leader>ff"] = {"<cmd> Telescope <CR>", "Telescope"},
     [";"] = { ":", "enter cmdline", opts = { nowait = true } },
     ["<C-;>"] = {":qa! <CR>", "Quit all!"},
     ["<C-s>"] = {":w <CR>", "Save file"},
     ["<leader>tt"] = {
  function()
     require("base46").toggle_transparency()
  end,
  "toggle transparency",
},

  },

  i = {
     ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
     ["<C-s>"] = {"<ESC> :w <CR>", "Save file"},
  }
}


M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last()
      end,
      "Debug last go test"
    }
  }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    }
  }
}

return M
