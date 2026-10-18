"""Advance the project version and Android versionCode before a new release."""
from pathlib import Path
import argparse,json,re
root=Path(__file__).resolve().parents[1]
p=argparse.ArgumentParser();p.add_argument('version');p.add_argument('--code',type=int);args=p.parse_args()
if not re.fullmatch(r'[0-9]{1,6}\.[0-9]{1,6}\.[0-9]{1,6}',args.version):p.error('Use a version such as 0.4.0')
path=root/'analysis/openadapt/version.json';old=json.loads(path.read_text())
if tuple(map(int,args.version.split('.')))<=tuple(map(int,old['projectVersion'].split('.'))):p.error('The project version must increase')
code=args.code if args.code is not None else old['versionCode']+1
if not old['versionCode']<code<=2147483647:p.error('versionCode must increase and fit an Android integer')
path.write_text(json.dumps({'projectVersion':args.version,'versionCode':code,'versionName':args.version+'-openadapt'},indent=2)+'\n')
print('Next release:',args.version,'Android versionCode:',code)
