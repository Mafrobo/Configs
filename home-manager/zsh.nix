{ config, pkgs, lib, ... }:

{
  programs.zsh = {
    enable = true;
    autocd = true; # instead of cd /, only /
    defaultKeymap = "viins"; # vi keybindings
    dotDir = ".config/zsh";
    enableCompletion = true;

    autosuggestion = {
      enable = true;
      strategy = [ "history" ];
    };

    history = {
      append = true;
      expireDuplicatesFirst = true;
      findNoDups = true;
      ignoreAllDups = false;
      ignorePatterns = [ "ls" "ls *" ];
      ignoreSpace = true;
      save = 100;
      share = true;
      size = 100000;
    };

    historySubstringSearch.enable = true;
    initContent = lib.mkMerge [
      (lib.mkBefore ''
        [[ $- == *i* ]] && wal -Rnqe
          source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
          [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
      '')

      (lib.mkAfter ''
                if [[ $- == *i* ]]; then
        	   if (( RANDOM % 2 == 0 )); then 
        		uwufetch
        	   else 
        	    	nerdfetch
        	   fi
                fi
      '')
    ];
    shellAliases = {
      v = "nvim";
      hms = "home-manager switch";
      la = "ls -a";
      h = "cat ~/.zsh_history | grep";
    };

    syntaxHighlighting = {
      enable = true;
      highlighters = [ "main" "brackets" "cursor" ];
    };
    zprof.enable = false;
  };
  home.file.".p10k.zsh".source = ./p10k.zsh;
 # programs.kitty = lib.mkForce {
 #   enable = true;
 #   package = pkgs.emptyDirectory;
 #   settings = {
 #     confirm_os_window_close = 0;
 #     enable_audio_bell = false;
 #     shell = "bash";
 #     font_name = "JetBrainsMono Nerd Font";
 #     font_size = 10;
 #     allow_remote_control = "yes";
 #
 #   };
 #   shellIntegration.enableZshIntegration = true;
 # };

}
