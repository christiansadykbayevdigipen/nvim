return {
  "Civitasv/cmake-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  ft = { "c", "cpp", "cmake" },
  opts = {},
  keys = {
    { "<leader>cg", "<cmd>CMakeGenerate<CR>", desc = "CMake generate" },
    { "<leader>cb", "<cmd>CMakeBuild<CR>", desc = "CMake build" },
    { "<leader>cr", "<cmd>CMakeRun<CR>", desc = "CMake run" },
    { "<leader>ct", "<cmd>CMakeSelectBuildType<CR>", desc = "Select build type" },
    { "<leader>cT", "<cmd>CMakeSelectBuildTarget<CR>", desc = "Select build target" },
    { "<leader>cl", "<cmd>CMakeSelectLaunchTarget<CR>", desc = "Select launch target" },
  },
}
