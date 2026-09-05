{
    programs.zed-editor.userKeymaps = [
      {
        context = "Workspace";
        bindings = {};
      }
      {
        context = "Editor && vim_mode == insert";
        bindings = {};
      }
      {
        context = "AcpThread > Editor";
        unbind = {
          "ctrl-shift-backspace" = "agent::RemoveFirstQueuedMessage";
        };
      }
      {
        context = "GitBranchSelector || GitBranchSelector > Picker > Editor";
        unbind = {
          "ctrl-shift-backspace" = "branch_picker::DeleteBranch";
        };
      }
      {
        context = "GitBranchSelector || GitBranchSelector > Picker > Editor";
        unbind = {
          "ctrl-alt-shift-backspace" = "branch_picker::ForceDeleteBranch";
        };
      }
      {
        context = "Editor && mode == full";
        unbind = {
          "ctrl-alt-shift-backspace" = "editor::GoToNextChange";
        };
      }
      {
        context = "Editor && mode == full";
        unbind = {
          "ctrl-shift-backspace" = "editor::GoToPreviousChange";
        };
      }
      {
        context = "StashDiff > Editor";
        unbind = {
          "ctrl-shift-backspace" = "git::DropCurrentStash";
        };
      }
      {
        context = "InlineAssistant";
        unbind = {
          "ctrl-shift-backspace" = "inline_assistant::ThumbsDownResult";
        };
      }
      {
        context = "StashList || StashList > Picker > Editor";
        unbind = {
          "ctrl-shift-backspace" = "stash_picker::DropStashItem";
        };
      }
      {
        context = "WorktreePicker || WorktreePicker > Picker > Editor";
        unbind = {
          "ctrl-shift-backspace" = "worktree_picker::DeleteWorktree";
        };
      }
      {
        context = "WorktreePicker || WorktreePicker > Picker > Editor";
        unbind = {
          "ctrl-alt-shift-backspace" = "worktree_picker::ForceDeleteWorktree";
        };
      }
      {
        context = "Editor";
        bindings = {
          "ctrl-shift-backspace" = "editor::DeleteLine";
        };
      }
      {
        context = "Editor";
        unbind = {
          "ctrl-shift-k" = "editor::DeleteLine";
        };
      }
      {
        context = "Editor";
        unbind = {
          "ctrl-/" = [
            "editor::ToggleComments"
            { advance_downwards = false; }
          ];
        };
      }
      {
        context = "Editor";
        bindings = {
          "ctrl-#" = [
            "editor::ToggleComments"
            { advance_downwards = false; }
          ];
        };
      }
      {
        context = "Editor";
        unbind = {
          "ctrl-k ctrl-c" = [
            "editor::ToggleComments"
            { advance_downwards = false; }
          ];
        };
      }
      {
        context = "Editor";
        unbind = {
          "ctrl-shift-a" = "editor::ToggleBlockComments";
        };
      }
      {
        context = "Editor";
        unbind = {
          "ctrl-k ctrl-/" = "editor::ToggleBlockComments";
        };
      }
      {
        context = "AcpThread > Editor";
        unbind = {
          "ctrl-'" = "agent::CycleThinkingEffort";
        };
      }
      {
        context = "Editor";
        unbind = {
          "ctrl-'" = "editor::ToggleSelectedDiffHunks";
        };
      }
      {
        context = "Editor";
        bindings = {
          "ctrl-'" = "editor::ToggleBlockComments";
        };
      }
      {
        context = "Editor";
        unbind = {
          "alt-shift-a" = "editor::ToggleBlockComments";
        };
      }
    ];
}
