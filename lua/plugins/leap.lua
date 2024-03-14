return {
  "ggandor/leap.nvim",
  dependencies = { 
    "tpope/vim-repeat" 
  },
  lazy = false,
  config = function()
    require("leap").add_default_mappings()
  end
}
