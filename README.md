# Codespaces Node.js Starter

This project is a starter for Node.js developers to use Codespaces with a finely tuned Node.js developer machine, including system tools, extensions, and more.

## What's Included

This is an opinionated environment that should be ready to use as a day-to-day development environment. It comes with the following (opinionated!) software choices:

### JavaScript Tools

- **[nvm-sh/nvm](https://github.com/nvm-sh/nvm):** a tool to manage Node.js versions easily. Note, there is no default version installed - you will have to install your own. Using nvm to manage Node.js versions, you'll automatically get:
  - [nodejs/node](https://github.com/nodejs/node): The Node.js runtime.
  - [npm/cli](https://github.com/npm/cli): The npm package manager for JavaScript.
- **[yarnpkg/yarn](https://github.com/yarnpkg/yarn):** The yarn package manager for JavaScript.

### System Tools

- [curl/curl](https://github.com/curl/curl): the command line tool for transferring data over a metric boatload of protocols. 
- git: the Git SCM tool.
- [gnupg2](https://gnupg.org/): a complete and free implementatiuon of the OpenPGP standard.
- [stedolan/jq](https://github.com/stedolan/jq) - a command line JSON parser.
- [sudo](https://www.sudo.ws/) - the superuser authority delegation tool.
- [zsh](https://www.zsh.org/) - interactive terminal (alternative to `bash`).
- [ohmyzsh/ohmyzsh](https://github.com/ohmyzsh/ohmyzsh) - a delightful community driven framework for managing zsh config.

### VS Code Extensions

- [Bracket Pair Colorizer 2](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer-2): An extension colors matching brackets appropraitely to enhance code readability.
- [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker): Included for Node.js developers who work with Docker, but also to enable users to edit `.devcontainer/Dockerfile` with proper editing.
- [GitHub Pull Requests and Issues](https://marketplace.visualstudio.com/items?itemName=github.vscode-pull-request-github): Integration with GitHub's Pull Requests and Issues features that significantly enhance the experience of working in a repo hosted on GitHub.
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens): An extension that significantly enhances the experience using Git in a development environment.
- [IntelliCode](https://marketplace.visualstudio.com/items?itemName=visualstudioexptteam.vscodeintellicode): AI-assisted development for multiple langauges including JavaScript and TypeScript.
- [Live Share](https://marketplace.visualstudio.com/items?itemName=ms-vsliveshare.vsliveshare): collaborative, multi-user remote editing from directly within the editor.
- [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons): An enhancement to the editor UI that gives more visual indicators in the explorer.

### Operating System

- [Ubuntu 18.04](https://releases.ubuntu.com/18.04.4/): The 18.04 LTS version of Ubuntu.

## Usage

### In VS Codespaces

#### Inital Creation

For usage in VS Codespaces, you're going to want to head over to [online.visualstudio.com](https://online.visualstudio.com) and sign up for VS Codespaces (that process is outside the scope of these instructions). Once you've got an account and are signed in to [online.visualstudio.com](https://online.visualstudio.com), you're going to take the following steps:

- Ensure you're on the `/environments` page at [online.visualstudio.com/environments](https://online.visualstudio.com/environments)
- In the top right corner, there'll be a "Create environment" button. Click this button, which will open up a panel from the right side of the screen. Fill in the details of this panel:
  - **Environment Name:** This will be the visible name of your environment within Codespaces. The value here doesn't particularly matter - I'm going to use `tinycloud`.
  - **Git Repository:** This is going to be either the URL you'd `git clone` the repo from or the GitHub `<org OR user>/<repo>` shorthand. For this repo, the easier value would be `cutenode/codespaces-nodejs-starter`.
  - **Instance Type:** For this, you're going to choose your plan - in my case, I'm just going to go with the `Standard (Linux)` plan. For most use cases of this starter, `Basic (Linux)` should suffice. You can also change your plan at any time, as your workload demands.
  - **Suspend idle environment after:** This is the period of time you want your environment to automatically suspend after you've stopped actively using it. I generally chose 5 minutes and have not had any problems to date.
  - **Dotfiles (optional):** These are entirely optional, and are available for advanced users.
    - **Dotfiles Repository:** Using the `git clone` URL or the GitHub `<org OR user>/<repo>` syntax, you can define the repo to pull your dotfiles from. For examples, see [jessfraz/dotfiles](https://github.com/jessfraz/dotfiles) or [fnichol/dotfiles](https://github.com/fnichol/dotfiles).
    - **Dotfiles Install Command:** The name of the file or the command to run to install your dotfiles.
    - **Dotfiles Target Path:** The path where your dotfiles should be installed.
  - Once you've filled out all of those (and resolved any errors in the form validation, if any occurred), you'll be able to click "Create" at the bottom of the panel and your environment will start creating.

#### Connecting to your Environment

Once you've completed the Creation steps, your environment will be usable from Codespaces until you delete it. You can access it by going to [online.visualstudio.com](https://online.visualstudio.com) and selecting the vertical elipsis menu to connect to it from the browser or launch it in VS Code / VS Code Insiders.

When inside of the environment you can change envrionments themselves from the command pallete with the `Codespaces: Connect`.

> **Note:** See the [VS Online in the Browser](https://docs.microsoft.com/en-us/visualstudio/online/quickstarts/browser) quickstart for more information.

Additionally, if you've installedthe [Visual Studio Codespaces](https://marketplace.visualstudio.com/items?itemName=ms-vsonline.vsonline) extension in VS Code locally, you'll be able to directly connect from VS Code itself.

> **Note:** See the [VS Online in VS Code](https://docs.microsoft.com/en-us/visualstudio/online/quickstarts/vscode) quickstart for more information.

#### Working

Now that you're set up and connected, you should be able to work within your Codespace.

## Contributing

Contributions are welcome. Please refrain from opinionated additions like linters. However, adding package managers and other DX improvements that are additive like `yarn` are welcome. Contributors must follow the [Code of Conduct](./CODE_OF_CONDUCT.md)
