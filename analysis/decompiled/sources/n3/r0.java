package n3;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Objects;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r0 implements h.a, s3.l, e4.r.f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ r0 f11665c = new r0(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ r0 f11666d = new r0(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ r0 f11667e = new r0(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ r0 f11668f = new r0(3);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ r0 f11669g = new r0(4);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ r0 f11670h = new r0(5);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ r0 f11671i = new r0(6);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11672b;

    public /* synthetic */ r0(int i10) {
        this.f11672b = i10;
    }

    @Override // e4.r.f
    public final int a(Object obj) {
        Pattern pattern = e4.r.f6460a;
        return ((e4.n) obj).f6415a.startsWith("OMX.google") ? 1 : 0;
    }

    @Override // s3.l
    public final s3.h[] c() {
        switch (this.f11672b) {
            case 2:
                return new s3.h[]{new a4.h(0)};
            default:
                return new s3.h[]{new c4.c0(1, new m5.d0(0L), new c4.g())};
        }
    }

    @Override // n3.h.a
    public final h d(Bundle bundle) {
        int i10 = 0;
        switch (this.f11672b) {
            case 0:
                s0 s0Var = s0.N;
                s0.a aVar = new s0.a();
                if (bundle != null) {
                    ClassLoader classLoader = m5.b.class.getClassLoader();
                    int i11 = m5.g0.f10384a;
                    bundle.setClassLoader(classLoader);
                }
                String string = bundle.getString(s0.e(0));
                s0 s0Var2 = s0.N;
                String str = s0Var2.f11676h;
                if (string == null) {
                    string = str;
                }
                aVar.f11695a = string;
                String string2 = bundle.getString(s0.e(1));
                String str2 = s0Var2.f11677i;
                if (string2 == null) {
                    string2 = str2;
                }
                aVar.f11696b = string2;
                String string3 = bundle.getString(s0.e(2));
                String str3 = s0Var2.f11678j;
                if (string3 == null) {
                    string3 = str3;
                }
                aVar.f11697c = string3;
                aVar.f11698d = bundle.getInt(s0.e(3), s0Var2.f11679k);
                aVar.f11699e = bundle.getInt(s0.e(4), s0Var2.f11680l);
                aVar.f11700f = bundle.getInt(s0.e(5), s0Var2.f11681m);
                aVar.f11701g = bundle.getInt(s0.e(6), s0Var2.f11682n);
                String string4 = bundle.getString(s0.e(7));
                String str4 = s0Var2.f11684p;
                if (string4 == null) {
                    string4 = str4;
                }
                aVar.f11702h = string4;
                f4.a aVar2 = (f4.a) bundle.getParcelable(s0.e(8));
                f4.a aVar3 = s0Var2.f11685q;
                if (aVar2 == null) {
                    aVar2 = aVar3;
                }
                aVar.f11703i = aVar2;
                String string5 = bundle.getString(s0.e(9));
                String str5 = s0Var2.f11686r;
                if (string5 == null) {
                    string5 = str5;
                }
                aVar.f11704j = string5;
                String string6 = bundle.getString(s0.e(10));
                String str6 = s0Var2.f11687s;
                if (string6 == null) {
                    string6 = str6;
                }
                aVar.f11705k = string6;
                aVar.f11706l = bundle.getInt(s0.e(11), s0Var2.f11688t);
                ArrayList arrayList = new ArrayList();
                while (true) {
                    byte[] byteArray = bundle.getByteArray(s0.f(i10));
                    if (byteArray == null) {
                        aVar.f11707m = arrayList;
                        aVar.f11708n = (r3.d) bundle.getParcelable(s0.e(13));
                        String strE = s0.e(14);
                        s0 s0Var3 = s0.N;
                        aVar.f11709o = bundle.getLong(strE, s0Var3.f11691w);
                        aVar.f11710p = bundle.getInt(s0.e(15), s0Var3.f11692x);
                        aVar.f11711q = bundle.getInt(s0.e(16), s0Var3.f11693y);
                        aVar.f11712r = bundle.getFloat(s0.e(17), s0Var3.f11694z);
                        aVar.f11713s = bundle.getInt(s0.e(18), s0Var3.A);
                        aVar.f11714t = bundle.getFloat(s0.e(19), s0Var3.B);
                        aVar.f11715u = bundle.getByteArray(s0.e(20));
                        aVar.f11716v = bundle.getInt(s0.e(21), s0Var3.D);
                        Bundle bundle2 = bundle.getBundle(s0.e(22));
                        if (bundle2 != null) {
                            aVar.f11717w = (n5.b) n5.b.f11863m.d(bundle2);
                        }
                        aVar.f11718x = bundle.getInt(s0.e(23), s0Var3.F);
                        aVar.f11719y = bundle.getInt(s0.e(24), s0Var3.G);
                        aVar.f11720z = bundle.getInt(s0.e(25), s0Var3.H);
                        aVar.A = bundle.getInt(s0.e(26), s0Var3.I);
                        aVar.B = bundle.getInt(s0.e(27), s0Var3.J);
                        aVar.C = bundle.getInt(s0.e(28), s0Var3.K);
                        aVar.D = bundle.getInt(s0.e(29), s0Var3.L);
                        return new s0(aVar);
                    }
                    arrayList.add(byteArray);
                    i10++;
                }
                break;
            case 1:
                return new m1(bundle.getFloat(m1.b(0), 1.0f), bundle.getFloat(m1.b(1), 1.0f));
            case 5:
                int i12 = bundle.getInt(j5.i.d.b(0), -1);
                int[] intArray = bundle.getIntArray(j5.i.d.b(1));
                int i13 = bundle.getInt(j5.i.d.b(2), -1);
                m5.a.a(i12 >= 0 && i13 >= 0);
                Objects.requireNonNull(intArray);
                return new j5.i.d(i12, intArray, i13);
            default:
                return new n5.t(bundle.getInt(n5.t.b(0), 0), bundle.getInt(n5.t.b(1), 0), bundle.getInt(n5.t.b(2), 0), bundle.getFloat(n5.t.b(3), 1.0f));
        }
    }
}
