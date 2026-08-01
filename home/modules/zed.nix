{ pkgs, ... }:

{
  programs.zed-editor = {
    enable = true;

    extensions = [
      "nix"
      "everforest-theme"
      "git-firefly"
      "deno"
      "kotlin"
      "swift"
      "xml"
      "java"
      "html"
      "toml"
      "dart"
      "flutter-snippets"
      "nord"
    ];

    userSettings = {
      cli_default_open_behavior = "new_window";
      project_panel.dock = "left";
      outline_panel.dock = "right";
      collaboration_panel.dock = "right";
      git_panel.dock = "right";
      session.trust_all_worktrees = true;
      file_finder.include_ignored = "smart";
      restore_on_startup = "empty_tab";
      auto_indent = "syntax_aware";
      auto_indent_on_paste = true;
      base_keymap = "VSCode";
      tab_size = 4;

      lsp.vtsls = {
        settings = {
          typescript.updateImportsOnFileMove.enabled = "always";
          javascript.updateImportsOnFileMove.enabled = "always";
        };

        enable_lsp_tasks = true;
      };
    };
  };
}
