package k7;

import java.sql.Date;
import java.sql.Timestamp;

/* JADX INFO: compiled from: SqlTypesSupport.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f9736a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k7.a.C0187a f9737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final k7.b.a f9738c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c.a f9739d;

    /* JADX INFO: compiled from: SqlTypesSupport.java */
    public class a extends h7.d<Date> {
    }

    /* JADX INFO: compiled from: SqlTypesSupport.java */
    public class b extends h7.d<Timestamp> {
    }

    static {
        boolean z10;
        try {
            Class.forName("java.sql.Date");
            z10 = true;
        } catch (ClassNotFoundException unused) {
            z10 = false;
        }
        f9736a = z10;
        if (z10) {
            f9737b = k7.a.f9730b;
            f9738c = k7.b.f9732b;
            f9739d = c.f9734b;
        } else {
            f9737b = null;
            f9738c = null;
            f9739d = null;
        }
    }
}
