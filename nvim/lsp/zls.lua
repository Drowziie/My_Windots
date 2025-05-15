return {
    cmd = { "zls" },
    on_new_config = function(new_config, new_root_dir)
        if vim.fn.filereadable(vim.fs.joinpath(new_root_dir, "zls.json")) ~= 0 then
            new_config.cmd = { "zls", "--config-path", "zls.json" }
        end
    end,
    filetypes = { "zig" },
    root_markers = { ".git", "build.zig" },
    init_options = {
        checker_args = "-vet -strict-style",
        enable_references = true,
        semantic_tokens = true,
    },
    settings = {
        zls = {
            enable_inlay_hints = true,
            warn_style = true,
            enable_semantic_tokens = true,
            operator_completions = true,
        },
    },
}
