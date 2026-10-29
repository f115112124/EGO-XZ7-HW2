"""Verify packaged-IP sources and matching build artifacts (standard library)."""
from pathlib import Path
from hashlib import sha256
from zipfile import ZipFile
from xml.etree import ElementTree as ET
import json

root=Path(__file__).resolve().parent.parent
manifest=json.loads((root/'MANIFEST_SHA256.json').read_text(encoding='utf-8'))
for name,expected in manifest.items():
    data=(root/name).read_bytes()
    assert len(data)==expected['bytes'], 'Size changed: '+name
    assert sha256(data).hexdigest()==expected['sha256'], 'Hash changed: '+name
with ZipFile(root/'export/design_1_wrapper.hdf') as z:
    names=[name for name in z.namelist() if name.endswith('.bit')]
    assert len(names)==1
    assert z.read(names[0])==(root/'export/design_1_wrapper.bit').read_bytes()
    init=[name for name in z.namelist() if name.endswith('ps7_init.tcl')]
    assert len(init)==1
    assert z.read(init[0])==(root/'demo_ip/ps7_init.tcl').read_bytes()
assert (root/'demo_ip/design_1_wrapper.bit').read_bytes()==(root/'export/design_1_wrapper.bit').read_bytes()
ipdir=root/'ip_repo/hw2_gpio_ip_1_0'
doc=ET.parse(ipdir/'component.xml')
ns={'s':'http://www.spiritconsortium.org/XMLSchema/SPIRIT/1685-2009'}
files=doc.findall('.//s:file/s:name',ns)
assert files, 'No packaged-IP source references'
for file in files:
    relative=Path(file.text.replace('\\','/'))
    assert not relative.is_absolute()
    path=(ipdir/relative).resolve()
    assert path.is_relative_to(ipdir.resolve()) and path.is_file(), 'IP reference missing: '+str(relative)
evidence=root/'evidence/ip_revision/ip_build_verification.json'
if not evidence.is_file():evidence=root/'evidence/ip_build_verification.json'
verified=json.loads(evidence.read_text(encoding='utf-8'))
for name,expected in verified['sha256'].items():
    assert sha256((root/name).read_bytes()).hexdigest()==expected, 'Build set changed: '+name
print('IP_PACKAGE_OK: %d files; %d relative IP references; HDF/BIT/init and paired demo hashes match.'%(len(manifest),len(files)))
print('New revision physical board test performed: '+str(verified['physical_board_test_performed']))
