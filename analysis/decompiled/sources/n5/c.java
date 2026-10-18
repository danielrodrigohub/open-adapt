package n5;

import m5.w;

/* JADX INFO: compiled from: DolbyVisionConfig.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f11869a;

    public c(String str) {
        this.f11869a = str;
    }

    public static c a(w wVar) {
        String str;
        wVar.E(2);
        int iT = wVar.t();
        int i10 = iT >> 1;
        int iT2 = ((wVar.t() >> 3) & 31) | ((iT & 1) << 5);
        if (i10 == 4 || i10 == 5 || i10 == 7) {
            str = "dvhe";
        } else if (i10 == 8) {
            str = "hev1";
        } else {
            if (i10 != 9) {
                return null;
            }
            str = "avc3";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(".0");
        sb2.append(i10);
        sb2.append(iT2 >= 10 ? "." : ".0");
        sb2.append(iT2);
        return new c(sb2.toString());
    }
}
