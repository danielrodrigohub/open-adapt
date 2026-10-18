package i5;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m5.w;
import n3.i1;

/* JADX INFO: compiled from: WebvttDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class h extends z4.f {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final w f8810m = new w();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final c f8811n = new c();

    @Override // z4.f
    public final z4.g k(byte[] bArr, int i10, boolean z10) throws z4.i {
        this.f8810m.B(bArr, i10);
        ArrayList arrayList = new ArrayList();
        try {
            i.d(this.f8810m);
            while (!TextUtils.isEmpty(this.f8810m.f())) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                w wVar = this.f8810m;
                int i11 = 0;
                byte b10 = -1;
                while (b10 == -1) {
                    i11 = wVar.f10476b;
                    String strF = wVar.f();
                    if (strF == null) {
                        b10 = 0;
                    } else if ("STYLE".equals(strF)) {
                        b10 = 2;
                    } else {
                        b10 = strF.startsWith("NOTE") ? (byte) 1 : (byte) 3;
                    }
                }
                wVar.D(i11);
                if (b10 == 0) {
                    return new k(arrayList2);
                }
                if (b10 == 1) {
                    while (!TextUtils.isEmpty(this.f8810m.f())) {
                    }
                } else if (b10 == 2) {
                    if (!arrayList2.isEmpty()) {
                        throw new z4.i("A style block was found after the first cue.");
                    }
                    this.f8810m.f();
                    arrayList.addAll(this.f8811n.a(this.f8810m));
                } else if (b10 == 3) {
                    w wVar2 = this.f8810m;
                    Pattern pattern = g.f8787a;
                    String strF2 = wVar2.f();
                    e eVarD = null;
                    if (strF2 != null) {
                        Pattern pattern2 = g.f8787a;
                        Matcher matcher = pattern2.matcher(strF2);
                        if (matcher.matches()) {
                            eVarD = g.d(null, matcher, wVar2, arrayList);
                        } else {
                            String strF3 = wVar2.f();
                            if (strF3 != null) {
                                Matcher matcher2 = pattern2.matcher(strF3);
                                if (matcher2.matches()) {
                                    eVarD = g.d(strF2.trim(), matcher2, wVar2, arrayList);
                                }
                            }
                        }
                    }
                    if (eVarD != null) {
                        arrayList2.add(eVarD);
                    }
                }
            }
        } catch (i1 e10) {
            throw new z4.i(e10);
        }
    }
}
