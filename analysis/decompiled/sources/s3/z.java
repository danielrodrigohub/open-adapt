package s3;

import android.util.Base64;
import java.util.ArrayList;
import java.util.List;
import m5.g0;
import n3.i1;

/* JADX INFO: compiled from: VorbisUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class z {

    /* JADX INFO: compiled from: VorbisUtil.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String[] f15099a;

        public a(String[] strArr) {
            this.f15099a = strArr;
        }
    }

    /* JADX INFO: compiled from: VorbisUtil.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f15100a;

        public b(boolean z10) {
            this.f15100a = z10;
        }
    }

    /* JADX INFO: compiled from: VorbisUtil.java */
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15101a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f15102b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f15103c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f15104d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f15105e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f15106f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final byte[] f15107g;

        public c(int i10, int i11, int i12, int i13, int i14, int i15, byte[] bArr) {
            this.f15101a = i10;
            this.f15102b = i11;
            this.f15103c = i12;
            this.f15104d = i13;
            this.f15105e = i14;
            this.f15106f = i15;
            this.f15107g = bArr;
        }
    }

    public static int a(int i10) {
        int i11 = 0;
        while (i10 > 0) {
            i11++;
            i10 >>>= 1;
        }
        return i11;
    }

    public static f4.a b(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = list.get(i10);
            int i11 = g0.f10384a;
            String[] strArrSplit = str.split("=", 2);
            if (strArrSplit.length != 2) {
                a4.g.f("Failed to parse Vorbis comment: ", str, "VorbisUtil");
            } else if (strArrSplit[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(i4.a.a(new m5.w(Base64.decode(strArrSplit[1], 0))));
                } catch (RuntimeException e10) {
                    m5.p.h("VorbisUtil", "Failed to parse vorbis picture", e10);
                }
            } else {
                arrayList.add(new n4.a(strArrSplit[0], strArrSplit[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new f4.a(arrayList);
    }

    public static a c(m5.w wVar, boolean z10, boolean z11) throws i1 {
        if (z10) {
            d(3, wVar, false);
        }
        wVar.q((int) wVar.j());
        long j10 = wVar.j();
        String[] strArr = new String[(int) j10];
        for (int i10 = 0; i10 < j10; i10++) {
            strArr[i10] = wVar.q((int) wVar.j());
            strArr[i10].length();
        }
        if (z11 && (wVar.t() & 1) == 0) {
            throw i1.a("framing bit expected to be set", null);
        }
        return new a(strArr);
    }

    public static boolean d(int i10, m5.w wVar, boolean z10) throws i1 {
        if (wVar.f10477c - wVar.f10476b < 7) {
            if (z10) {
                return false;
            }
            StringBuilder sbC = a0.b.c("too short header: ");
            sbC.append(wVar.f10477c - wVar.f10476b);
            throw i1.a(sbC.toString(), null);
        }
        if (wVar.t() != i10) {
            if (z10) {
                return false;
            }
            StringBuilder sbC2 = a0.b.c("expected header type ");
            sbC2.append(Integer.toHexString(i10));
            throw i1.a(sbC2.toString(), null);
        }
        if (wVar.t() == 118 && wVar.t() == 111 && wVar.t() == 114 && wVar.t() == 98 && wVar.t() == 105 && wVar.t() == 115) {
            return true;
        }
        if (z10) {
            return false;
        }
        throw i1.a("expected characters 'vorbis'", null);
    }
}
