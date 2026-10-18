package n3;

import android.net.Uri;
import android.os.Bundle;
import java.lang.reflect.Constructor;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n implements h.a, m5.o.a, s3.f.a.InterfaceC0256a, s3.l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ n f11542c = new n(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ n f11543d = new n(1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ n f11544e = new n(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ n f11545f = new n(3);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ n f11546g = new n(4);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ n f11547h = new n(5);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ n f11548i = new n(6);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11549b;

    public /* synthetic */ n(int i10) {
        this.f11549b = i10;
    }

    @Override // s3.f.a.InterfaceC0256a
    public final Constructor b() {
        int[] iArr = s3.f.f15044b;
        return Class.forName("com.google.android.exoplayer2.decoder.midi.MidiExtractor").asSubclass(s3.h.class).getConstructor(new Class[0]);
    }

    @Override // s3.l
    public final s3.h[] c() {
        return new s3.h[]{new c4.e(0)};
    }

    @Override // n3.h.a
    public final h d(Bundle bundle) {
        Bundle bundle2;
        Bundle bundle3;
        switch (this.f11549b) {
            case 0:
                return new o(bundle.getInt(o.b(0), 0), bundle.getInt(o.b(1), 0), bundle.getInt(o.b(2), 0));
            case 3:
                a1.a aVar = new a1.a();
                aVar.f11242a = bundle.getCharSequence(a1.c(0));
                aVar.f11243b = bundle.getCharSequence(a1.c(1));
                aVar.f11244c = bundle.getCharSequence(a1.c(2));
                aVar.f11245d = bundle.getCharSequence(a1.c(3));
                aVar.f11246e = bundle.getCharSequence(a1.c(4));
                aVar.f11247f = bundle.getCharSequence(a1.c(5));
                aVar.f11248g = bundle.getCharSequence(a1.c(6));
                byte[] byteArray = bundle.getByteArray(a1.c(10));
                Integer numValueOf = bundle.containsKey(a1.c(29)) ? Integer.valueOf(bundle.getInt(a1.c(29))) : null;
                aVar.f11251j = byteArray != null ? (byte[]) byteArray.clone() : null;
                aVar.f11252k = numValueOf;
                aVar.f11253l = (Uri) bundle.getParcelable(a1.c(11));
                aVar.f11264w = bundle.getCharSequence(a1.c(22));
                aVar.f11265x = bundle.getCharSequence(a1.c(23));
                aVar.f11266y = bundle.getCharSequence(a1.c(24));
                aVar.B = bundle.getCharSequence(a1.c(27));
                aVar.C = bundle.getCharSequence(a1.c(28));
                aVar.D = bundle.getCharSequence(a1.c(30));
                aVar.E = bundle.getBundle(a1.c(1000));
                if (bundle.containsKey(a1.c(8)) && (bundle3 = bundle.getBundle(a1.c(8))) != null) {
                    aVar.f11249h = (r1) r1.f11673h.d(bundle3);
                }
                if (bundle.containsKey(a1.c(9)) && (bundle2 = bundle.getBundle(a1.c(9))) != null) {
                    aVar.f11250i = (r1) r1.f11673h.d(bundle2);
                }
                if (bundle.containsKey(a1.c(12))) {
                    aVar.f11254m = Integer.valueOf(bundle.getInt(a1.c(12)));
                }
                if (bundle.containsKey(a1.c(13))) {
                    aVar.f11255n = Integer.valueOf(bundle.getInt(a1.c(13)));
                }
                if (bundle.containsKey(a1.c(14))) {
                    aVar.f11256o = Integer.valueOf(bundle.getInt(a1.c(14)));
                }
                if (bundle.containsKey(a1.c(15))) {
                    aVar.f11257p = Boolean.valueOf(bundle.getBoolean(a1.c(15)));
                }
                if (bundle.containsKey(a1.c(16))) {
                    aVar.f11258q = Integer.valueOf(bundle.getInt(a1.c(16)));
                }
                if (bundle.containsKey(a1.c(17))) {
                    aVar.f11259r = Integer.valueOf(bundle.getInt(a1.c(17)));
                }
                if (bundle.containsKey(a1.c(18))) {
                    aVar.f11260s = Integer.valueOf(bundle.getInt(a1.c(18)));
                }
                if (bundle.containsKey(a1.c(19))) {
                    aVar.f11261t = Integer.valueOf(bundle.getInt(a1.c(19)));
                }
                if (bundle.containsKey(a1.c(20))) {
                    aVar.f11262u = Integer.valueOf(bundle.getInt(a1.c(20)));
                }
                if (bundle.containsKey(a1.c(21))) {
                    aVar.f11263v = Integer.valueOf(bundle.getInt(a1.c(21)));
                }
                if (bundle.containsKey(a1.c(25))) {
                    aVar.f11267z = Integer.valueOf(bundle.getInt(a1.c(25)));
                }
                if (bundle.containsKey(a1.c(26))) {
                    aVar.A = Integer.valueOf(bundle.getInt(a1.c(26)));
                }
                return new a1(aVar);
            default:
                int i10 = bundle.getInt(b2.b.i(0), 0);
                long j10 = bundle.getLong(b2.b.i(1), -9223372036854775807L);
                long j11 = bundle.getLong(b2.b.i(2), 0L);
                boolean z10 = bundle.getBoolean(b2.b.i(3));
                Bundle bundle4 = bundle.getBundle(b2.b.i(4));
                q4.a aVar2 = bundle4 != null ? (q4.a) q4.a.f13608p.d(bundle4) : q4.a.f13606n;
                b2.b bVar = new b2.b();
                bVar.j(null, null, i10, j10, j11, aVar2, z10);
                return bVar;
        }
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        switch (this.f11549b) {
            case 1:
                int i10 = k0.f11461m0;
                ((o1.c) obj).i(q.d(new q0(1), 1003));
                break;
            default:
                ((o1.c) obj).j();
                break;
        }
    }
}
