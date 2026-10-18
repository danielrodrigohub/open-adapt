package r7;

import android.net.Uri;
import com.nike.adapt.R;
import com.nike.adapt.adk.Shoe;

/* JADX INFO: compiled from: DeepLinkUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f14687a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f14688b = androidx.lifecycle.o.r(R.string.shoe_side_left);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f14689c = androidx.lifecycle.o.r(R.string.shoe_side_right);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f14690d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f14691e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f14692f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f14693g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f14694h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f14695i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f14696j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f14697k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f14698l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f14699m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f14700n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f14701o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f14702p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f14703q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f14704r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f14705s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f14706t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f14707u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f14708v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final String f14709w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f14710x;

    static {
        androidx.lifecycle.o.r(R.string.shoe_side_both);
        f14690d = androidx.lifecycle.o.r(R.string.color_aurora_green);
        f14691e = androidx.lifecycle.o.r(R.string.color_hero_blue);
        f14692f = androidx.lifecycle.o.r(R.string.color_racer_blue);
        f14693g = androidx.lifecycle.o.r(R.string.color_vivid_purple);
        f14694h = androidx.lifecycle.o.r(R.string.color_pink_blast);
        f14695i = androidx.lifecycle.o.r(R.string.color_red_orbit);
        f14696j = androidx.lifecycle.o.r(R.string.color_bright_crimson);
        f14697k = androidx.lifecycle.o.r(R.string.color_total_orange);
        f14698l = androidx.lifecycle.o.r(R.string.color_optic_yellow);
        f14699m = androidx.lifecycle.o.r(R.string.color_electric_green);
        f14700n = androidx.lifecycle.o.r(R.string.color_green_spark);
        f14701o = androidx.lifecycle.o.r(R.string.color_lights_off);
        f14702p = androidx.lifecycle.o.r(R.string.color_white);
        f14703q = androidx.lifecycle.o.r(R.string.color_green);
        f14704r = androidx.lifecycle.o.r(R.string.color_blue);
        f14705s = androidx.lifecycle.o.r(R.string.color_purple);
        f14706t = androidx.lifecycle.o.r(R.string.color_pink);
        f14707u = androidx.lifecycle.o.r(R.string.color_red);
        f14708v = androidx.lifecycle.o.r(R.string.color_orange);
        f14709w = androidx.lifecycle.o.r(R.string.color_yellow);
        f14710x = androidx.lifecycle.o.r(R.string.color_off);
    }

    public static final Shoe a(Uri uri) {
        String strC = androidx.appcompat.widget.p.c(uri.getQueryParameter("side"));
        if (p4.h.c(strC, androidx.appcompat.widget.p.c(f14688b))) {
            return Shoe.LEFT;
        }
        return p4.h.c(strC, androidx.appcompat.widget.p.c(f14689c)) ? Shoe.RIGHT : Shoe.BOTH;
    }
}
