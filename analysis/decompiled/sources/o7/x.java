package o7;

import com.newrelic.agent.android.agentdata.HexAttribute;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Vector;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: NikeLogger.kt */
/* JADX INFO: loaded from: classes.dex */
public final class x implements t {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static o f12422c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f12424e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final x f12420a = new x();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Vector<a> f12421b = new Vector<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Pattern f12423d = Pattern.compile("(\\$\\d+)+$");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final SimpleDateFormat f12425f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final ExecutorService f12426g = Executors.newSingleThreadExecutor(w.f12416b);

    /* JADX INFO: compiled from: NikeLogger.kt */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f12427a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f12428b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f12429c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f12430d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f12431e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f12432f;

        public a(String str, String str2, String str3, boolean z10, String str4, String str5) {
            p4.h.j(str2, "moduleTag");
            p4.h.j(str3, "message");
            p4.h.j(str4, "level");
            this.f12427a = str;
            this.f12428b = str2;
            this.f12429c = str3;
            this.f12430d = z10;
            this.f12431e = str4;
            this.f12432f = str5;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return p4.h.c(this.f12427a, aVar.f12427a) && p4.h.c(this.f12428b, aVar.f12428b) && p4.h.c(this.f12429c, aVar.f12429c) && this.f12430d == aVar.f12430d && p4.h.c(this.f12431e, aVar.f12431e) && p4.h.c(this.f12432f, aVar.f12432f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v5, types: [int] */
        /* JADX WARN: Type inference failed for: r1v3, types: [int] */
        /* JADX WARN: Type inference failed for: r1v8 */
        /* JADX WARN: Type inference failed for: r1v9 */
        public final int hashCode() {
            int iC = a1.f.c(this.f12429c, a1.f.c(this.f12428b, this.f12427a.hashCode() * 31, 31), 31);
            boolean z10 = this.f12430d;
            ?? r10 = z10;
            if (z10) {
                r10 = 1;
            }
            return this.f12432f.hashCode() + a1.f.c(this.f12431e, (iC + r10) * 31, 31);
        }

        public final String toString() {
            String str = this.f12427a;
            String str2 = this.f12428b;
            String str3 = this.f12429c;
            boolean z10 = this.f12430d;
            String str4 = this.f12431e;
            String str5 = this.f12432f;
            StringBuilder sbA = k1.a.a("LogInfo(date=", str, ", moduleTag=", str2, ", message=");
            sbA.append(str3);
            sbA.append(", hasStackTrace=");
            sbA.append(z10);
            sbA.append(", level=");
            sbA.append(str4);
            sbA.append(", stackTrace=");
            sbA.append(str5);
            sbA.append(")");
            return sbA.toString();
        }
    }

    public final void a(String str) {
        p4.h.j(str, "name");
        String str2 = e("Bread_Crumb").f7388h;
        x xVar = f12420a;
        f12420a.h(str2, str, (120 & 4) != 0 ? u.DEBUG : u.INFO, (120 & 8) != 0 ? null : null, null, (120 & 32) != 0 ? null : null, (120 & 64) != 0 ? false : false);
        o oVar = f12422c;
        if (oVar != null) {
            oVar.log(u.DEBUG, "breadcrumb", str, (56 & 8) != 0 ? null : null, (56 & 16) != 0 ? null : null, (56 & 32) != 0 ? null : null);
        } else {
            p4.h.C("externalReporter");
            throw null;
        }
    }

    public final void b(String str, String str2) {
        p4.h.j(str, "tag");
        fd.e<String, String> eVarE = e(str);
        String str3 = eVarE.f7388h;
        String str4 = eVarE.f7389i;
        x xVar = f12420a;
        String str5 = str2 != null ? str2 : str4;
        u uVar = u.DEBUG;
        Object[] array = yd.s.B0(str4, new String[]{"|"}).toArray(new String[0]);
        p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        f12420a.h(str3, str5, (120 & 4) != 0 ? u.DEBUG : uVar, (120 & 8) != 0 ? null : (String[]) array, null, (120 & 32) != 0 ? null : null, (120 & 64) != 0 ? false : false);
    }

    public final void c(String str, String str2, Throwable th) {
        p4.h.j(th, HexAttribute.HEX_ATTR_CAUSE);
        fd.e<String, String> eVarE = e(str);
        String str3 = eVarE.f7388h;
        String str4 = eVarE.f7389i;
        x xVar = f12420a;
        String str5 = str2 != null ? str2 : str4;
        u uVar = u.DEBUG;
        Object[] array = yd.s.B0(str4, new String[]{"|"}).toArray(new String[0]);
        p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        f12420a.h(str3, str5, (120 & 4) != 0 ? u.DEBUG : uVar, (120 & 8) != 0 ? null : (String[]) array, null, (120 & 32) != 0 ? null : th, (120 & 64) != 0 ? false : false);
    }

    public final void d(String str, String str2) {
        p4.h.j(str, "tag");
        fd.e<String, String> eVarE = e(str);
        String str3 = eVarE.f7388h;
        String str4 = eVarE.f7389i;
        x xVar = f12420a;
        String str5 = str2 != null ? str2 : str4;
        u uVar = u.ERROR;
        Object[] array = yd.s.B0(str4, new String[]{"|"}).toArray(new String[0]);
        p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        f12420a.h(str3, str5, (120 & 4) != 0 ? u.DEBUG : uVar, (120 & 8) != 0 ? null : (String[]) array, null, (120 & 32) != 0 ? null : null, (120 & 64) != 0 ? false : false);
    }

    public final fd.e<String, String> e(String str) {
        if (!yd.s.i0(str, "|")) {
            return new fd.e<>(str, str);
        }
        List listB0 = yd.s.B0(str, new String[]{"|"});
        return new fd.e<>(listB0.get(0), listB0.get(1));
    }

    public final String f(String[] strArr) {
        String[] strArr2 = new String[1];
        String strSubstring = f12424e;
        if (strSubstring == null) {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            if (stackTrace.length <= 5) {
                throw new IllegalStateException("Synthetic stacktrace didn't have enough elements: are you using proguard?");
            }
            StackTraceElement stackTraceElement = stackTrace[5];
            p4.h.i(stackTraceElement, "stackTrace[CALL_STACK_INDEX]");
            String className = stackTraceElement.getClassName();
            Matcher matcher = f12423d.matcher(className);
            if (matcher.find()) {
                className = matcher.replaceAll("");
            }
            p4.h.i(className, "tag");
            strSubstring = className.substring(yd.s.r0(className, '.', 0, 6) + 1);
            p4.h.i(strSubstring, "this as java.lang.String).substring(startIndex)");
        }
        strArr2[0] = strSubstring;
        List listC = androidx.lifecycle.o.C(strArr2);
        if (strArr != null) {
            listC.addAll(gd.g.i(strArr));
        }
        return gd.n.d0(listC, ":", null, null, null, 62);
    }

    public final String g(Throwable th) {
        StringWriter stringWriter = new StringWriter(256);
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.flush();
        String string = stringWriter.toString();
        p4.h.i(string, "sw.toString()");
        return string;
    }

    public final void h(String str, final String str2, final u uVar, String[] strArr, final Map<String, ? extends Object> map, final Throwable th, boolean z10) {
        p4.h.j(str, "module");
        p4.h.j(str2, "message");
        p4.h.j(uVar, "logLevel");
        try {
            final String strF = f(strArr);
            if (th != null) {
                f12420a.g(th);
            }
            String str3 = f12425f.format(new Date());
            if (z10) {
                f12426g.execute(new Runnable() { // from class: o7.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        u uVar2 = uVar;
                        String str4 = strF;
                        String str5 = str2;
                        Map map2 = map;
                        Throwable th2 = th;
                        p4.h.j(uVar2, "$logLevel");
                        p4.h.j(str4, "$tag");
                        p4.h.j(str5, "$message");
                        try {
                            o oVar = x.f12422c;
                            if (oVar != null) {
                                oVar.log(uVar2, str4, str5, (56 & 8) != 0 ? null : map2, (56 & 16) != 0 ? null : th2, (56 & 32) != 0 ? null : null);
                            } else {
                                p4.h.C("externalReporter");
                                throw null;
                            }
                        } catch (Throwable unused) {
                        }
                    }
                });
            }
            boolean z11 = th != null;
            Vector<a> vector = f12421b;
            p4.h.i(str3, "currentDateandTime");
            vector.add(new a(str3, str, str2, z11, uVar.name(), th != null ? f12420a.g(th) : "No Exception Caught"));
        } catch (Throwable unused) {
        }
    }

    public final void i(String str, long j10) {
        float f10 = j10 / 1000;
        o oVar = f12422c;
        if (oVar != null) {
            oVar.log(u.DEBUG, "breadcrumb", str, (56 & 8) != 0 ? null : null, (56 & 16) != 0 ? null : null, (56 & 32) != 0 ? null : String.valueOf(f10));
        } else {
            p4.h.C("externalReporter");
            throw null;
        }
    }

    public final void j(String str, String str2, Throwable th) {
        fd.e<String, String> eVarE = e(str);
        String str3 = eVarE.f7388h;
        String str4 = eVarE.f7389i;
        x xVar = f12420a;
        String str5 = str2 != null ? str2 : str4;
        u uVar = u.ERROR;
        Object[] array = yd.s.B0(str4, new String[]{"|"}).toArray(new String[0]);
        p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        f12420a.h(str3, str5, (120 & 4) != 0 ? u.DEBUG : uVar, (120 & 8) != 0 ? null : (String[]) array, null, (120 & 32) != 0 ? null : th, (120 & 64) != 0 ? false : true);
    }
}
