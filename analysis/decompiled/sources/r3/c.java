package r3;

import android.net.Uri;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import m5.g0;
import n3.y0;

/* JADX INFO: compiled from: DefaultDrmSessionManagerProvider.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f14476a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public y0.e f14477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public b f14478c;

    @Override // r3.m
    public final l a(y0 y0Var) {
        b bVar;
        Objects.requireNonNull(y0Var.f11748i);
        y0.e eVar = y0Var.f11748i.f11807c;
        if (eVar == null || g0.f10384a < 18) {
            return l.f14507a;
        }
        synchronized (this.f14476a) {
            if (!g0.a(eVar, this.f14477b)) {
                this.f14477b = eVar;
                this.f14478c = (b) b(eVar);
            }
            bVar = this.f14478c;
            Objects.requireNonNull(bVar);
        }
        return bVar;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList, java.util.List<r3.a>] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.String>] */
    public final l b(y0.e eVar) {
        l5.r.a aVar = new l5.r.a();
        aVar.f10142b = null;
        Uri uri = eVar.f11778b;
        w wVar = new w(uri == null ? null : uri.toString(), eVar.f11782f, aVar);
        u6.y0<Map.Entry<String, String>> it = eVar.f11779c.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            String key = next.getKey();
            String value = next.getValue();
            Objects.requireNonNull(key);
            Objects.requireNonNull(value);
            synchronized (wVar.f14526d) {
                wVar.f14526d.put(key, value);
            }
        }
        HashMap map = new HashMap();
        UUID uuid = n3.i.f11428d;
        l5.u uVar = new l5.u();
        UUID uuid2 = eVar.f11777a;
        a1.d dVar = a1.d.f36a;
        Objects.requireNonNull(uuid2);
        boolean z10 = eVar.f11780d;
        boolean z11 = eVar.f11781e;
        int[] iArrD = w6.a.d(eVar.f11783g);
        for (int i10 : iArrD) {
            boolean z12 = true;
            if (i10 != 2 && i10 != 1) {
                z12 = false;
            }
            m5.a.a(z12);
        }
        b bVar = new b(uuid2, dVar, wVar, map, z10, (int[]) iArrD.clone(), z11, uVar, 300000L, null);
        byte[] bArr = eVar.f11784h;
        byte[] bArrCopyOf = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
        m5.a.e(bVar.f14454m.isEmpty());
        bVar.f14463v = 0;
        bVar.f14464w = bArrCopyOf;
        return bVar;
    }
}
