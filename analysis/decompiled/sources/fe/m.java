package fe;

import java.lang.reflect.Method;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: compiled from: SubscriberMethod.java */
/* JADX INFO: loaded from: classes2.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Method f7464a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ThreadMode f7465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Class<?> f7466c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f7467d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f7468e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f7469f;

    public m(Method method, Class<?> cls, ThreadMode threadMode, int i10, boolean z10) {
        this.f7464a = method;
        this.f7465b = threadMode;
        this.f7466c = cls;
        this.f7467d = i10;
        this.f7468e = z10;
    }

    public final synchronized void a() {
        if (this.f7469f == null) {
            StringBuilder sb2 = new StringBuilder(64);
            sb2.append(this.f7464a.getDeclaringClass().getName());
            sb2.append('#');
            sb2.append(this.f7464a.getName());
            sb2.append('(');
            sb2.append(this.f7466c.getName());
            this.f7469f = sb2.toString();
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        a();
        m mVar = (m) obj;
        mVar.a();
        return this.f7469f.equals(mVar.f7469f);
    }

    public final int hashCode() {
        return this.f7464a.hashCode();
    }
}
