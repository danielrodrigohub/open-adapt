package w4;

import android.net.Uri;
import java.util.Arrays;
import java.util.Objects;
import m5.e0;
import m5.g0;
import n3.i1;
import u6.t;
import u6.v;

/* JADX INFO: compiled from: RtspTrackTiming.java */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f17195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Uri f17197c;

    public m(long j10, int i10, Uri uri) {
        this.f17195a = j10;
        this.f17196b = i10;
        this.f17197c = uri;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x006e  */
    public static v<m> a(String str, Uri uri) throws i1 {
        byte b10;
        u6.h.b(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i10 = g0.f10384a;
        int i11 = -1;
        String[] strArrSplit = str.split(",", -1);
        int length = strArrSplit.length;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i13 < length) {
            String str2 = strArrSplit[i13];
            String[] strArrSplit2 = str2.split(";", i11);
            int length2 = strArrSplit2.length;
            int i15 = i11;
            int i16 = i12;
            Uri uriB = null;
            long j10 = -9223372036854775807L;
            while (i16 < length2) {
                String str3 = strArrSplit2[i16];
                try {
                    String[] strArrSplit3 = str3.split("=", 2);
                    String str4 = strArrSplit3[i12];
                    String str5 = strArrSplit3[1];
                    int iHashCode = str4.hashCode();
                    String[] strArr = strArrSplit;
                    if (iHashCode != 113759) {
                        if (iHashCode != 116079) {
                            if (iHashCode == 1524180539 && str4.equals("rtptime")) {
                                b10 = 2;
                            } else {
                                b10 = -1;
                            }
                        } else if (str4.equals("url")) {
                            b10 = 0;
                        } else {
                            b10 = -1;
                        }
                    } else if (str4.equals("seq")) {
                        b10 = 1;
                    } else {
                        b10 = -1;
                    }
                    if (b10 == 0) {
                        uriB = b(str5, uri);
                    } else if (b10 == 1) {
                        i15 = Integer.parseInt(str5);
                    } else {
                        if (b10 != 2) {
                            throw i1.b(str4, null);
                        }
                        j10 = Long.parseLong(str5);
                    }
                    i16++;
                    strArrSplit = strArr;
                    i12 = 0;
                } catch (Exception e10) {
                    throw i1.b(str3, e10);
                }
            }
            String[] strArr2 = strArrSplit;
            if (uriB != null && uriB.getScheme() != null) {
                i11 = -1;
                long j11 = j10;
                if (i15 != -1 || j11 != -9223372036854775807L) {
                    m mVar = new m(j11, i15, uriB);
                    int i17 = i14 + 1;
                    if (objArrCopyOf.length < i17) {
                        objArrCopyOf = Arrays.copyOf(objArrCopyOf, t.b.a(objArrCopyOf.length, i17));
                    }
                    objArrCopyOf[i14] = mVar;
                    i13++;
                    i14 = i17;
                    strArrSplit = strArr2;
                    i12 = 0;
                }
            }
            throw i1.b(str2, null);
        }
        return v.q(objArrCopyOf, i14);
    }

    public static Uri b(String str, Uri uri) {
        String scheme = uri.getScheme();
        Objects.requireNonNull(scheme);
        m5.a.a(scheme.equals("rtsp"));
        Uri uri2 = Uri.parse(str);
        if (uri2.isAbsolute()) {
            return uri2;
        }
        Uri uri3 = Uri.parse("rtsp://" + str);
        String string = uri.toString();
        String host = uri3.getHost();
        Objects.requireNonNull(host);
        if (host.equals(uri.getHost())) {
            return uri3;
        }
        if (string.endsWith("/")) {
            return e0.d(string, str);
        }
        return e0.d(string + "/", str);
    }
}
