package h9;

import android.content.Intent;
import com.nike.adapt.R;
import com.nike.adapt.ui.settings.SettingsActivity;

/* JADX INFO: compiled from: ActivityDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g0 extends h9.a<SettingsActivity> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f8326f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final fd.d<String> f8327g = androidx.lifecycle.o.w(3, a.f8331h);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f8328c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f8329d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f8330e;

    /* JADX INFO: compiled from: ActivityDoNavigate.kt */
    public static final class a extends rd.o implements qd.a<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f8331h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final String invoke() {
            return androidx.lifecycle.o.r(R.string.adapt_support_pref_key);
        }
    }

    /* JADX INFO: compiled from: ActivityDoNavigate.kt */
    public static final class b {
        public final String a() {
            return g0.f8327g.getValue();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g0() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    public g0(String str, boolean z10) {
        super(SettingsActivity.class);
        this.f8328c = str;
        this.f8329d = z10;
        this.f8330e = true;
    }

    @Override // f8.b
    public final void a(Intent intent) {
        intent.putExtra("DEEP_LINK_KEY", this.f8328c);
        intent.putExtra("ADD_BACK_STACK", this.f8329d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g0)) {
            return false;
        }
        g0 g0Var = (g0) obj;
        return p4.h.c(this.f8328c, g0Var.f8328c) && this.f8329d == g0Var.f8329d;
    }

    @Override // h9.a
    public final boolean h() {
        return this.f8330e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    public final int hashCode() {
        String str = this.f8328c;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        boolean z10 = this.f8329d;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return iHashCode + r10;
    }

    public final String toString() {
        return "SettingsDoNavigate(deepLinkKey=" + this.f8328c + ", addSettingsToBackStack=" + this.f8329d + ")";
    }

    public /* synthetic */ g0(String str, boolean z10, int i10, rd.h hVar) {
        this(null, true);
    }
}
