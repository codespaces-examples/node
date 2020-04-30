# Codespaces Node.js Starter

This project is a starter for Node.js developers to use Codespaces with a finely tuned Node.js developer machine, including system tools, extensions, and more.

## Usage

### In VS Codespaces

#### Inital Creation

For usage in VS Codespaces, you're going to want to head over to [online.visualstudio.com](https://online.visualstudio.com) and sign up for VS Codespaces (that process is outside the scope of these instructions). Once you've got an account and are signed in to [online.visualstudio.com](https://online.visualstudio.com), you're going to take the following steps:

- Ensure you're on the `/environments` page at [online.visualstudio.com/environments](https://online.visualstudio.comenvironments)
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

## Contributing

Contributions are welcome. Please refrain from opinionated additions like linters. However, adding package managers and other DX improvements that are additive like `yarn` are welcome. Contributors must follow the [Code of Conduct](./CODE_OF_CONDUCT.md)