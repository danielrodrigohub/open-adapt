package yd;

import java.nio.charset.Charset;

/* JADX INFO: compiled from: Charsets.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f19170a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Charset f19171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Charset f19172c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Charset f19173d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Charset f19174e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Charset f19175f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Charset f19176g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Charset f19177h;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        p4.h.i(charsetForName, "forName(\"UTF-8\")");
        f19171b = charsetForName;
        p4.h.i(Charset.forName("UTF-16"), "forName(\"UTF-16\")");
        Charset charsetForName2 = Charset.forName("UTF-16BE");
        p4.h.i(charsetForName2, "forName(\"UTF-16BE\")");
        f19172c = charsetForName2;
        Charset charsetForName3 = Charset.forName("UTF-16LE");
        p4.h.i(charsetForName3, "forName(\"UTF-16LE\")");
        f19173d = charsetForName3;
        Charset charsetForName4 = Charset.forName("US-ASCII");
        p4.h.i(charsetForName4, "forName(\"US-ASCII\")");
        f19174e = charsetForName4;
        Charset charsetForName5 = Charset.forName("ISO-8859-1");
        p4.h.i(charsetForName5, "forName(\"ISO-8859-1\")");
        f19175f = charsetForName5;
    }
}
