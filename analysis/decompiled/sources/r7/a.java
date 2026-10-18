package r7;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.nike.adapt.adk.AdaptMarshaller;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import h9.q0;
import h9.r0;
import h9.s0;
import h9.t0;
import h9.u0;
import java.util.Locale;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF0' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: AdaptDeepLink.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final C0251a f14651j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f14652k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f14653l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f14654m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a f14655n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a f14656o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final a f14657p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final a f14658q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ a[] f14659r;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f14660h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f f14661i;

    /* JADX INFO: Fake field, exist only in values array */
    a EF0;

    /* JADX INFO: renamed from: r7.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptDeepLink.kt */
    public static final class C0251a {
    }

    static {
        final int i10 = 0;
        final int i11 = 3;
        a aVar = new a("LACING", 0, "/lacing", new f(i10, i11) { // from class: r7.l

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f14715a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final qd.l<Activity, fd.o> f14716b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String[] f14717c;

            {
                i = (i11 & 1) != 0 ? 6 : i10;
                k kVar = (i11 & 2) != 0 ? k.f14714h : null;
                androidx.appcompat.widget.o.d(i, AnalyticsAttribute.TYPE_ATTRIBUTE);
                p4.h.j(kVar, "navigate");
                this.f14715a = i;
                this.f14716b = kVar;
                int iA = q.g.a(i);
                this.f14717c = (iA == 0 || iA == 1 || iA == 2 || iA == 3 || iA == 4) ? new String[0] : new String[]{"pairID"};
            }

            @Override // r7.f
            public final String[] a() {
                return this.f14717c;
            }

            @Override // r7.f
            public final void b(Activity activity, Uri uri) {
                if (c(uri)) {
                    int iA = q.g.a(this.f14715a);
                    if (iA == 0) {
                        h hVar = h.f14687a;
                        new u0(h.a(uri)).e(activity);
                        return;
                    }
                    AdaptMarshaller.AdaptPreset adaptPreset = null;
                    String string = null;
                    if (iA == 1) {
                        h hVar2 = h.f14687a;
                        String strC = androidx.appcompat.widget.p.c(uri.getQueryParameter("color"));
                        if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14703q)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14690d))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.AURORA_GREEN;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14704r)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14691e))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.HERO_BLUE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14692f))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.RACER_BLUE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14705s)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14693g))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.VIVID_PURPLE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14706t)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14694h))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.PINK_BLAST;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14707u)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14695i))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.RED_ORBIT;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14696j))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.BRIGHT_CRIMSON;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14708v)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14697k))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.TOTAL_ORANGE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14709w)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14698l))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.OPTIC_YELLOW;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14699m))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.ELECTRIC_GREEN;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14700n))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.GREEN_SPARK;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14702p))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.WHITE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14701o)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14710x))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.LIGHT_OFF;
                        }
                        new q0(adaptPreset).e(activity);
                        return;
                    }
                    if (iA == 2) {
                        h hVar3 = h.f14687a;
                        new s0(h.a(uri)).e(activity);
                        return;
                    }
                    if (iA == 3) {
                        h hVar4 = h.f14687a;
                        new t0(h.a(uri)).e(activity);
                        return;
                    }
                    if (iA == 4) {
                        h hVar5 = h.f14687a;
                        String queryParameter = uri.getQueryParameter("percent");
                        if (queryParameter != null) {
                            Locale locale = Locale.getDefault();
                            p4.h.i(locale, "getDefault()");
                            String lowerCase = queryParameter.toLowerCase(locale);
                            p4.h.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                            string = yd.s.G0(lowerCase).toString();
                        }
                        new r0((string == null || !TextUtils.isDigitsOnly(string)) ? 5 : Integer.parseInt(string), h.a(uri)).e(activity);
                        return;
                    }
                    String[] strArr = this.f14717c;
                    p4.h.j(strArr, "requirements");
                    Intent intent = new Intent(activity, (Class<?>) ShoeControllerActivity.class);
                    for (String str : strArr) {
                        if (uri.getQueryParameter(str) != null) {
                            intent.putExtra(str, uri.getQueryParameter(str));
                        }
                    }
                    activity.startActivity(intent);
                }
            }
        });
        final int i12 = 1;
        final int i13 = 2;
        a aVar2 = new a("UNLACING", 1, "/lacing/unlace", new f(i12, i13) { // from class: r7.l

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f14715a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final qd.l<Activity, fd.o> f14716b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String[] f14717c;

            {
                i = (i13 & 1) != 0 ? 6 : i12;
                k kVar = (i13 & 2) != 0 ? k.f14714h : null;
                androidx.appcompat.widget.o.d(i, AnalyticsAttribute.TYPE_ATTRIBUTE);
                p4.h.j(kVar, "navigate");
                this.f14715a = i;
                this.f14716b = kVar;
                int iA = q.g.a(i);
                this.f14717c = (iA == 0 || iA == 1 || iA == 2 || iA == 3 || iA == 4) ? new String[0] : new String[]{"pairID"};
            }

            @Override // r7.f
            public final String[] a() {
                return this.f14717c;
            }

            @Override // r7.f
            public final void b(Activity activity, Uri uri) {
                if (c(uri)) {
                    int iA = q.g.a(this.f14715a);
                    if (iA == 0) {
                        h hVar = h.f14687a;
                        new u0(h.a(uri)).e(activity);
                        return;
                    }
                    AdaptMarshaller.AdaptPreset adaptPreset = null;
                    String string = null;
                    if (iA == 1) {
                        h hVar2 = h.f14687a;
                        String strC = androidx.appcompat.widget.p.c(uri.getQueryParameter("color"));
                        if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14703q)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14690d))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.AURORA_GREEN;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14704r)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14691e))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.HERO_BLUE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14692f))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.RACER_BLUE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14705s)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14693g))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.VIVID_PURPLE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14706t)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14694h))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.PINK_BLAST;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14707u)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14695i))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.RED_ORBIT;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14696j))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.BRIGHT_CRIMSON;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14708v)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14697k))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.TOTAL_ORANGE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14709w)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14698l))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.OPTIC_YELLOW;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14699m))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.ELECTRIC_GREEN;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14700n))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.GREEN_SPARK;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14702p))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.WHITE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14701o)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14710x))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.LIGHT_OFF;
                        }
                        new q0(adaptPreset).e(activity);
                        return;
                    }
                    if (iA == 2) {
                        h hVar3 = h.f14687a;
                        new s0(h.a(uri)).e(activity);
                        return;
                    }
                    if (iA == 3) {
                        h hVar4 = h.f14687a;
                        new t0(h.a(uri)).e(activity);
                        return;
                    }
                    if (iA == 4) {
                        h hVar5 = h.f14687a;
                        String queryParameter = uri.getQueryParameter("percent");
                        if (queryParameter != null) {
                            Locale locale = Locale.getDefault();
                            p4.h.i(locale, "getDefault()");
                            String lowerCase = queryParameter.toLowerCase(locale);
                            p4.h.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                            string = yd.s.G0(lowerCase).toString();
                        }
                        new r0((string == null || !TextUtils.isDigitsOnly(string)) ? 5 : Integer.parseInt(string), h.a(uri)).e(activity);
                        return;
                    }
                    String[] strArr = this.f14717c;
                    p4.h.j(strArr, "requirements");
                    Intent intent = new Intent(activity, (Class<?>) ShoeControllerActivity.class);
                    for (String str : strArr) {
                        if (uri.getQueryParameter(str) != null) {
                            intent.putExtra(str, uri.getQueryParameter(str));
                        }
                    }
                    activity.startActivity(intent);
                }
            }
        });
        f14652k = aVar2;
        a aVar3 = new a("CHANGE_LIGHTS", 2, "/lacing/change-lights", new f(i13, i13) { // from class: r7.l

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f14715a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final qd.l<Activity, fd.o> f14716b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String[] f14717c;

            {
                i = (i13 & 1) != 0 ? 6 : i13;
                k kVar = (i13 & 2) != 0 ? k.f14714h : null;
                androidx.appcompat.widget.o.d(i, AnalyticsAttribute.TYPE_ATTRIBUTE);
                p4.h.j(kVar, "navigate");
                this.f14715a = i;
                this.f14716b = kVar;
                int iA = q.g.a(i);
                this.f14717c = (iA == 0 || iA == 1 || iA == 2 || iA == 3 || iA == 4) ? new String[0] : new String[]{"pairID"};
            }

            @Override // r7.f
            public final String[] a() {
                return this.f14717c;
            }

            @Override // r7.f
            public final void b(Activity activity, Uri uri) {
                if (c(uri)) {
                    int iA = q.g.a(this.f14715a);
                    if (iA == 0) {
                        h hVar = h.f14687a;
                        new u0(h.a(uri)).e(activity);
                        return;
                    }
                    AdaptMarshaller.AdaptPreset adaptPreset = null;
                    String string = null;
                    if (iA == 1) {
                        h hVar2 = h.f14687a;
                        String strC = androidx.appcompat.widget.p.c(uri.getQueryParameter("color"));
                        if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14703q)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14690d))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.AURORA_GREEN;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14704r)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14691e))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.HERO_BLUE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14692f))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.RACER_BLUE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14705s)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14693g))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.VIVID_PURPLE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14706t)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14694h))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.PINK_BLAST;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14707u)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14695i))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.RED_ORBIT;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14696j))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.BRIGHT_CRIMSON;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14708v)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14697k))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.TOTAL_ORANGE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14709w)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14698l))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.OPTIC_YELLOW;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14699m))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.ELECTRIC_GREEN;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14700n))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.GREEN_SPARK;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14702p))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.WHITE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14701o)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14710x))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.LIGHT_OFF;
                        }
                        new q0(adaptPreset).e(activity);
                        return;
                    }
                    if (iA == 2) {
                        h hVar3 = h.f14687a;
                        new s0(h.a(uri)).e(activity);
                        return;
                    }
                    if (iA == 3) {
                        h hVar4 = h.f14687a;
                        new t0(h.a(uri)).e(activity);
                        return;
                    }
                    if (iA == 4) {
                        h hVar5 = h.f14687a;
                        String queryParameter = uri.getQueryParameter("percent");
                        if (queryParameter != null) {
                            Locale locale = Locale.getDefault();
                            p4.h.i(locale, "getDefault()");
                            String lowerCase = queryParameter.toLowerCase(locale);
                            p4.h.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                            string = yd.s.G0(lowerCase).toString();
                        }
                        new r0((string == null || !TextUtils.isDigitsOnly(string)) ? 5 : Integer.parseInt(string), h.a(uri)).e(activity);
                        return;
                    }
                    String[] strArr = this.f14717c;
                    p4.h.j(strArr, "requirements");
                    Intent intent = new Intent(activity, (Class<?>) ShoeControllerActivity.class);
                    for (String str : strArr) {
                        if (uri.getQueryParameter(str) != null) {
                            intent.putExtra(str, uri.getQueryParameter(str));
                        }
                    }
                    activity.startActivity(intent);
                }
            }
        });
        f14653l = aVar3;
        a aVar4 = new a("LOOSEN", 3, "/lacing/loosen", new f(i11, i13) { // from class: r7.l

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f14715a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final qd.l<Activity, fd.o> f14716b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String[] f14717c;

            {
                i = (i13 & 1) != 0 ? 6 : i11;
                k kVar = (i13 & 2) != 0 ? k.f14714h : null;
                androidx.appcompat.widget.o.d(i, AnalyticsAttribute.TYPE_ATTRIBUTE);
                p4.h.j(kVar, "navigate");
                this.f14715a = i;
                this.f14716b = kVar;
                int iA = q.g.a(i);
                this.f14717c = (iA == 0 || iA == 1 || iA == 2 || iA == 3 || iA == 4) ? new String[0] : new String[]{"pairID"};
            }

            @Override // r7.f
            public final String[] a() {
                return this.f14717c;
            }

            @Override // r7.f
            public final void b(Activity activity, Uri uri) {
                if (c(uri)) {
                    int iA = q.g.a(this.f14715a);
                    if (iA == 0) {
                        h hVar = h.f14687a;
                        new u0(h.a(uri)).e(activity);
                        return;
                    }
                    AdaptMarshaller.AdaptPreset adaptPreset = null;
                    String string = null;
                    if (iA == 1) {
                        h hVar2 = h.f14687a;
                        String strC = androidx.appcompat.widget.p.c(uri.getQueryParameter("color"));
                        if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14703q)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14690d))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.AURORA_GREEN;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14704r)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14691e))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.HERO_BLUE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14692f))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.RACER_BLUE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14705s)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14693g))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.VIVID_PURPLE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14706t)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14694h))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.PINK_BLAST;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14707u)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14695i))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.RED_ORBIT;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14696j))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.BRIGHT_CRIMSON;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14708v)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14697k))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.TOTAL_ORANGE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14709w)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14698l))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.OPTIC_YELLOW;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14699m))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.ELECTRIC_GREEN;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14700n))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.GREEN_SPARK;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14702p))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.WHITE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14701o)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14710x))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.LIGHT_OFF;
                        }
                        new q0(adaptPreset).e(activity);
                        return;
                    }
                    if (iA == 2) {
                        h hVar3 = h.f14687a;
                        new s0(h.a(uri)).e(activity);
                        return;
                    }
                    if (iA == 3) {
                        h hVar4 = h.f14687a;
                        new t0(h.a(uri)).e(activity);
                        return;
                    }
                    if (iA == 4) {
                        h hVar5 = h.f14687a;
                        String queryParameter = uri.getQueryParameter("percent");
                        if (queryParameter != null) {
                            Locale locale = Locale.getDefault();
                            p4.h.i(locale, "getDefault()");
                            String lowerCase = queryParameter.toLowerCase(locale);
                            p4.h.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                            string = yd.s.G0(lowerCase).toString();
                        }
                        new r0((string == null || !TextUtils.isDigitsOnly(string)) ? 5 : Integer.parseInt(string), h.a(uri)).e(activity);
                        return;
                    }
                    String[] strArr = this.f14717c;
                    p4.h.j(strArr, "requirements");
                    Intent intent = new Intent(activity, (Class<?>) ShoeControllerActivity.class);
                    for (String str : strArr) {
                        if (uri.getQueryParameter(str) != null) {
                            intent.putExtra(str, uri.getQueryParameter(str));
                        }
                    }
                    activity.startActivity(intent);
                }
            }
        });
        f14654m = aVar4;
        final int i14 = 4;
        a aVar5 = new a("TIGHTEN", 4, "/lacing/tighten", new f(i14, i13) { // from class: r7.l

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f14715a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final qd.l<Activity, fd.o> f14716b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String[] f14717c;

            {
                i = (i13 & 1) != 0 ? 6 : i14;
                k kVar = (i13 & 2) != 0 ? k.f14714h : null;
                androidx.appcompat.widget.o.d(i, AnalyticsAttribute.TYPE_ATTRIBUTE);
                p4.h.j(kVar, "navigate");
                this.f14715a = i;
                this.f14716b = kVar;
                int iA = q.g.a(i);
                this.f14717c = (iA == 0 || iA == 1 || iA == 2 || iA == 3 || iA == 4) ? new String[0] : new String[]{"pairID"};
            }

            @Override // r7.f
            public final String[] a() {
                return this.f14717c;
            }

            @Override // r7.f
            public final void b(Activity activity, Uri uri) {
                if (c(uri)) {
                    int iA = q.g.a(this.f14715a);
                    if (iA == 0) {
                        h hVar = h.f14687a;
                        new u0(h.a(uri)).e(activity);
                        return;
                    }
                    AdaptMarshaller.AdaptPreset adaptPreset = null;
                    String string = null;
                    if (iA == 1) {
                        h hVar2 = h.f14687a;
                        String strC = androidx.appcompat.widget.p.c(uri.getQueryParameter("color"));
                        if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14703q)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14690d))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.AURORA_GREEN;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14704r)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14691e))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.HERO_BLUE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14692f))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.RACER_BLUE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14705s)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14693g))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.VIVID_PURPLE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14706t)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14694h))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.PINK_BLAST;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14707u)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14695i))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.RED_ORBIT;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14696j))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.BRIGHT_CRIMSON;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14708v)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14697k))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.TOTAL_ORANGE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14709w)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14698l))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.OPTIC_YELLOW;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14699m))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.ELECTRIC_GREEN;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14700n))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.GREEN_SPARK;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14702p))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.WHITE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14701o)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14710x))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.LIGHT_OFF;
                        }
                        new q0(adaptPreset).e(activity);
                        return;
                    }
                    if (iA == 2) {
                        h hVar3 = h.f14687a;
                        new s0(h.a(uri)).e(activity);
                        return;
                    }
                    if (iA == 3) {
                        h hVar4 = h.f14687a;
                        new t0(h.a(uri)).e(activity);
                        return;
                    }
                    if (iA == 4) {
                        h hVar5 = h.f14687a;
                        String queryParameter = uri.getQueryParameter("percent");
                        if (queryParameter != null) {
                            Locale locale = Locale.getDefault();
                            p4.h.i(locale, "getDefault()");
                            String lowerCase = queryParameter.toLowerCase(locale);
                            p4.h.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                            string = yd.s.G0(lowerCase).toString();
                        }
                        new r0((string == null || !TextUtils.isDigitsOnly(string)) ? 5 : Integer.parseInt(string), h.a(uri)).e(activity);
                        return;
                    }
                    String[] strArr = this.f14717c;
                    p4.h.j(strArr, "requirements");
                    Intent intent = new Intent(activity, (Class<?>) ShoeControllerActivity.class);
                    for (String str : strArr) {
                        if (uri.getQueryParameter(str) != null) {
                            intent.putExtra(str, uri.getQueryParameter(str));
                        }
                    }
                    activity.startActivity(intent);
                }
            }
        });
        f14655n = aVar5;
        final int i15 = 5;
        a aVar6 = new a("LACETO", 5, "/lacing/laceTo", new f(i15, i13) { // from class: r7.l

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f14715a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final qd.l<Activity, fd.o> f14716b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String[] f14717c;

            {
                i = (i13 & 1) != 0 ? 6 : i15;
                k kVar = (i13 & 2) != 0 ? k.f14714h : null;
                androidx.appcompat.widget.o.d(i, AnalyticsAttribute.TYPE_ATTRIBUTE);
                p4.h.j(kVar, "navigate");
                this.f14715a = i;
                this.f14716b = kVar;
                int iA = q.g.a(i);
                this.f14717c = (iA == 0 || iA == 1 || iA == 2 || iA == 3 || iA == 4) ? new String[0] : new String[]{"pairID"};
            }

            @Override // r7.f
            public final String[] a() {
                return this.f14717c;
            }

            @Override // r7.f
            public final void b(Activity activity, Uri uri) {
                if (c(uri)) {
                    int iA = q.g.a(this.f14715a);
                    if (iA == 0) {
                        h hVar = h.f14687a;
                        new u0(h.a(uri)).e(activity);
                        return;
                    }
                    AdaptMarshaller.AdaptPreset adaptPreset = null;
                    String string = null;
                    if (iA == 1) {
                        h hVar2 = h.f14687a;
                        String strC = androidx.appcompat.widget.p.c(uri.getQueryParameter("color"));
                        if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14703q)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14690d))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.AURORA_GREEN;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14704r)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14691e))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.HERO_BLUE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14692f))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.RACER_BLUE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14705s)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14693g))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.VIVID_PURPLE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14706t)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14694h))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.PINK_BLAST;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14707u)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14695i))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.RED_ORBIT;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14696j))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.BRIGHT_CRIMSON;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14708v)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14697k))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.TOTAL_ORANGE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14709w)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14698l))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.OPTIC_YELLOW;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14699m))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.ELECTRIC_GREEN;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14700n))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.GREEN_SPARK;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14702p))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.WHITE;
                        } else if (p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14701o)) ? true : p4.h.c(strC, androidx.appcompat.widget.p.c(h.f14710x))) {
                            adaptPreset = AdaptMarshaller.AdaptPreset.LIGHT_OFF;
                        }
                        new q0(adaptPreset).e(activity);
                        return;
                    }
                    if (iA == 2) {
                        h hVar3 = h.f14687a;
                        new s0(h.a(uri)).e(activity);
                        return;
                    }
                    if (iA == 3) {
                        h hVar4 = h.f14687a;
                        new t0(h.a(uri)).e(activity);
                        return;
                    }
                    if (iA == 4) {
                        h hVar5 = h.f14687a;
                        String queryParameter = uri.getQueryParameter("percent");
                        if (queryParameter != null) {
                            Locale locale = Locale.getDefault();
                            p4.h.i(locale, "getDefault()");
                            String lowerCase = queryParameter.toLowerCase(locale);
                            p4.h.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                            string = yd.s.G0(lowerCase).toString();
                        }
                        new r0((string == null || !TextUtils.isDigitsOnly(string)) ? 5 : Integer.parseInt(string), h.a(uri)).e(activity);
                        return;
                    }
                    String[] strArr = this.f14717c;
                    p4.h.j(strArr, "requirements");
                    Intent intent = new Intent(activity, (Class<?>) ShoeControllerActivity.class);
                    for (String str : strArr) {
                        if (uri.getQueryParameter(str) != null) {
                            intent.putExtra(str, uri.getQueryParameter(str));
                        }
                    }
                    activity.startActivity(intent);
                }
            }
        });
        f14656o = aVar6;
        a aVar7 = new a("PAIRING", 6, "/pairing", new f() { // from class: r7.t

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final qd.l<Activity, fd.o> f14728a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String[] f14729b;

            {
                s sVar = s.f14727h;
                p4.h.j(sVar, "navigate");
                this.f14728a = sVar;
                this.f14729b = new String[0];
            }

            @Override // r7.f
            public final String[] a() {
                return this.f14729b;
            }

            @Override // r7.f
            public final void b(Activity activity, Uri uri) {
                if (c(uri)) {
                    this.f14728a.invoke(activity);
                }
            }
        });
        f14657p = aVar7;
        a aVar8 = new a("SETTINGS", 7, "/settings", new f() { // from class: r7.v

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final qd.l<Activity, fd.o> f14731a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String[] f14732b;

            {
                u uVar = u.f14730h;
                p4.h.j(uVar, "navigate");
                this.f14731a = uVar;
                this.f14732b = new String[]{"pairID"};
            }

            @Override // r7.f
            public final String[] a() {
                return this.f14732b;
            }

            @Override // r7.f
            public final void b(Activity activity, Uri uri) {
                this.f14731a.invoke(activity);
            }
        });
        a aVar9 = new a("MYSHOES", 8, "/my-shoes", new f() { // from class: r7.r

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final qd.l<Activity, fd.o> f14725a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String[] f14726b;

            {
                q qVar = q.f14724h;
                p4.h.j(qVar, "navigate");
                this.f14725a = qVar;
                this.f14726b = new String[]{"pairID"};
            }

            @Override // r7.f
            public final String[] a() {
                return this.f14726b;
            }

            @Override // r7.f
            public final void b(Activity activity, Uri uri) {
                if (c(uri)) {
                    this.f14725a.invoke(activity);
                }
            }
        });
        a aVar10 = new a("SOFTWARE_UPDATE", 9, "/software-update", new f() { // from class: r7.j

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final qd.l<Activity, fd.o> f14712a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String[] f14713b;

            {
                i iVar = i.f14711h;
                p4.h.j(iVar, "navigate");
                this.f14712a = iVar;
                this.f14713b = new String[]{"pairID"};
            }

            @Override // r7.f
            public final String[] a() {
                return this.f14713b;
            }

            @Override // r7.f
            public final void b(Activity activity, Uri uri) {
                if (c(uri)) {
                    this.f14712a.invoke(activity);
                }
            }
        });
        a aVar11 = new a("SUPPORT", 10, "/support", new f() { // from class: r7.x

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final qd.l<Activity, fd.o> f14734a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String[] f14735b;

            {
                w wVar = w.f14733h;
                p4.h.j(wVar, "navigate");
                this.f14734a = wVar;
                this.f14735b = new String[0];
            }

            @Override // r7.f
            public final String[] a() {
                return this.f14735b;
            }

            @Override // r7.f
            public final void b(Activity activity, Uri uri) {
                this.f14734a.invoke(activity);
            }
        });
        a aVar12 = new a("MODES", 11, "/modes", new f() { // from class: r7.p

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final qd.l<Activity, fd.o> f14722a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String[] f14723b;

            {
                o oVar = o.f14721h;
                p4.h.j(oVar, "navigate");
                this.f14722a = oVar;
                this.f14723b = new String[]{"pairID"};
            }

            @Override // r7.f
            public final String[] a() {
                return this.f14723b;
            }

            @Override // r7.f
            public final void b(Activity activity, Uri uri) {
                if (c(uri)) {
                    this.f14722a.invoke(activity);
                }
            }
        });
        a aVar13 = new a("LIGHTING", 12, "/lighting", new f() { // from class: r7.n

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final qd.l<Activity, fd.o> f14719a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String[] f14720b;

            {
                m mVar = m.f14718h;
                p4.h.j(mVar, "navigate");
                this.f14719a = mVar;
                this.f14720b = new String[]{"pairID"};
            }

            @Override // r7.f
            public final String[] a() {
                return this.f14720b;
            }

            @Override // r7.f
            public final void b(Activity activity, Uri uri) {
                if (c(uri)) {
                    this.f14719a.invoke(activity);
                }
            }
        });
        a aVar14 = new a("BATTERY", 13, "/battery", new f() { // from class: r7.c

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final qd.l<Activity, fd.o> f14663a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String[] f14664b;

            {
                b bVar = b.f14662h;
                p4.h.j(bVar, "navigate");
                this.f14663a = bVar;
                this.f14664b = new String[0];
            }

            @Override // r7.f
            public final String[] a() {
                return this.f14664b;
            }

            @Override // r7.f
            public final void b(Activity activity, Uri uri) {
                if (c(uri)) {
                    this.f14663a.invoke(activity);
                }
            }
        });
        a aVar15 = new a("CALIBRATE_FIT", 14, "/calibrate-fit", new f() { // from class: r7.e

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final qd.l<Activity, fd.o> f14666a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String[] f14667b;

            {
                d dVar = d.f14665h;
                p4.h.j(dVar, "navigate");
                this.f14666a = dVar;
                this.f14667b = new String[]{"pairID"};
            }

            @Override // r7.f
            public final String[] a() {
                return this.f14667b;
            }

            @Override // r7.f
            public final void b(Activity activity, Uri uri) {
                if (c(uri)) {
                    this.f14666a.invoke(activity);
                }
            }
        });
        a aVar16 = new a("UNKNOWN", 15, "", null);
        f14658q = aVar16;
        f14659r = new a[]{aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8, aVar9, aVar10, aVar11, aVar12, aVar13, aVar14, aVar15, aVar16};
        f14651j = new C0251a();
    }

    public a(String str, int i10, String str2, f fVar) {
        super(str, i10);
        this.f14660h = str2;
        this.f14661i = fVar;
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f14659r.clone();
    }
}
