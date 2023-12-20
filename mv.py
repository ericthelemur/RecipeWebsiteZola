import os
import shutil

for path, subdirs, files in os.walk('content'):
    for file in files:
        if file == "index.md" or file == "_index.md" or file == "printall.md": continue
        newdir = os.path.join(path, file[:-3])
        os.mkdir(newdir)
        shutil.move(os.path.join(path, file), os.path.join(newdir, "index.md"))