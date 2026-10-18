package u7;

import android.content.SharedPreferences;
import androidx.lifecycle.o;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.nike.adapt.BigfootApplication;
import fd.h;

/* JADX INFO: compiled from: MigrationPreferenceHelper.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f16021a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final h f16022b = (h) o.x(b.f16025h);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h f16023c = (h) o.x(C0278a.f16024h);

    /* JADX INFO: renamed from: u7.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: MigrationPreferenceHelper.kt */
    public static final class C0278a extends rd.o implements qd.a<SharedPreferences> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final C0278a f16024h = new C0278a();

        public C0278a() {
            super(0);
        }

        @Override // qd.a
        public final SharedPreferences invoke() {
            return BigfootApplication.f5638p.a().getSharedPreferences("adapt_preferences", 0);
        }
    }

    /* JADX INFO: compiled from: MigrationPreferenceHelper.kt */
    public static final class b extends rd.o implements qd.a<SharedPreferences> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f16025h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final SharedPreferences invoke() {
            return BigfootApplication.f5638p.a().getSharedPreferences("bigfoot_paired_devices", 0);
        }
    }
}
