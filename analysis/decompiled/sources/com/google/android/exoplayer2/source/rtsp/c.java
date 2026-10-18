package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import m5.g0;
import n3.i1;

/* JADX INFO: compiled from: RtspAuthenticationInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4673c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4674d;

    public c(int i10, String str, String str2, String str3) {
        this.f4671a = i10;
        this.f4672b = str;
        this.f4673c = str2;
        this.f4674d = str3;
    }

    public final String a(h.a aVar, Uri uri, int i10) throws i1 {
        int i11 = this.f4671a;
        if (i11 == 1) {
            return g0.m("Basic %s", Base64.encodeToString(h.b(aVar.f4763a + ":" + aVar.f4764b), 0));
        }
        if (i11 != 2) {
            throw new i1(null, new UnsupportedOperationException(), false, 4);
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            String strI = h.i(i10);
            String strV = g0.V(messageDigest.digest(h.b(aVar.f4763a + ":" + this.f4672b + ":" + aVar.f4764b)));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strI);
            sb2.append(":");
            sb2.append(uri);
            String strV2 = g0.V(messageDigest.digest(h.b(strV + ":" + this.f4673c + ":" + g0.V(messageDigest.digest(h.b(sb2.toString()))))));
            return this.f4674d.isEmpty() ? g0.m("Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", response=\"%s\"", aVar.f4763a, this.f4672b, this.f4673c, uri, strV2) : g0.m("Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", response=\"%s\", opaque=\"%s\"", aVar.f4763a, this.f4672b, this.f4673c, uri, strV2, this.f4674d);
        } catch (NoSuchAlgorithmException e10) {
            throw new i1(null, e10, false, 4);
        }
    }
}
