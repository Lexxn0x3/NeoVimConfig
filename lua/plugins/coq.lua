return{
  {"ms-jpq/coq_nvim", branch = "coq", 
        config = function()
            -- To start COQ with the `--shut-up` flag to remove the greeting message
            vim.cmd(":COQnow --shut-up")
        end
    },
    -- 9000+ Snippets
    {"ms-jpq/coq.artifacts", branch = "artifacts"},
    -- lua & third party sources (configure separately)
    {"ms-jpq/coq.thirdparty", branch = "3p"}
}
