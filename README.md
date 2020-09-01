# Directory Permissions Segment for Zsh Prompts

![Screenshot](https://raw.githubusercontent.com/xPMo/zsh-prompt-dir-perms/img/screenshot-0.png)

## Installation

**Antigen**:
```zsh
antigen bundle xPMo/zsh-prompt-dir-perms
antigen apply
```

**Zgen**:
```zsh
zgen load xPMo/zsh-prompt-dir-perms
zgen save
```


**Zplug**:
```zsh
zplug xPMo/zsh-prompt-dir-perms
```

**Zplugin**:
```zsh
zplugin ice wait "0"
zplugin light xPMo/zsh-prompt-dir-perms
```

**Manually**: Clone the project, and then source it:
```zsh
source /path/to/zsh-prompt-dir-perms/prompt-dir-perms.plugin.zsh
```


## Prompt Support

<details>
<summary><b> Powerlevel10k </b></summary>

<br/>

For [powerlevel10k](https://github.com/romkatv/powerlevel10k), add the following to your `.p10k.zsh`:

```zsh
typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
	... # segments you want before this segment
	dir_perms
	... # segments you want after this segment
)
function prompt_dir_perms () {
	local REPLY
	prompt_dir_perms::build
	p10k segment -t $REPLY
}
```
</details>

<details>
<summary><b> Geometry </b></summary>

<br/>

For [Geometry](https://github.com/geometry-zsh/geometry), add the following to your `.zshrc`:

```zsh
GEOMETRY_PROMPT=(
	... # segments you want before this segment
	prompt_dir_perms
	... # segments you want after this segment
)
function prompt_dir_perms () {
	local REPLY
	prompt_dir_perms::build
	print -P -n $REPLY
}
```
</details>

<details>
<summary><b> Bullet Train </b></summary>

<br/>

For [Bullet Train](https://github.com/caiogondim/bullet-train.zsh), add the following to your `.zshrc`:

```zsh
BULLETTRAIN_PROMPT_ORDER=(
	... # segments you want before this segment
	dir_perms
	... # segments you want after this segment
)
function prompt_dir_perms () {
	local REPLY
	prompt_dir_perms::build
	print -P -n $REPLY
}
```
</details>

## Configuration

```zsh
# Set the colors for each 'rwx' triplet
zstyle :prompt:dir-perms color user '%F{green}' group '%F{yellow}' other '%F{magenta}' default '%F{8}'
# Format the results:
zstyle :prompt:dir-perms format '[%u%g%o]'
```

