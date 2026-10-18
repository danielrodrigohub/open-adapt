package m7;

import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.logging.Logger;
import m7.s.a;

/* JADX INFO: compiled from: FieldSet.java */
/* JADX INFO: loaded from: classes.dex */
public final class s<T extends a<T>> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final s f10749d = new s(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f1<T, Object> f10750a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f10751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f10752c;

    /* JADX INFO: compiled from: FieldSet.java */
    public interface a<T extends a<T>> extends Comparable<T> {
        void a();

        void c();

        void d();

        p1 e();

        void f();

        p0.a r(p0.a aVar, p0 p0Var);
    }

    public s() {
        int i10 = f1.f10641n;
        this.f10750a = new e1(16);
    }

    public static Object b(Object obj) {
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static int c(o1 o1Var, int i10, Object obj) {
        int iW = k.w(i10);
        if (o1Var == o1.f10726s) {
            iW *= 2;
        }
        return d(o1Var, obj) + iW;
    }

    public static int d(o1 o1Var, Object obj) {
        switch (o1Var.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                Logger logger = k.f10688b;
                return 8;
            case 1:
                ((Float) obj).floatValue();
                Logger logger2 = k.f10688b;
                return 4;
            case 2:
                return k.A(((Long) obj).longValue());
            case 3:
                return k.A(((Long) obj).longValue());
            case 4:
                return k.l(((Integer) obj).intValue());
            case 5:
                ((Long) obj).longValue();
                Logger logger3 = k.f10688b;
                return 8;
            case 6:
                ((Integer) obj).intValue();
                Logger logger4 = k.f10688b;
                return 4;
            case 7:
                ((Boolean) obj).booleanValue();
                Logger logger5 = k.f10688b;
                return 1;
            case 8:
                return obj instanceof i ? k.d((i) obj) : k.v((String) obj);
            case 9:
                Logger logger6 = k.f10688b;
                return ((p0) obj).a();
            case 10:
                if (obj instanceof b0) {
                    return k.n((b0) obj);
                }
                Logger logger7 = k.f10688b;
                int iA = ((p0) obj).a();
                return k.y(iA) + iA;
            case 11:
                if (obj instanceof i) {
                    return k.d((i) obj);
                }
                Logger logger8 = k.f10688b;
                int length = ((byte[]) obj).length;
                return k.y(length) + length;
            case 12:
                return k.y(((Integer) obj).intValue());
            case 13:
                return obj instanceof y.a ? k.l(((y.a) obj).a()) : k.l(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                Logger logger9 = k.f10688b;
                return 4;
            case 15:
                ((Long) obj).longValue();
                Logger logger10 = k.f10688b;
                return 8;
            case 16:
                return k.r(((Integer) obj).intValue());
            case 17:
                return k.t(((Long) obj).longValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int e(a<?> aVar, Object obj) {
        aVar.d();
        aVar.a();
        aVar.c();
        return c(null, 0, obj);
    }

    public static <T extends a<T>> boolean j(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.e() != p1.MESSAGE) {
            return true;
        }
        key.c();
        return k(entry.getValue());
    }

    public static boolean k(Object obj) {
        if (obj instanceof q0) {
            return ((q0) obj).f();
        }
        if (obj instanceof b0) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final s<T> clone() {
        s<T> sVar = new s<>();
        for (int i10 = 0; i10 < this.f10750a.d(); i10++) {
            Map.Entry<K, Object> entryC = this.f10750a.c(i10);
            sVar.o((a) entryC.getKey(), entryC.getValue());
        }
        Iterator it = this.f10750a.e().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            sVar.o((a) entry.getKey(), entry.getValue());
        }
        sVar.f10752c = this.f10752c;
        return sVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof s) {
            return this.f10750a.equals(((s) obj).f10750a);
        }
        return false;
    }

    public final Object f(T t10) {
        Object obj = this.f10750a.get(t10);
        return obj instanceof b0 ? ((b0) obj).a(null) : obj;
    }

    public final int g(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.e() != p1.MESSAGE) {
            return e(key, value);
        }
        key.c();
        key.f();
        if (value instanceof b0) {
            entry.getKey().a();
            return k.n((b0) value) + k.w(3) + k.x(2, 0) + (k.w(1) * 2);
        }
        entry.getKey().a();
        int iX = k.x(2, 0) + (k.w(1) * 2);
        int iW = k.w(3);
        int iA = ((p0) value).a();
        return k.y(iA) + iA + iW + iX;
    }

    public final boolean h() {
        return this.f10750a.isEmpty();
    }

    public final int hashCode() {
        return this.f10750a.hashCode();
    }

    public final boolean i() {
        for (int i10 = 0; i10 < this.f10750a.d(); i10++) {
            if (!j(this.f10750a.c(i10))) {
                return false;
            }
        }
        Iterator it = this.f10750a.e().iterator();
        while (it.hasNext()) {
            if (!j((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final Iterator<Map.Entry<T, Object>> l() {
        return this.f10752c ? new b0.c(this.f10750a.entrySet().iterator()) : this.f10750a.entrySet().iterator();
    }

    public final void m() {
        if (this.f10751b) {
            return;
        }
        this.f10750a.g();
        this.f10751b = true;
    }

    public final void n(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof b0) {
            value = ((b0) value).a(null);
        }
        key.c();
        if (key.e() != p1.MESSAGE) {
            this.f10750a.put(key, b(value));
            return;
        }
        Object objF = f(key);
        if (objF == null) {
            this.f10750a.put(key, b(value));
        } else {
            this.f10750a.put(key, ((w.a) key.r(((p0) objF).c(), (p0) value)).h());
        }
    }

    public final void o(T t10, Object obj) {
        t10.c();
        p(t10, obj);
        throw null;
    }

    public final void p(T t10, Object obj) {
        t10.d();
        Charset charset = y.f10801a;
        Objects.requireNonNull(obj);
        throw null;
    }

    public s(boolean z10) {
        int i10 = f1.f10641n;
        this.f10750a = new e1(0);
        m();
        m();
    }
}
