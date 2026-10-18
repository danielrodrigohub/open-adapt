#!/usr/bin/env python3
"""Apply bounded offline-access patches to the decoded Nike Adapt 1.29.3 APK.

New helper classes in openadapt/src must be compiled into an additional dex by
the main build. The script never compiles, signs, launches, or contacts devices.
It is idempotent, backs up every original touched file, and rejects mismatches.
"""
import argparse
import hashlib
import json
import re
from pathlib import Path

BASE = Path(__file__).resolve().parent
parser = argparse.ArgumentParser()
parser.add_argument("--decoded", type=Path, default=BASE / "decoded")
args = parser.parse_args()
root = args.decoded.resolve()
changes = {}


def read(relative):
    path = root / relative
    text = path.read_text()
    changes.setdefault(relative, [text, text])
    return changes[relative][1]


def put(relative, text):
    changes[relative][1] = text


def method(relative, signature, replacement=None, transform=None):
    text = read(relative)
    pattern = re.compile(r"^\.method " + re.escape(signature) + r"\n.*?^\.end method", re.M | re.S)
    matches = list(pattern.finditer(text))
    if len(matches) != 1:
        raise SystemExit(f"Expected one method {signature} in {relative}; got {len(matches)}")
    match = matches[0]
    old = match.group()
    new = replacement if replacement is not None else transform(old)
    put(relative, text[:match.start()] + new.rstrip() + text[match.end():])


method("smali/o7/a0.smali", "public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;", """
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    # Open Adapt: preserve actual local pairs; do not require Nike OAuth.
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V
    iget-object v0, p0, Lo7/a0;->i:Lcom/nike/adapt/SplashScreenActivity;
    invoke-static {v0}, Lcom/openadapt/OfflinePairs;->route(Landroid/app/Activity;)V
    sget-object v0, Lfd/o;->a:Lfd/o;
    return-object v0
.end method
""".strip())

# LoginActivity remains structurally intact so its binding/onStart cannot fail.
# If reached by an old launcher alias, navigate back to the offline splash route.
method("smali/com/nike/adapt/ui/LoginActivity$a.smali",
       "public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;", """
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V
    iget-object v0, p0, Lcom/nike/adapt/ui/LoginActivity$a;->h:Lcom/nike/adapt/ui/LoginActivity;
    new-instance v1, Landroid/content/Intent;
    const-class v2, Lcom/nike/adapt/SplashScreenActivity;
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    sget-object v0, Lfd/o;->a:Lfd/o;
    return-object v0
.end method
""".strip())

# No profile request or server list is needed to render the local pairing welcome.
method("smali/i9/e0.smali", "public final H(Landroid/os/Bundle;)V", """
.method public final H(Landroid/os/Bundle;)V
    .locals 1
    invoke-super {p0, p1}, Lp8/r;->H(Landroid/os/Bundle;)V
    const/4 v0, 0x2
    iput v0, p0, Li9/e0;->n0:I
    return-void
.end method
""".strip())

# Reuse original serializers and merge rules, preserving the account reader for
# one-time migration where an authentic existing account snapshot is accessible.
store = "smali/db/b.smali"
text = read(store)
if ".method public final eAccount(Z)Ljava/util/List;" not in text:
    old = ".method public final e(Z)Ljava/util/List;"
    if text.count(old) != 1:
        raise SystemExit("Unexpected paired-device store reader")
    text = text.replace(old, ".method public final eAccount(Z)Ljava/util/List;", 1)
    text += """

.method public final e(Z)Ljava/util/List;
    .locals 1
    invoke-static {p0, p1}, Lcom/openadapt/OfflinePairs;->read(Ljava/lang/Object;Z)Ljava/util/List;
    move-result-object v0
    return-object v0
.end method
"""
    put(store, text)
method(store, "public final b(ZLjava/util/List;)V", """
.method public final b(ZLjava/util/List;)V
    .locals 0
    invoke-static {p0, p1, p2}, Lcom/openadapt/OfflinePairs;->write(Ljava/lang/Object;ZLjava/util/List;)V
    return-void
.end method
""".strip())
method(store, "public final a(Ljava/util/List;)V", """
.method public final a(Ljava/util/List;)V
    .locals 0
    invoke-static {p0, p1}, Lcom/openadapt/OfflinePairs;->delete(Ljava/lang/Object;Ljava/util/List;)V
    return-void
.end method
""".strip())

repo = "smali/ab/b.smali"
method(repo, "public final a(Lv9/a;Lv9/p0;)Ljava/util/List;", """
.method public final a(Lv9/a;Lv9/p0;)Ljava/util/List;
    .locals 1
    invoke-static {p0, p1, p2}, Lcom/openadapt/OfflinePairs;->list(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    move-result-object v0
    return-object v0
.end method
""".strip())


