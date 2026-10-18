package r3;

import android.net.Uri;
import android.text.TextUtils;
import com.newrelic.agent.android.util.Constants;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import l5.i0;
import m5.g0;
import u6.q0;

/* JADX INFO: compiled from: HttpMediaDrmCallback.java */
/* JADX INFO: loaded from: classes.dex */
public final class w implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l5.j.a f14523a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f14524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f14525c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map<String, String> f14526d;

    public w(String str, boolean z10, l5.j.a aVar) {
        m5.a.a((z10 && TextUtils.isEmpty(str)) ? false : true);
        this.f14523a = aVar;
        this.f14524b = str;
        this.f14525c = z10;
        this.f14526d = new HashMap();
    }

    public static byte[] b(l5.j.a aVar, String str, byte[] bArr, Map<String, String> map) throws z {
        Map<String, List<String>> map2;
        List<String> list;
        i0 i0Var = new i0(aVar.a());
        Collections.emptyMap();
        Uri uri = Uri.parse(str);
        m5.a.g(uri, "The uri must be set.");
        Object obj = "The uri must be set.";
        l5.m mVar = new l5.m(uri, 0L, 2, bArr, map, 0L, -1L, null, 1, null);
        int i10 = 0;
        int i11 = 0;
        l5.m mVar2 = mVar;
        while (true) {
            try {
                l5.l lVar = new l5.l(i0Var, mVar2);
                try {
                    byte[] bArrU = g0.U(lVar);
                    g0.g(lVar);
                    return bArrU;
                } catch (l5.z e10) {
                    try {
                        int i12 = e10.f10153k;
                        String str2 = null;
                        if ((((i12 == 307 || i12 == 308) && i11 < 5) ? 1 : i10) != 0 && (map2 = e10.f10154l) != null && (list = map2.get("Location")) != null && !list.isEmpty()) {
                            str2 = list.get(i10);
                        }
                        if (str2 == null) {
                            throw e10;
                        }
                        int i13 = i11 + 1;
                        long j10 = mVar2.f10072b;
                        int i14 = mVar2.f10073c;
                        byte[] bArr2 = mVar2.f10074d;
                        Map<String, String> map3 = mVar2.f10075e;
                        long j11 = mVar2.f10076f;
                        long j12 = mVar2.f10077g;
                        String str3 = mVar2.f10078h;
                        int i15 = mVar2.f10079i;
                        Object obj2 = mVar2.f10080j;
                        Uri uri2 = Uri.parse(str2);
                        Object obj3 = obj;
                        m5.a.g(uri2, obj3);
                        l5.m mVar3 = new l5.m(uri2, j10, i14, bArr2, map3, j11, j12, str3, i15, obj2);
                        g0.g(lVar);
                        obj = obj3;
                        mVar2 = mVar3;
                        i10 = 0;
                        i11 = i13;
                    } catch (Throwable th) {
                        g0.g(lVar);
                        throw th;
                    }
                }
            } catch (Exception e11) {
                Uri uri3 = i0Var.f10053c;
                Objects.requireNonNull(uri3);
                throw new z(mVar, uri3, i0Var.h(), i0Var.f10052b, e11);
            }
        }
    }

    public final byte[] a(UUID uuid, s.a aVar) throws z {
        String str;
        String str2 = aVar.f14511b;
        if (this.f14525c || TextUtils.isEmpty(str2)) {
            str2 = this.f14524b;
        }
        if (TextUtils.isEmpty(str2)) {
            Map mapEmptyMap = Collections.emptyMap();
            Uri uri = Uri.EMPTY;
            m5.a.g(uri, "The uri must be set.");
            throw new z(new l5.m(uri, 0L, 1, null, mapEmptyMap, 0L, -1L, null, 0, null), Uri.EMPTY, q0.f15971n, 0L, new IllegalStateException("No license URL"));
        }
        HashMap map = new HashMap();
        UUID uuid2 = n3.i.f11429e;
        if (uuid2.equals(uuid)) {
            str = "text/xml";
        } else {
            str = n3.i.f11427c.equals(uuid) ? Constants.Network.ContentType.JSON : Constants.Network.ContentType.OCTET_STREAM;
        }
        map.put(Constants.Network.CONTENT_TYPE_HEADER, str);
        if (uuid2.equals(uuid)) {
            map.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
        }
        synchronized (this.f14526d) {
            map.putAll(this.f14526d);
        }
        return b(this.f14523a, str2, aVar.f14510a, map);
    }

    public final byte[] c(s.d dVar) throws z {
        return b(this.f14523a, dVar.f14513b + "&signedRequest=" + g0.n(dVar.f14512a), null, Collections.emptyMap());
    }
}
