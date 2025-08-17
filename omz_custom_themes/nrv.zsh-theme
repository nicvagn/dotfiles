# Virtual environment prompt function
function prompt_virtualenv() {
    local venv_name=""

    # Check for standard venv/virtualenv
    if [[ -n "$VIRTUAL_ENV" ]]; then
        venv_name=$(basename "$VIRTUAL_ENV")
    # Check for conda
    elif [[ -n "$CONDA_DEFAULT_ENV" && "$CONDA_DEFAULT_ENV" != "base" ]]; then
        venv_name="$CONDA_DEFAULT_ENV"
    # Check for poetry
    elif [[ -n "$POETRY_ACTIVE" ]]; then
        venv_name=$(basename "$POETRY_ACTIVE")
    # Check for pipenv
    elif [[ -n "$PIPENV_ACTIVE" ]]; then
        venv_name="pipenv"
    fi

    if [[ -n "$venv_name" ]]; then
        echo "%{$fg[cyan]%}($venv_name)%{$reset_color%} "
    fi
}

# Git status function (optional but useful)
function prompt_git() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        local branch=$(git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null)
        local git_status=""

        # Check for uncommitted changes
        if ! git diff --quiet 2>/dev/null; then
            git_status="%{$fg[red]%}*%{$reset_color%}"
        elif ! git diff --cached --quiet 2>/dev/null; then
            git_status="%{$fg[yellow]%}+%{$reset_color%}"
        fi

        echo " %{$fg[magenta]%}($branch$git_status)%{$reset_color%}"
    fi
}

# Directory shortening function (optional)
function prompt_dir() {
    local dir_name=$(basename "$PWD")
    if [[ "$PWD" == "$HOME" ]]; then
        echo "~"
    elif [[ ${#PWD} -gt 30 ]]; then
        echo ".../$dir_name"
    else
        echo "%~"
    fi
}

# Main prompt
PROMPT=$'$(prompt_virtualenv)
%{$fg_bold[red]%}%n@%m %{$fg[blue]%}%D{[%H:%M:%S]} %{$reset_color%}%{$fg[white]%}[%~]%{$reset_color%} $(git_prompt_info)\
%{$fg[blue]%}->%{$fg_bold[blue]%} %#%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