def remove_upsert_network(old):
    marker = "    # Open Adapt: local upsert is already published; skip Nike sync."
    if marker in old:
        return old
    boundary = "    .line 33\n    invoke-virtual/range {p0 .. p0}, Lab/b;->g()Lpa/e;"
    if old.count(boundary) != 1:
        raise SystemExit("Unexpected repository upsert network tail")
    return old.split(boundary)[0] + marker + "\n    return-void\n.end method"


method(repo, "public final i(Lv9/a;Ljava/util/List;Lv9/p0;)V", transform=remove_upsert_network)


def remove_delete_network(old):
    marker = "    # Open Adapt: notify from the actual local device list after local deletion."
    if marker in old:
        return old.replace("->notifyLocal(", "->notifyDeleted(")
    boundary = "    .line 11\n    invoke-virtual/range {p0 .. p0}, Lab/b;->g()Lpa/e;"
    if old.count(boundary) != 1:
        raise SystemExit("Unexpected repository delete network tail")
    return old.split(boundary)[0] + marker + """
    invoke-virtual/range {p0 .. p0}, Lab/b;->c()Ljava/util/List;
    move-result-object v1
    move-object/from16 v2, p3
    move-object/from16 v3, p1
    invoke-static {v3, v2, v1}, Lcom/openadapt/OfflinePairs;->notifyDeleted(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V
    return-void
.end method
"""


method(repo, "public final b(Lv9/a;Ljava/util/List;Lv9/p0;)V", transform=remove_delete_network)

method("smali/com/nike/adapt/adk/DeviceController.smali",
       "private final checkForFirmwareUpdates()V", """
.method private final checkForFirmwareUpdates()V
    .locals 2
    # Open Adapt: report the current versions without querying update servers.
    sget-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;
    sget-object v1, Lp8/y;->a:Lp8/y;
    invoke-virtual {p0, v0, v1}, Lcom/nike/adapt/adk/DeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V
    return-void
.end method
""".strip())

# Optional legacy network requests must not clear local pairing merely because
# there is no Nike OAuth token. A real cached token or null remains honest.
for signature in ("public final a()Ljava/lang/String;", "public final getAccessToken()Ljava/lang/String;"):
    method("smali/w7/c.smali", signature, ".method " + signature + """
    .locals 1
    invoke-static {}, Lcom/openadapt/OfflinePairs;->cachedAccessToken()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
""")


def account_read_permission_fallback(old):
    marker = "    # Open Adapt: a separately signed clone has no right to Nike account credentials."
    if marker in old:
        return old
    catch = "    :catchall_0\n    move-exception v0\n"
    if old.count(catch) != 1:
        raise SystemExit("Unexpected AccountManager credential-read handler")
    fallback = catch + "\n" + marker + """
    instance-of v5, v0, Ljava/lang/SecurityException;
    if-eqz v5, :openadapt_keep_original_account_error
    const/4 v0, 0x0
    return-object v0
    :openadapt_keep_original_account_error
"""
    return old.replace(catch, fallback, 1)


method("smali/dc/a.smali", "public final get()Ljava/lang/Object;", transform=account_read_permission_fallback)

# Isolate signature-protected internal broadcasts from the separately signed Nike
# installation. The manifest declaration/uses must be changed by the main build.
for relative, count in (("smali/wa/a.smali", 1), ("smali/xa/b.smali", 2)):
    text = read(relative)
    original_permission = '"com.nike.android.adaptkit.permission.ACCESS_ADAPT_KIT"'
    local_permission = '"com.openadapt.experimental.permission.ACCESS_ADAPT_KIT"'
    if text.count(original_permission) == count:
        put(relative, text.replace(original_permission, local_permission))
    elif text.count(original_permission) != 0 or text.count(local_permission) != count:
        raise SystemExit(f"Unexpected internal broadcast permission literals: {relative}")

ledger = []
for relative, (original, patched) in changes.items():
    backup = BASE / "offline-originals" / relative
    if original != patched:
        if not backup.exists():
            backup.parent.mkdir(parents=True, exist_ok=True)
            backup.write_text(original)
        (root / relative).write_text(patched)
    ledger.append({"path": relative, "sha256_after": hashlib.sha256(patched.encode()).hexdigest(),
                   "modified_this_run": original != patched})
(BASE / "offline-patch-state.json").write_text(json.dumps(ledger, indent=2) + "\n")
print(f"Offline patches ready: {sum(x['modified_this_run'] for x in ledger)} files changed, {len(ledger)} inspected.")
