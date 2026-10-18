package m7;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: UnsafeUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class m1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Unsafe f10702a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Class<?> f10703b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e f10704c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f10705d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f10706e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f10707f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final boolean f10708g;

    /* JADX INFO: compiled from: UnsafeUtil.java */
    public static class a implements PrivilegedExceptionAction<Unsafe> {
        @Override // java.security.PrivilegedExceptionAction
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Unsafe run() throws Exception {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: UnsafeUtil.java */
    public static final class b extends e {
        public b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // m7.m1.e
        public final boolean c(Object obj, long j10) {
            return m1.f10708g ? m1.b(obj, j10) : m1.c(obj, j10);
        }

        @Override // m7.m1.e
        public final byte d(Object obj, long j10) {
            return m1.f10708g ? (byte) ((m1.m(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & 255) : (byte) ((m1.m(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255);
        }

        @Override // m7.m1.e
        public final double e(Object obj, long j10) {
            return Double.longBitsToDouble(h(obj, j10));
        }

        @Override // m7.m1.e
        public final float f(Object obj, long j10) {
            return Float.intBitsToFloat(g(obj, j10));
        }

        @Override // m7.m1.e
        public final void k(Object obj, long j10, boolean z10) {
            if (m1.f10708g) {
                m1.s(obj, j10, z10 ? (byte) 1 : (byte) 0);
            } else {
                m1.t(obj, j10, z10 ? (byte) 1 : (byte) 0);
            }
        }

        @Override // m7.m1.e
        public final void l(Object obj, long j10, byte b10) {
            if (m1.f10708g) {
                m1.s(obj, j10, b10);
            } else {
                m1.t(obj, j10, b10);
            }
        }

        @Override // m7.m1.e
        public final void m(Object obj, long j10, double d10) {
            p(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // m7.m1.e
        public final void n(Object obj, long j10, float f10) {
            o(obj, j10, Float.floatToIntBits(f10));
        }

        @Override // m7.m1.e
        public final boolean s() {
            return false;
        }
    }

    /* JADX INFO: compiled from: UnsafeUtil.java */
    public static final class c extends e {
        public c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // m7.m1.e
        public final boolean c(Object obj, long j10) {
            return m1.f10708g ? m1.b(obj, j10) : m1.c(obj, j10);
        }

        @Override // m7.m1.e
        public final byte d(Object obj, long j10) {
            return m1.f10708g ? (byte) ((m1.m(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & 255) : (byte) ((m1.m(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255);
        }

        @Override // m7.m1.e
        public final double e(Object obj, long j10) {
            return Double.longBitsToDouble(h(obj, j10));
        }

        @Override // m7.m1.e
        public final float f(Object obj, long j10) {
            return Float.intBitsToFloat(g(obj, j10));
        }

        @Override // m7.m1.e
        public final void k(Object obj, long j10, boolean z10) {
            if (m1.f10708g) {
                m1.s(obj, j10, z10 ? (byte) 1 : (byte) 0);
            } else {
                m1.t(obj, j10, z10 ? (byte) 1 : (byte) 0);
            }
        }

        @Override // m7.m1.e
        public final void l(Object obj, long j10, byte b10) {
            if (m1.f10708g) {
                m1.s(obj, j10, b10);
            } else {
                m1.t(obj, j10, b10);
            }
        }

        @Override // m7.m1.e
        public final void m(Object obj, long j10, double d10) {
            p(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // m7.m1.e
        public final void n(Object obj, long j10, float f10) {
            o(obj, j10, Float.floatToIntBits(f10));
        }

        @Override // m7.m1.e
        public final boolean s() {
            return false;
        }
    }

    /* JADX INFO: compiled from: UnsafeUtil.java */
    public static final class d extends e {
        public d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // m7.m1.e
        public final boolean c(Object obj, long j10) {
            return this.f10709a.getBoolean(obj, j10);
        }

        @Override // m7.m1.e
        public final byte d(Object obj, long j10) {
            return this.f10709a.getByte(obj, j10);
        }

        @Override // m7.m1.e
        public final double e(Object obj, long j10) {
            return this.f10709a.getDouble(obj, j10);
        }

        @Override // m7.m1.e
        public final float f(Object obj, long j10) {
            return this.f10709a.getFloat(obj, j10);
        }

        @Override // m7.m1.e
        public final void k(Object obj, long j10, boolean z10) {
            this.f10709a.putBoolean(obj, j10, z10);
        }

        @Override // m7.m1.e
        public final void l(Object obj, long j10, byte b10) {
            this.f10709a.putByte(obj, j10, b10);
        }

        @Override // m7.m1.e
        public final void m(Object obj, long j10, double d10) {
            this.f10709a.putDouble(obj, j10, d10);
        }

        @Override // m7.m1.e
        public final void n(Object obj, long j10, float f10) {
            this.f10709a.putFloat(obj, j10, f10);
        }

        @Override // m7.m1.e
        public final boolean r() {
            if (!super.r()) {
                return false;
            }
            try {
                Class<?> cls = this.f10709a.getClass();
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getByte", Object.class, cls2);
                cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
                cls.getMethod("getBoolean", Object.class, cls2);
                cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
                cls.getMethod("getFloat", Object.class, cls2);
                cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
                cls.getMethod("getDouble", Object.class, cls2);
                cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
                return true;
            } catch (Throwable th) {
                m1.a(th);
                return false;
            }
        }

        /* JADX WARN: Code duplicated, block: B:4:0x000d  */
        @Override // m7.m1.e
        public final boolean s() {
            boolean z10;
            Unsafe unsafe = this.f10709a;
            if (unsafe == null) {
                z10 = false;
            } else {
                try {
                    Class<?> cls = unsafe.getClass();
                    cls.getMethod("objectFieldOffset", Field.class);
                    cls.getMethod("getLong", Object.class, Long.TYPE);
                    if (m1.g() == null) {
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                } catch (Throwable th) {
                    m1.a(th);
                }
            }
            if (!z10) {
                return false;
            }
            try {
                Class<?> cls2 = this.f10709a.getClass();
                Class<?> cls3 = Long.TYPE;
                cls2.getMethod("getByte", cls3);
                cls2.getMethod("putByte", cls3, Byte.TYPE);
                cls2.getMethod("getInt", cls3);
                cls2.getMethod("putInt", cls3, Integer.TYPE);
                cls2.getMethod("getLong", cls3);
                cls2.getMethod("putLong", cls3, cls3);
                cls2.getMethod("copyMemory", cls3, cls3, cls3);
                cls2.getMethod("copyMemory", Object.class, cls3, Object.class, cls3, cls3);
                return true;
            } catch (Throwable th2) {
                m1.a(th2);
                return false;
            }
        }
    }

    /* JADX INFO: compiled from: UnsafeUtil.java */
    public static abstract class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Unsafe f10709a;

        public e(Unsafe unsafe) {
            this.f10709a = unsafe;
        }

        public final int a(Class<?> cls) {
            return this.f10709a.arrayBaseOffset(cls);
        }

        public final int b(Class<?> cls) {
            return this.f10709a.arrayIndexScale(cls);
        }

        public abstract boolean c(Object obj, long j10);

        public abstract byte d(Object obj, long j10);

        public abstract double e(Object obj, long j10);

        public abstract float f(Object obj, long j10);

        public final int g(Object obj, long j10) {
            return this.f10709a.getInt(obj, j10);
        }

        public final long h(Object obj, long j10) {
            return this.f10709a.getLong(obj, j10);
        }

        public final Object i(Object obj, long j10) {
            return this.f10709a.getObject(obj, j10);
        }

        public final long j(Field field) {
            return this.f10709a.objectFieldOffset(field);
        }

        public abstract void k(Object obj, long j10, boolean z10);

        public abstract void l(Object obj, long j10, byte b10);

        public abstract void m(Object obj, long j10, double d10);

        public abstract void n(Object obj, long j10, float f10);

        public final void o(Object obj, long j10, int i10) {
            this.f10709a.putInt(obj, j10, i10);
        }

        public final void p(Object obj, long j10, long j11) {
            this.f10709a.putLong(obj, j10, j11);
        }

        public final void q(Object obj, long j10, Object obj2) {
            this.f10709a.putObject(obj, j10, obj2);
        }

        public boolean r() {
            Unsafe unsafe = this.f10709a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th) {
                m1.a(th);
                return false;
            }
        }

        public abstract boolean s();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x003b  */
    static {
        e dVar;
        Unsafe unsafeP = p();
        f10702a = unsafeP;
        f10703b = m7.d.f10625a;
        boolean zH = h(Long.TYPE);
        boolean zH2 = h(Integer.TYPE);
        if (unsafeP == null) {
            dVar = null;
        } else if (!m7.d.a()) {
            dVar = new d(unsafeP);
        } else if (zH) {
            dVar = new c(unsafeP);
        } else if (zH2) {
            dVar = new b(unsafeP);
        } else {
            dVar = null;
        }
        f10704c = dVar;
        f10705d = dVar == null ? false : dVar.s();
        f10706e = dVar == null ? false : dVar.r();
        f10707f = e(byte[].class);
        e(boolean[].class);
        f(boolean[].class);
        e(int[].class);
        f(int[].class);
        e(long[].class);
        f(long[].class);
        e(float[].class);
        f(float[].class);
        e(double[].class);
        f(double[].class);
        e(Object[].class);
        f(Object[].class);
        Field fieldG = g();
        if (fieldG != null && dVar != null) {
            dVar.j(fieldG);
        }
        f10708g = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static void a(Throwable th) {
        Logger.getLogger(m1.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th);
    }

    public static boolean b(Object obj, long j10) {
        return ((byte) ((m(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & 255)) != 0;
    }

    public static boolean c(Object obj, long j10) {
        return ((byte) ((m(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255)) != 0;
    }

    public static <T> T d(Class<T> cls) {
        try {
            return (T) f10702a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static int e(Class<?> cls) {
        if (f10706e) {
            return f10704c.a(cls);
        }
        return -1;
    }

    public static int f(Class<?> cls) {
        if (f10706e) {
            return f10704c.b(cls);
        }
        return -1;
    }

    public static Field g() {
        Field declaredField;
        Field declaredField2;
        if (m7.d.a()) {
            try {
                declaredField2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
            } catch (Throwable unused) {
                declaredField2 = null;
            }
            if (declaredField2 != null) {
                return declaredField2;
            }
        }
        try {
            declaredField = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            declaredField = null;
        }
        if (declaredField == null || declaredField.getType() != Long.TYPE) {
            return null;
        }
        return declaredField;
    }

    public static boolean h(Class<?> cls) {
        if (!m7.d.a()) {
            return false;
        }
        try {
            Class<?> cls2 = f10703b;
            Class<?> cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class<?> cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean i(Object obj, long j10) {
        return f10704c.c(obj, j10);
    }

    public static byte j(byte[] bArr, long j10) {
        return f10704c.d(bArr, f10707f + j10);
    }

    public static double k(Object obj, long j10) {
        return f10704c.e(obj, j10);
    }

    public static float l(Object obj, long j10) {
        return f10704c.f(obj, j10);
    }

    public static int m(Object obj, long j10) {
        return f10704c.g(obj, j10);
    }

    public static long n(Object obj, long j10) {
        return f10704c.h(obj, j10);
    }

    public static Object o(Object obj, long j10) {
        return f10704c.i(obj, j10);
    }

    public static Unsafe p() {
        try {
            return (Unsafe) AccessController.doPrivileged(new a());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void q(Object obj, long j10, boolean z10) {
        f10704c.k(obj, j10, z10);
    }

    public static void r(byte[] bArr, long j10, byte b10) {
        f10704c.l(bArr, f10707f + j10, b10);
    }

    public static void s(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int iM = m(obj, j11);
        int i10 = ((~((int) j10)) & 3) << 3;
        w(obj, j11, ((255 & b10) << i10) | (iM & (~(255 << i10))));
    }

    public static void t(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int i10 = (((int) j10) & 3) << 3;
        w(obj, j11, ((255 & b10) << i10) | (m(obj, j11) & (~(255 << i10))));
    }

    public static void u(Object obj, long j10, double d10) {
        f10704c.m(obj, j10, d10);
    }

    public static void v(Object obj, long j10, float f10) {
        f10704c.n(obj, j10, f10);
    }

    public static void w(Object obj, long j10, int i10) {
        f10704c.o(obj, j10, i10);
    }

    public static void x(Object obj, long j10, long j11) {
        f10704c.p(obj, j10, j11);
    }

    public static void y(Object obj, long j10, Object obj2) {
        f10704c.q(obj, j10, obj2);
    }
}
