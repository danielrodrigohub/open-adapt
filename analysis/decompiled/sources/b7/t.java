package b7;

import b7.t.a;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.logging.Logger;

/* JADX INFO: compiled from: FieldSet.java */
/* JADX INFO: loaded from: classes.dex */
public final class t<T extends a<T>> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final t f3513d = new t(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h1<T, Object> f3514a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f3515b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3516c;

    /* JADX INFO: compiled from: FieldSet.java */
    public interface a<T extends a<T>> extends Comparable<T> {
        void a();

        void c();

        void d();

        s1 e();

        void f();

        q0.a v(q0.a aVar, q0 q0Var);
    }

    public t() {
        int i10 = h1.f3402n;
        this.f3514a = new g1(16);
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

    public static int c(r1 r1Var, int i10, Object obj) {
        int iW = l.w(i10);
        if (r1Var == r1.f3490s) {
            iW *= 2;
        }
        return d(r1Var, obj) + iW;
    }

    public static int d(r1 r1Var, Object obj) {
        switch (r1Var.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                Logger logger = l.f3445b;
                return 8;
            case 1:
                ((Float) obj).floatValue();
                Logger logger2 = l.f3445b;
                return 4;
            case 2:
                return l.A(((Long) obj).longValue());
            case 3:
                return l.A(((Long) obj).longValue());
            case 4:
                return l.l(((Integer) obj).intValue());
            case 5:
                ((Long) obj).longValue();
                Logger logger3 = l.f3445b;
                return 8;
            case 6:
                ((Integer) obj).intValue();
                Logger logger4 = l.f3445b;
                return 4;
            case 7:
                ((Boolean) obj).booleanValue();
                Logger logger5 = l.f3445b;
                return 1;
            case 8:
                return obj instanceof i ? l.d((i) obj) : l.v((String) obj);
            case 9:
                Logger logger6 = l.f3445b;
                return ((q0) obj).a();
            case 10:
                if (obj instanceof c0) {
                    return l.n((c0) obj);
                }
                Logger logger7 = l.f3445b;
                int iA = ((q0) obj).a();
                return l.y(iA) + iA;
            case 11:
                if (obj instanceof i) {
                    return l.d((i) obj);
                }
                Logger logger8 = l.f3445b;
                int length = ((byte[]) obj).length;
                return l.y(length) + length;
            case 12:
                return l.y(((Integer) obj).intValue());
            case 13:
                return obj instanceof z.a ? l.l(((z.a) obj).a()) : l.l(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                Logger logger9 = l.f3445b;
                return 4;
            case 15:
                ((Long) obj).longValue();
                Logger logger10 = l.f3445b;
                return 8;
            case 16:
                return l.r(((Integer) obj).intValue());
            case 17:
                return l.t(((Long) obj).longValue());
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
        if (key.e() == s1.MESSAGE) {
            key.c();
            Object value = entry.getValue();
            if (!(value instanceof q0)) {
                if (value instanceof c0) {
                    return true;
                }
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            if (!((q0) value).f()) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final t<T> clone() {
        t<T> tVar = new t<>();
        for (int i10 = 0; i10 < this.f3514a.d(); i10++) {
            Map.Entry<K, Object> entryC = this.f3514a.c(i10);
            tVar.n((a) entryC.getKey(), entryC.getValue());
        }
        Iterator it = this.f3514a.e().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            tVar.n((a) entry.getKey(), entry.getValue());
        }
        tVar.f3516c = this.f3516c;
        return tVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof t) {
            return this.f3514a.equals(((t) obj).f3514a);
        }
        return false;
    }

    public final Object f(T t10) {
        Object obj = this.f3514a.get(t10);
        return obj instanceof c0 ? ((c0) obj).a(null) : obj;
    }

    public final int g(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.e() != s1.MESSAGE) {
            return e(key, value);
        }
        key.c();
        key.f();
        if (value instanceof c0) {
            entry.getKey().a();
            return l.n((c0) value) + l.w(3) + l.x(2, 0) + (l.w(1) * 2);
        }
        entry.getKey().a();
        int iX = l.x(2, 0) + (l.w(1) * 2);
        int iW = l.w(3);
        int iA = ((q0) value).a();
        return l.y(iA) + iA + iW + iX;
    }

    public final boolean h() {
        return this.f3514a.isEmpty();
    }

    public final int hashCode() {
        return this.f3514a.hashCode();
    }

    public final boolean i() {
        for (int i10 = 0; i10 < this.f3514a.d(); i10++) {
            if (!j(this.f3514a.c(i10))) {
                return false;
            }
        }
        Iterator it = this.f3514a.e().iterator();
        while (it.hasNext()) {
            if (!j((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final Iterator<Map.Entry<T, Object>> k() {
        return this.f3516c ? new c0.c(this.f3514a.entrySet().iterator()) : this.f3514a.entrySet().iterator();
    }

    public final void l() {
        if (this.f3515b) {
            return;
        }
        this.f3514a.g();
        this.f3515b = true;
    }

    public final void m(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof c0) {
            value = ((c0) value).a(null);
        }
        key.c();
        if (key.e() != s1.MESSAGE) {
            this.f3514a.put(key, b(value));
            return;
        }
        Object objF = f(key);
        if (objF == null) {
            this.f3514a.put(key, b(value));
        } else {
            this.f3514a.put(key, ((x.a) key.v(((q0) objF).c(), (q0) value)).h());
        }
    }

    public final void n(T t10, Object obj) {
        t10.c();
        t10.d();
        o(null, obj);
        if (obj instanceof c0) {
            this.f3516c = true;
        }
        this.f3514a.put(t10, obj);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x002c  */
    public final void o(r1 r1Var, Object obj) {
        Charset charset = z.f3564a;
        Objects.requireNonNull(obj);
        boolean z10 = true;
        boolean z11 = false;
        switch (r1Var.f3498h) {
            case INT:
                z11 = obj instanceof Integer;
                break;
            case LONG:
                z11 = obj instanceof Long;
                break;
            case FLOAT:
                z11 = obj instanceof Float;
                break;
            case DOUBLE:
                z11 = obj instanceof Double;
                break;
            case BOOLEAN:
                z11 = obj instanceof Boolean;
                break;
            case STRING:
                z11 = obj instanceof String;
                break;
            case BYTE_STRING:
                if (!(obj instanceof i) && !(obj instanceof byte[])) {
                    z10 = false;
                }
                z11 = z10;
                break;
            case ENUM:
                if (!(obj instanceof Integer) && !(obj instanceof z.a)) {
                    z10 = false;
                }
                z11 = z10;
                break;
            case MESSAGE:
                if (!(obj instanceof q0) && !(obj instanceof c0)) {
                    z10 = false;
                }
                z11 = z10;
                break;
        }
        if (!z11) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    public t(boolean z10) {
        int i10 = h1.f3402n;
        this.f3514a = new g1(0);
        l();
        l();
    }
}
