package ge;

import fe.g;
import m6.e;
import org.greenrobot.eventbus.android.AndroidComponentsImpl;

/* JADX INFO: compiled from: AndroidComponents.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f8078c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g f8079a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e f8080b;

    static {
        a aVar = null;
        if (d3.e.l()) {
            try {
                aVar = (a) AndroidComponentsImpl.class.getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Throwable unused) {
            }
        }
        f8078c = aVar;
    }

    public a(g gVar, e eVar) {
        this.f8079a = gVar;
        this.f8080b = eVar;
    }
}
