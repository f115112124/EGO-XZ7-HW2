"""Check a downloaded package with Python's standard library only."""
from pathlib import Path
import hashlib
import json
import sys
import zipfile

ROOT = Path(__file__).resolve().parent.parent


def main():
    manifest = json.loads((ROOT / 'MANIFEST_SHA256.json').read_text(encoding='utf-8'))
    failures = []
    for relative, expected in manifest.items():
        path = ROOT / relative
        if not path.is_file():
            failures.append(f'Missing: {relative}')
            continue
        content = path.read_bytes()
        if len(content) != expected['bytes']:
            failures.append(f'Size changed: {relative}')
        elif hashlib.sha256(content).hexdigest() != expected['sha256']:
            failures.append(f'Content changed: {relative}')
    hdf = ROOT / 'export/design_1_wrapper.hdf'
    try:
        with zipfile.ZipFile(hdf) as archive:
            matches = [name for name in archive.namelist() if name.endswith('.bit')]
            if len(matches) != 1:
                failures.append('HDF does not contain exactly one Bitstream')
            elif archive.read(matches[0]) != (ROOT / 'export/design_1_wrapper.bit').read_bytes():
                failures.append('export BIT does not match the HDF')
    except (OSError, zipfile.BadZipFile) as exc:
        failures.append(f'Cannot read HDF: {exc}')
    if failures:
        print('\n'.join(failures))
        print('Files may have been edited after this manifest was generated.')
        return 1
    print(f'PACKAGE_OK: {len(manifest)} files match SHA256; export BIT matches HDF.')
    return 0


if __name__ == '__main__':
    sys.exit(main())
