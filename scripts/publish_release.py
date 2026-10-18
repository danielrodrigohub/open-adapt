"""Publish a built, signed release plus its updater metadata; never uploads signing keys."""
from pathlib import Path
import argparse,json,hashlib,subprocess,shutil,urllib.request
root=Path(__file__).resolve().parents[1]
p=argparse.ArgumentParser();p.add_argument('--dry-run',action='store_true');p.add_argument('--notes-file',type=Path,default=root/'RELEASE_NOTES.md');args=p.parse_args()
v=json.loads((root/'analysis/openadapt/version.json').read_text());meta=root/'output/openadapt-update.json';data=json.loads(meta.read_text())
apk=root/'output'/data['apk'];checks=root/'output/SHA256SUMS.txt'
assert apk.is_file() and args.notes_file.is_file()
assert data['packageName']=='com.openadapt.experimental'
assert data['version']==v['projectVersion'] and data['versionCode']==v['versionCode']
assert hashlib.sha256(apk.read_bytes()).hexdigest()==data['sha256']
assert apk.stat().st_size==data['size'] and data['sha256'] in checks.read_text()
subprocess.run(['git','diff','--exit-code','--quiet'],cwd=root,check=True)
subprocess.run(['git','diff','--cached','--exit-code','--quiet'],cwd=root,check=True)
gh=shutil.which('gh')
if not gh:
    candidates=sorted((root/'analysis/tools/github-cli').glob('gh_*/bin/gh'))
    if len(candidates)==1:gh=str(candidates[0])
if not gh:raise SystemExit('Install GitHub CLI from its official source and sign in before publishing.')
repo='danielrodrigohub/open-adapt'
head=subprocess.check_output(['git','rev-parse','HEAD'],cwd=root,text=True).strip()
remote=subprocess.check_output([gh,'api','repos/'+repo+'/commits/main','--jq','.sha'],text=True).strip()
if head!=remote:raise SystemExit('Push the committed source to main before publishing this release.')
releases=json.loads(subprocess.check_output([gh,'api','repos/'+repo+'/releases?per_page=20'],text=True))
for release in releases:
    if release.get('draft'):continue
    previous=next((a for a in release.get('assets',[]) if a.get('name')=='openadapt-update.json'),None)
    if previous:
        address=previous['browser_download_url']
        if not address.startswith('https://github.com/'+repo+'/releases/download/'):raise SystemExit('Unexpected metadata origin')
        with urllib.request.urlopen(address,timeout=30) as response:old=json.loads(response.read(65536))
        if old['signerSha256']!=data['signerSha256']:raise SystemExit('Signing key differs from the previous release. Restore the original private key before publishing.')
        if old['versionCode']>=data['versionCode']:raise SystemExit('Increase the version before publishing again.')
        break
tag='v'+data['version']+'-experimental'
if args.dry_run:
    print('Ready to publish',tag,'with matching APK, update metadata and signing identity.');raise SystemExit(0)
# Publish the notes immediately; the already-deployed Pages mirror is downloadable.
# The updater requires both APK and metadata assets and ignores an incomplete upload.
subprocess.run([gh,'release','create',tag,'--repo',repo,'--target',head,'--prerelease','--title','Nike Adapt Max Revive again — '+data['version'],'--notes-file',str(args.notes_file)],cwd=root,check=True)
subprocess.run([gh,'release','upload',tag,str(apk),str(meta),str(checks),'--repo',repo],cwd=root,check=True)
