"""Check deploy-time links, translated SEO metadata and structured data."""
from pathlib import Path
from html.parser import HTMLParser
from urllib.parse import urlsplit,unquote
import json,xml.etree.ElementTree as ET
root=Path(__file__).resolve().parents[1]/'site'
base='https://danielrodrigohub.github.io/open-adapt/'
class Page(HTMLParser):
    def __init__(self):
        super().__init__();self.tags=[];self.schema='';self.in_schema=False
    def handle_starttag(self,tag,attrs):
        a=dict(attrs);self.tags.append((tag,a))
        if tag=='script' and a.get('type')=='application/ld+json':self.in_schema=True
    def handle_endtag(self,tag):
        if tag=='script':self.in_schema=False
    def handle_data(self,data):
        if self.in_schema:self.schema+=data
for lang,file,url in [('en',root/'index.html',base),('es',root/'es/index.html',base+'es/')]:
    page=Page();page.feed(file.read_text())
    assert next(a['lang'] for t,a in page.tags if t=='html')==lang
    assert sum(t=='h1' for t,a in page.tags)==1
    assert any(t=='meta' and a.get('name')=='description' and a.get('content') for t,a in page.tags)
    assert any(t=='link' and a.get('rel')=='canonical' and a.get('href')==url for t,a in page.tags)
    assert {a.get('hreflang') for t,a in page.tags if t=='link' and a.get('rel')=='alternate'}=={'en','es','x-default'}
    assert json.loads(page.schema)['@type']=='SoftwareApplication'
    assert json.loads(page.schema)['url']==url
    ids={a['id'] for t,a in page.tags if 'id' in a}
    for tag,a in page.tags:
        if tag=='img':assert a.get('alt') and a.get('width') and a.get('height')
        for key in ('href','src'):
            link=a.get(key)
            if not link:continue
            parsed=urlsplit(link)
            if parsed.scheme or parsed.netloc:continue
            if not parsed.path:
                if parsed.fragment:assert unquote(parsed.fragment) in ids,(file,link)
                continue
            target=(file.parent/unquote(parsed.path)).resolve()
            assert target.is_relative_to(root.resolve()),link
            if target.is_dir():target=target/'index.html'
            assert target.is_file(),(file,link)
    assert any(t=='a' and a.get('href')=='https://www.paypal.com/donate/?hosted_button_id=TKRBGQY4PJLP6' for t,a in page.tags)
    print(lang+': local assets, anchor links, language alternates, canonical, social metadata and schema OK')
ET.parse(root/'sitemap.xml')
print('Sitemap XML OK')
