package ec;

import androidx.lifecycle.o;
import ed.d;
import java.util.List;
import java.util.regex.Pattern;
import p4.h;

/* JADX INFO: compiled from: TelemetryExt.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f6718a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d f6719b = new d("authentication");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d f6720c = new d("oidc");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final d f6721d = new d("cancel");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final d f6722e = new d("credential");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final d f6723f = new d("error");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final d f6724g = new d("revokerefresh");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final d f6725h = new d("signin");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final d f6726i = new d("signout");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final d f6727j = new d("tokenrefresh");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final d f6728k;

    static {
        Pattern patternCompile = Pattern.compile("^[a-z]+$");
        h.i(patternCompile, "compile(pattern)");
        if (!patternCompile.matcher("userstate").matches()) {
            throw new IllegalArgumentException("Tag values must be all lowercase ascii strings".toString());
        }
        f6728k = new d("stack");
        Pattern patternCompile2 = Pattern.compile("^[a-z]+$");
        h.i(patternCompile2, "compile(pattern)");
        if (!patternCompile2.matcher("reauthenticate").matches()) {
            throw new IllegalArgumentException("Tag values must be all lowercase ascii strings".toString());
        }
    }

    public final List<d> a(List<d> list) {
        List<d> listC = o.C(f6719b, f6720c);
        if (list != null) {
            listC.addAll(list);
        }
        return listC;
    }
}
