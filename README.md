# defold-project-mime
Small helper that registers defold project files as a custom mime type and adds a custom desktop file
so that xdg-open can open the defold editor properly.

## Installation
```bash
git clone https://github.com/hardliner66/defold-project-mime
cd defold-project-time

./install.sh "path/to/Defold"
```

The install script will do the following:
- copy the file [Defold.desktop](./Defold.desktop) into `~/.local/share/applications`
- replace the placeholder in the desktop file with the path provided
- copy the file [x-defold-project.xml](./x-defold-project.xml) into `~/.local/share/mime/packages`
- update the mime database
- update the desktop database
- set the default application for the mime-type `application/x-defold-project` to `Defold.desktop`

From now own xdg-open should be able to open your defold project.
