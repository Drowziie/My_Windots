return {
    cmd = { "zls" },
    filetypes = { "zig" },
    root_markers = { ".git", "build.zig" },
    init_options = {
        checker_args = "-vet -strict-style",
        enable_references = true,
    },
}
