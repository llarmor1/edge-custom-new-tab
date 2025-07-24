# Navigator Custom New Tab

This is a simple navigator addon to override the new tab page with a custom html file

Credits to [Mardevour](https://github.com/mardevour)

Note: Wallpapers wont be uploaded because original author doesnt want to get them reposted 

### Customize and install

- 1: clone this repo or just [download it](https://github.com/mardevour/firefox-custom-new-tab/archive/refs/heads/main.zip) and extract it.
- 2: edit the contents of `src/` to your liking. you may not want or need `time.js` so you are free to delete it.
- 3: compress the extension with one of these options:
	- **for unix-like systems** you can just run `pack.sh`, this script will compress the necessary files into a .zip file. (requires `zip` to be installed)
	- **if you are using windows** or just prefer to do it this way, you can just manually compress `manifest.json` and `src` into a .zip file.
- 4: go to the addons manager by typing `about:addons` in the address bar and click on the top right gear icon and select "Install add-on from file..."
- 5: then just select your packaged .zip file and enjoy your new custom tab :)