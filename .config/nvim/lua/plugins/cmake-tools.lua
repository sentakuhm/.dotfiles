return {
  {
    "Civitasv/cmake-tools.nvim",
    keys = {
      { "<leader>cb", "<cmd>CMakeBuild<CR>", desc = "Build with CMake" },
      { "<leader>cn", "<cmd>CMakeRun<CR>", desc = "Run CMake target" },
      { "<leader>cv", "<cmd>CMakeCloseRunner<CR>", desc = "Close Runner Window" },
      { "<leader>ct", "<cmd>CMakeSelectBuildTarget<CR>", desc = "Select build target" },
    },
  },
}
