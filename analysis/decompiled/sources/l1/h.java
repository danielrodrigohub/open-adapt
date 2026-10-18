package l1;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: compiled from: WorkDatabase.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements d1.d.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f9847a;

    public h(Context context) {
        this.f9847a = context;
    }

    @Override // d1.d.c
    public final d1.d a(d1.d.b bVar) {
        Context context = this.f9847a;
        String str = bVar.f5958b;
        d1.d.a aVar = bVar.f5959c;
        if (aVar == null) {
            throw new IllegalArgumentException("Must set a callback to create the configuration.");
        }
        if (context == null) {
            throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
        }
        return new e1.b(context, str, aVar, true);
    }
}
