package gb;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import androidx.appcompat.widget.o;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.nike.android.telemetry.internal.database.TelemetryDatabase;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.Objects;
import java.util.Observable;
import java.util.UUID;
import p4.h;
import q.g;
import v9.a0;

/* JADX INFO: compiled from: TelemetryModule.kt */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"StaticFieldLeak"})
public final class c extends Observable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f7932a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Context f7933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static b f7934c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f7935d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f7936e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f7937f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f7938g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static String f7939h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static String f7940i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static String f7941j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static String f7942k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static String f7943l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static TelemetryDatabase f7944m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static boolean f7945n;

    public final TelemetryDatabase a() {
        TelemetryDatabase telemetryDatabase = f7944m;
        if (telemetryDatabase != null) {
            return telemetryDatabase;
        }
        h.C("database");
        throw null;
    }

    public final String b() {
        String str = f7941j;
        if (str != null) {
            return str;
        }
        h.C("workerTag");
        throw null;
    }

    public final void c(a... aVarArr) {
        b bVar = f7934c;
        if (bVar == null) {
            h.C("telemetryGatekeeper");
            throw null;
        }
        boolean zA = bVar.a();
        int i10 = 0;
        int i11 = 1;
        if (!(!(aVarArr.length == 0)) || !zA) {
            if (zA || !(!a().r().c().isEmpty())) {
                return;
            }
            a().d();
            return;
        }
        mb.b bVar2 = mb.b.f10959a;
        Context context = f7933b;
        if (context == null) {
            h.C("context");
            throw null;
        }
        String strB = b();
        String str = f7935d;
        if (str == null) {
            h.C("sessionId");
            throw null;
        }
        String str2 = f7936e;
        if (str2 == null) {
            h.C(AnalyticsAttribute.APP_ID_ATTRIBUTE);
            throw null;
        }
        String str3 = f7937f;
        if (str3 == null) {
            h.C("appVersion");
            throw null;
        }
        String str4 = f7938g;
        if (str4 == null) {
            h.C("libraryId");
            throw null;
        }
        String str5 = f7939h;
        if (str5 == null) {
            h.C("libraryVersion");
            throw null;
        }
        String str6 = f7942k;
        a[] aVarArr2 = (a[]) Arrays.copyOf(aVarArr, aVarArr.length);
        h.j(aVarArr2, "telemetry");
        ArrayList arrayList = new ArrayList(aVarArr2.length);
        int length = aVarArr2.length;
        while (i10 < length) {
            a aVar = aVarArr2[i10];
            long jCurrentTimeMillis = System.currentTimeMillis();
            String str7 = aVar.f7929a;
            int i12 = aVar.f7930b;
            o.d(i12, AnalyticsAttribute.TYPE_ATTRIBUTE);
            int iA = g.a(i12);
            if (iA != 0) {
                if (iA == i11) {
                    i11 = 2;
                } else {
                    if (iA != 2) {
                        throw new j2.a();
                    }
                    i11 = 3;
                }
            }
            Map<String, Object> map = aVar.f7931c;
            String str8 = Build.MODEL;
            h.i(str8, "MODEL");
            String strValueOf = String.valueOf(Build.VERSION.SDK_INT);
            String displayName = Calendar.getInstance().getTimeZone().getDisplayName();
            h.i(displayName, "getInstance().timeZone.displayName");
            String string = UUID.randomUUID().toString();
            h.i(string, "randomUUID().toString()");
            ArrayList arrayList2 = arrayList;
            String str9 = str4;
            arrayList2.add(new kb.a(0L, jCurrentTimeMillis, str7, i11, str, str2, str3, str8, strValueOf, str9, str5, displayName, str6, map, false, false, 0, string));
            i10++;
            str4 = str9;
            arrayList = arrayList2;
            length = length;
            aVarArr2 = aVarArr2;
            i11 = 1;
            str6 = str6;
        }
        nb.b bVar3 = nb.b.f12034i;
        mb.a aVar2 = new mb.a(context, str4, arrayList, strB);
        Objects.requireNonNull(bVar3);
        bVar3.f12036h.execute(new a0(aVar2, 1));
    }
}
