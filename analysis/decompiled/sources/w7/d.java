package w7;

import androidx.lifecycle.o;
import com.newrelic.agent.android.BuildConfig;
import fd.h;

/* JADX INFO: compiled from: BigfootAuthProvider.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f17236a = (h) o.x(a.f17238h);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final h f17237b = (h) o.x(b.f17239h);

    /* JADX INFO: compiled from: BigfootAuthProvider.kt */
    public static final class a extends rd.o implements qd.a<c> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f17238h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final /* bridge */ /* synthetic */ c invoke() {
            return c.f17234a;
        }
    }

    /* JADX INFO: compiled from: BigfootAuthProvider.kt */
    public static final class b extends rd.o implements qd.a<Boolean> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f17239h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final Boolean invoke() {
            boolean zC;
            try {
                Class.forName("com.nike.adapt.ExampleInstrumentedTest");
                zC = p4.h.c(BuildConfig.BUILD_TYPE, "debug");
            } catch (ClassNotFoundException unused) {
                zC = false;
            }
            return Boolean.valueOf(zC);
        }
    }

    public static final boolean a() {
        return ((Boolean) f17237b.getValue()).booleanValue();
    }
}
