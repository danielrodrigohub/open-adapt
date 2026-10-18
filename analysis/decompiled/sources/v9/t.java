package v9;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Application;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.nike.android.telemetry.internal.worker.TelemetryWorker;
import java.io.File;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import okhttp3.HttpUrl;
import pd.b.C0235b;

/* JADX INFO: compiled from: AdaptKitModule.kt */
/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static fb.e f16825d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static o0 f16826e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f16827f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f16828g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Application f16829h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static ma.a f16831j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static boolean f16832k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final t f16822a = new t();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final fd.h f16823b = (fd.h) androidx.lifecycle.o.x(b.f16834h);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final db.b f16824c = db.b.f6161b;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final eb.f f16830i = eb.f.f6710a;

    /* JADX INFO: compiled from: AdaptKitModule.kt */
    public static final class a extends m {
        public static final Parcelable.Creator<a> CREATOR = new C0296a();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f16833i;

        /* JADX INFO: renamed from: v9.t$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AdaptKitModule.kt */
        public static final class C0296a implements Parcelable.Creator<a> {
            @Override // android.os.Parcelable.Creator
            public final a createFromParcel(Parcel parcel) {
                p4.h.j(parcel, "parcel");
                return new a(parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final a[] newArray(int i10) {
                return new a[i10];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str) {
            super(v9.a.f16445m);
            p4.h.j(str, "message");
            v9.a.C0295a c0295a = v9.a.f16441i;
            this.f16833i = str;
        }

        @Override // v9.m, eb.d
        public final String b() {
            return this.f16833i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && p4.h.c(this.f16833i, ((a) obj).f16833i);
        }

        @Override // v9.m, java.lang.Throwable
        public final String getMessage() {
            return this.f16833i;
        }

        public final int hashCode() {
            return this.f16833i.hashCode();
        }

        @Override // java.lang.Throwable
        public final String toString() {
            return a0.d.c("CoreRFError(message=", this.f16833i, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            p4.h.j(parcel, "out");
            parcel.writeString(this.f16833i);
        }
    }

    /* JADX INFO: compiled from: AdaptKitModule.kt */
    public static final class b extends rd.o implements qd.a<ab.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f16834h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final ab.a invoke() {
            Objects.requireNonNull(ab.a.f552a);
            return ab.a.C0012a.f554b;
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.LinkedHashMap, java.util.Map<java.lang.String, w9.d>] */
    public final void a() {
        synchronized (w9.d.f17265a) {
            w9.d.a.f17267b.clear();
            ya.a.f18735a.a();
        }
    }

    public final String b() {
        String str = f16828g;
        if (str != null) {
            return str;
        }
        p4.h.C("accountType");
        throw null;
    }

    public final ma.a c() {
        ma.a aVar = f16831j;
        if (aVar != null) {
            return aVar;
        }
        p4.h.C("adaptKitAuthProvider");
        throw null;
    }

    public final Application d() {
        Application application = f16829h;
        if (application != null) {
            return application;
        }
        p4.h.C("application");
        throw null;
    }

    public final ab.a e() {
        return (ab.a) f16823b.getValue();
    }

    public final List<ea.m> f() {
        return e().c();
    }

    public final void g() {
        pd.b.C0235b c0235b;
        a();
        db.b bVar = db.b.f6161b;
        try {
            t tVar = f16822a;
            String strC = tVar.c().c();
            if (strC != null) {
                AccountManager accountManager = (AccountManager) tVar.d().getSystemService(AccountManager.class);
                Account account = accountManager.getAccountsByType(tVar.b())[0];
                String[] strArr = db.b.f6162c;
                for (int i10 = 0; i10 < 1; i10++) {
                    try {
                        accountManager.setUserData(account, db.b.f6161b.d(strArr[i10], strC), HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                    } catch (Throwable unused) {
                    }
                }
            }
            loop1: while (true) {
                boolean z10 = true;
                while (true) {
                    if (!c0235b.hasNext()) {
                        break loop1;
                    }
                    File next = c0235b.next();
                    if (next.delete() || !next.exists()) {
                        if (z10) {
                            break;
                        }
                    }
                    z10 = false;
                }
            }
        } catch (Throwable unused2) {
        }
        c0235b = new pd.b(new File(d().getFilesDir() + "/adaptkit_session_data")).new C0235b();
        Objects.requireNonNull(f16830i);
        gb.c cVar = gb.c.f7932a;
        Objects.requireNonNull(cVar);
        Context context = gb.c.f7933b;
        if (context == null) {
            p4.h.C("context");
            throw null;
        }
        String strB = cVar.b();
        k1.n.a aVar = new k1.n.a(TelemetryWorker.class);
        k1.c.a aVar2 = new k1.c.a();
        aVar2.f9583b = k1.m.NOT_ROAMING;
        aVar2.f9582a = false;
        aVar.f9620b.f15359j = new k1.c(aVar2);
        k1.n nVarA = aVar.a();
        l1.k kVarA = l1.k.a(context);
        Objects.requireNonNull(kVarA);
        new l1.g(kVarA, strB, 3, Collections.singletonList(nVarA), null).c();
        c().b(null);
    }
}
