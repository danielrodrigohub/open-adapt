package v7;

import com.nike.adapt.R;

/* JADX INFO: compiled from: EffectType.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f16365a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final fd.d<c[]> f16366b = androidx.lifecycle.o.w(3, a.f16367h);

    /* JADX INFO: compiled from: EffectType.kt */
    public static final class a extends rd.o implements qd.a<c[]> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f16367h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final c[] invoke() {
            return new c[]{e.f16371c, f.f16373c, C0294c.f16368c, d.f16370c};
        }
    }

    /* JADX INFO: compiled from: EffectType.kt */
    public static final class b {
        /* JADX WARN: Code duplicated, block: B:13:0x0021  */
        /* JADX WARN: Code duplicated, block: B:17:? A[RETURN, SYNTHETIC] */
        public final c a(int i10) {
            for (c cVar : c.f16366b.getValue()) {
                if (cVar.a() == i10) {
                    if (cVar == null) {
                        return d.f16370c;
                    }
                    return cVar;
                }
            }
            cVar = null;
            if (cVar == null) {
                return d.f16370c;
            }
            return cVar;
        }
    }

    /* JADX INFO: renamed from: v7.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: EffectType.kt */
    public static final class C0294c extends c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final C0294c f16368c = new C0294c();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f16369d = androidx.lifecycle.o.r(R.string.adapt_lights_effect_gradient);

        @Override // v7.c
        public final int a() {
            return 3;
        }

        @Override // v7.c
        public final String b() {
            return f16369d;
        }
    }

    /* JADX INFO: compiled from: EffectType.kt */
    public static final class d extends c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final d f16370c = new d();

        @Override // v7.c
        public final int a() {
            return 0;
        }

        @Override // v7.c
        public final String b() {
            return "None";
        }
    }

    /* JADX INFO: compiled from: EffectType.kt */
    public static final class e extends c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final e f16371c = new e();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f16372d = androidx.lifecycle.o.r(R.string.adapt_lights_effect_pulsing);

        @Override // v7.c
        public final int a() {
            return 1;
        }

        @Override // v7.c
        public final String b() {
            return f16372d;
        }
    }

    /* JADX INFO: compiled from: EffectType.kt */
    public static final class f extends c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final f f16373c = new f();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f16374d = androidx.lifecycle.o.r(R.string.adapt_lights_effect_strobe);

        @Override // v7.c
        public final int a() {
            return 2;
        }

        @Override // v7.c
        public final String b() {
            return f16374d;
        }
    }

    public abstract int a();

    public abstract String b();
}
