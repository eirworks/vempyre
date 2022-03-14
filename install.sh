# TODO copy files to .paradoxinteractive/
MOD_NAME=vempyre

# Create dist
echo "Building distributable"
rm -rf dist
mkdir dist
cp "src/${MOD_NAME}.ck2.mod" dist
mv "dist/${MOD_NAME}.ck2.mod" "dist/${MOD_NAME}.mod"
cp -r "src/${MOD_NAME}" dist

PATH_TO_MOD="~/.paradoxinteractive/Crusader\ Kings\ II/mod"
echo "Targetting ${PATH_TO_MOD}"

MOD_DIR="${PATH_TO_MOD}/vempyre"

echo "Cleaning up old files..."
    rm -rf MOD_DIR
    rm -rf "${PATH_TO_MOD}/vempyre.mod"

echo "Copying mods"
cp dist/vempyre.mod ~/.paradoxinteractive/Crusader\ Kings\ II/mod
cp -r dist/vempyre ~/.paradoxinteractive/Crusader\ Kings\ II/mod