package i5;

import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;
import m5.g0;
import m5.w;

/* JADX INFO: compiled from: Mp4WebvttDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends z4.f {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final w f8760m = new w();

    @Override // z4.f
    public final z4.g k(byte[] bArr, int i10, boolean z10) throws z4.i {
        z4.a aVarA;
        this.f8760m.B(bArr, i10);
        ArrayList arrayList = new ArrayList();
        while (true) {
            w wVar = this.f8760m;
            int i11 = wVar.f10477c - wVar.f10476b;
            if (i11 <= 0) {
                return new b(arrayList);
            }
            if (i11 < 8) {
                throw new z4.i("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int iE = wVar.e();
            if (this.f8760m.e() == 1987343459) {
                w wVar2 = this.f8760m;
                int i12 = iE - 8;
                CharSequence charSequenceF = null;
                z4.a.C0332a c0332aA = null;
                while (i12 > 0) {
                    if (i12 < 8) {
                        throw new z4.i("Incomplete vtt cue box header found.");
                    }
                    int iE2 = wVar2.e();
                    int iE3 = wVar2.e();
                    int i13 = iE2 - 8;
                    String strO = g0.o(wVar2.f10475a, wVar2.f10476b, i13);
                    wVar2.E(i13);
                    i12 = (i12 - 8) - i13;
                    if (iE3 == 1937011815) {
                        Pattern pattern = g.f8787a;
                        g.d dVar = new g.d();
                        g.e(strO, dVar);
                        c0332aA = dVar.a();
                    } else if (iE3 == 1885436268) {
                        charSequenceF = g.f(null, strO.trim(), Collections.emptyList());
                    }
                }
                if (charSequenceF == null) {
                    charSequenceF = "";
                }
                if (c0332aA != null) {
                    c0332aA.f19311a = charSequenceF;
                    aVarA = c0332aA.a();
                } else {
                    Pattern pattern2 = g.f8787a;
                    g.d dVar2 = new g.d();
                    dVar2.f8801c = charSequenceF;
                    aVarA = dVar2.a().a();
                }
                arrayList.add(aVarA);
            } else {
                this.f8760m.E(iE - 8);
            }
        }
    }
}
