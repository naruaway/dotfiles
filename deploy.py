from pathlib import Path
import contextlib
import os


script_dir = Path(os.path.dirname(os.path.abspath(__file__)))

for f in script_dir.glob('.*'):
    if f.name == '.DS_Store':
        continue
    if f.name == '.git':
        continue

    symlink = f.parent.parent / f.name
    with contextlib.suppress(FileExistsError):
        print(f'deploying {symlink}')
        symlink.symlink_to(os.path.relpath(f, start=Path.home()))
