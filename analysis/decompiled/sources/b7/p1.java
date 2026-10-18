package b7;

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
public final class p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f3471a = Logger.getLogger(p1.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Unsafe f3472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Class<?> f3473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final e f3474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f3475e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final boolean f3476f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final long f3477g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final boolean f3478h;

    /* JADX INFO: compiled from: UnsafeUtil.java */
    public class a implements PrivilegedExceptionAction<Unsafe> {
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

        @Override // b7.p1.e
        public final boolean c(Object obj, long j10) {
            return p1.f3478h ? p1.a(obj, j10) : p1.b(obj, j10);
        }

        @Override // b7.p1.e
        public final byte d(Object obj, long j10) {
            return p1.f3478h ? (byte) ((p1.l(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & 255) : (byte) ((p1.l(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255);
        }

        @Override // b7.p1.e
        public final double e(Object obj, long j10) {
            return Double.longBitsToDouble(h(obj, j10));
        }

        @Override // b7.p1.e
        public final float f(Object obj, long j10) {
            return Float.intBitsToFloat(g(obj, j10));
        }

        @Override // b7.p1.e
        public final void k(Object obj, long j10, boolean z10) {
            if (p1.f3478h) {
                p1.r(obj, j10, z10 ? (byte) 1 : (byte) 0);
            } else {
                p1.s(obj, j10, z10 ? (byte) 1 : (byte) 0);
            }
        }

        @Override // b7.p1.e
        public final void l(Object obj, long j10, byte b10) {
            if (p1.f3478h) {
                p1.r(obj, j10, b10);
            } else {
                p1.s(obj, j10, b10);
            }
        }

        @Override // b7.p1.e
        public final void m(Object obj, long j10, double d10) {
            p(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // b7.p1.e
        public final void n(Object obj, long j10, float f10) {
            o(obj, j10, Float.floatToIntBits(f10));
        }
    }

    /* JADX INFO: compiled from: UnsafeUtil.java */
    public static final class c extends e {
        public c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // b7.p1.e
        public final boolean c(Object obj, long j10) {
            return p1.f3478h ? p1.a(obj, j10) : p1.b(obj, j10);
        }

        @Override // b7.p1.e
        public final byte d(Object obj, long j10) {
            return p1.f3478h ? (byte) ((p1.l(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & 255) : (byte) ((p1.l(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255);
        }

        @Override // b7.p1.e
        public final double e(Object obj, long j10) {
            return Double.longBitsToDouble(h(obj, j10));
        }

        @Override // b7.p1.e
        public final float f(Object obj, long j10) {
            return Float.intBitsToFloat(g(obj, j10));
        }

        @Override // b7.p1.e
        public final void k(Object obj, long j10, boolean z10) {
            if (p1.f3478h) {
                p1.r(obj, j10, z10 ? (byte) 1 : (byte) 0);
            } else {
                p1.s(obj, j10, z10 ? (byte) 1 : (byte) 0);
            }
        }

        @Override // b7.p1.e
        public final void l(Object obj, long j10, byte b10) {
            if (p1.f3478h) {
                p1.r(obj, j10, b10);
            } else {
                p1.s(obj, j10, b10);
            }
        }

        @Override // b7.p1.e
        public final void m(Object obj, long j10, double d10) {
            p(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // b7.p1.e
        public final void n(Object obj, long j10, float f10) {
            o(obj, j10, Float.floatToIntBits(f10));
        }
    }

    /* JADX INFO: compiled from: UnsafeUtil.java */
    public static final class d extends e {
        public d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // b7.p1.e
        public final boolean c(Object obj, long j10) {
            return this.f3479a.getBoolean(obj, j10);
        }

        @Override // b7.p1.e
        public final byte d(Object obj, long j10) {
            return this.f3479a.getByte(obj, j10);
        }

        @Override // b7.p1.e
        public final double e(Object obj, long j10) {
            return this.f3479a.getDouble(obj, j10);
        }

        @Override // b7.p1.e
        public final float f(Object obj, long j10) {
            return this.f3479a.getFloat(obj, j10);
        }

        @Override // b7.p1.e
        public final void k(Object obj, long j10, boolean z10) {
            this.f3479a.putBoolean(obj, j10, z10);
        }

        @Override // b7.p1.e
        public final void l(Object obj, long j10, byte b10) {
            this.f3479a.putByte(obj, j10, b10);
        }

        @Override // b7.p1.e
        public final void m(Object obj, long j10, double d10) {
            this.f3479a.putDouble(obj, j10, d10);
        }

        @Override // b7.p1.e
        public final void n(Object obj, long j10, float f10) {
            this.f3479a.putFloat(obj, j10, f10);
        }
    }

    /* JADX INFO: compiled from: UnsafeUtil.java */
    public static abstract class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Unsafe f3479a;

        public e(Unsafe unsafe) {
            this.f3479a = unsafe;
        }

        public final int a(Class<?> cls) {
            return this.f3479a.arrayBaseOffset(cls);
        }

        public final int b(Class<?> cls) {
            return this.f3479a.arrayIndexScale(cls);
        }

        public abstract boolean c(Object obj, long j10);

        public abstract byte d(Object obj, long j10);

        public abstract double e(Object obj, long j10);

        public abstract float f(Object obj, long j10);

        public final int g(Object obj, long j10) {
            return this.f3479a.getInt(obj, j10);
        }

        public final long h(Object obj, long j10) {
            return this.f3479a.getLong(obj, j10);
        }

        public final Object i(Object obj, long j10) {
            return this.f3479a.getObject(obj, j10);
        }

        public final long j(Field field) {
            return this.f3479a.objectFieldOffset(field);
        }

        public abstract void k(Object obj, long j10, boolean z10);

        public abstract void l(Object obj, long j10, byte b10);

        public abstract void m(Object obj, long j10, double d10);

        public abstract void n(Object obj, long j10, float f10);

        public final void o(Object obj, long j10, int i10) {
            this.f3479a.putInt(obj, j10, i10);
        }

        public final void p(Object obj, long j10, long j11) {
            this.f3479a.putLong(obj, j10, j11);
        }

        public final void q(Object obj, long j10, Object obj2) {
            this.f3479a.putObject(obj, j10, obj2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0049  */
    /* JADX WARN: Code duplicated, block: B:38:0x0125  */
    /* JADX WARN: Code duplicated, block: B:55:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:56:0x01a7 A[Catch: all -> 0x0222, TRY_LEAVE, TryCatch #0 {all -> 0x0222, blocks: (B:39:0x012a, B:42:0x0147, B:45:0x0162, B:49:0x017c, B:53:0x0197, B:56:0x01a7, B:59:0x01b8, B:62:0x01d5, B:65:0x01f2), top: B:89:0x012a }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0271  */
    /* JADX WARN: Code duplicated, block: B:86:0x0281  */
    /* JADX WARN: Code duplicated, block: B:89:0x012a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        e dVar;
        Class cls;
        Class cls2;
        boolean z10;
        Unsafe unsafe;
        boolean z11;
        boolean z12;
        Class<?> cls3;
        boolean z13;
        Class<?> cls4;
        boolean z14;
        Field fieldF;
        e eVar;
        Unsafe unsafeO = o();
        f3472b = unsafeO;
        f3473c = b7.d.f3379a;
        Class<?> cls5 = Long.TYPE;
        boolean zG = g(cls5);
        Class<?> cls6 = Integer.TYPE;
        boolean zG2 = g(cls6);
        if (unsafeO == null) {
            dVar = null;
        } else if (!b7.d.a()) {
            dVar = new d(unsafeO);
        } else if (zG) {
            dVar = new c(unsafeO);
        } else if (zG2) {
            dVar = new b(unsafeO);
        } else {
            dVar = null;
        }
        f3474d = dVar;
        if (unsafeO != null) {
            try {
                Class<?> cls7 = unsafeO.getClass();
                cls = int[].class;
                try {
                    cls7.getMethod("objectFieldOffset", Field.class);
                    cls7.getMethod("getLong", Object.class, cls5);
                    if (f() != null) {
                        if (b7.d.a()) {
                            cls2 = boolean[].class;
                        } else {
                            cls7.getMethod("getByte", cls5);
                            Class<?>[] clsArr = new Class[2];
                            clsArr[0] = cls5;
                            cls2 = boolean[].class;
                            try {
                                clsArr[1] = Byte.TYPE;
                                cls7.getMethod("putByte", clsArr);
                                cls7.getMethod("getInt", cls5);
                                cls7.getMethod("putInt", cls5, cls6);
                                cls7.getMethod("getLong", cls5);
                                cls7.getMethod("putLong", cls5, cls5);
                                cls7.getMethod("copyMemory", cls5, cls5, cls5);
                                cls7.getMethod("copyMemory", Object.class, cls5, Object.class, cls5, cls5);
                            } catch (Throwable th) {
                                th = th;
                                f3471a.log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th);
                                z10 = false;
                            }
                        }
                        z10 = true;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cls2 = boolean[].class;
                    f3471a.log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th);
                    z10 = false;
                    f3475e = z10;
                    unsafe = f3472b;
                    if (unsafe == null) {
                        z12 = false;
                        z11 = true;
                    } else {
                        try {
                            cls3 = unsafe.getClass();
                            z13 = true;
                            try {
                                cls3.getMethod("objectFieldOffset", Field.class);
                                cls3.getMethod("arrayBaseOffset", Class.class);
                                Class<?>[] clsArr2 = new Class[1];
                                clsArr2[0] = Class.class;
                                cls3.getMethod("arrayIndexScale", clsArr2);
                                Class<?>[] clsArr3 = new Class[2];
                                clsArr3[0] = Object.class;
                                cls4 = Long.TYPE;
                                z11 = true;
                                try {
                                    clsArr3[1] = cls4;
                                    cls3.getMethod("getInt", clsArr3);
                                    Class<?>[] clsArr4 = new Class[3];
                                    clsArr4[0] = Object.class;
                                    clsArr4[1] = cls4;
                                    clsArr4[2] = Integer.TYPE;
                                    cls3.getMethod("putInt", clsArr4);
                                    Class<?>[] clsArr5 = new Class[2];
                                    clsArr5[0] = Object.class;
                                    clsArr5[1] = cls4;
                                    cls3.getMethod("getLong", clsArr5);
                                    Class<?>[] clsArr6 = new Class[3];
                                    clsArr6[0] = Object.class;
                                    clsArr6[1] = cls4;
                                    clsArr6[2] = cls4;
                                    cls3.getMethod("putLong", clsArr6);
                                    Class<?>[] clsArr7 = new Class[2];
                                    clsArr7[0] = Object.class;
                                    z14 = true;
                                    try {
                                        clsArr7[1] = cls4;
                                        cls3.getMethod("getObject", clsArr7);
                                        Class<?>[] clsArr8 = new Class[3];
                                        clsArr8[0] = Object.class;
                                        clsArr8[1] = cls4;
                                        clsArr8[2] = Object.class;
                                        cls3.getMethod("putObject", clsArr8);
                                        if (b7.d.a()) {
                                            z11 = true;
                                            z12 = true;
                                        } else {
                                            Class<?>[] clsArr9 = new Class[2];
                                            clsArr9[0] = Object.class;
                                            z14 = true;
                                            clsArr9[1] = cls4;
                                            cls3.getMethod("getByte", clsArr9);
                                            Class<?>[] clsArr10 = new Class[3];
                                            clsArr10[0] = Object.class;
                                            clsArr10[1] = cls4;
                                            clsArr10[2] = Byte.TYPE;
                                            cls3.getMethod("putByte", clsArr10);
                                            Class<?>[] clsArr11 = new Class[2];
                                            clsArr11[0] = Object.class;
                                            z13 = true;
                                            clsArr11[1] = cls4;
                                            cls3.getMethod("getBoolean", clsArr11);
                                            Class<?>[] clsArr12 = new Class[3];
                                            clsArr12[0] = Object.class;
                                            clsArr12[1] = cls4;
                                            clsArr12[2] = Boolean.TYPE;
                                            cls3.getMethod("putBoolean", clsArr12);
                                            Class<?>[] clsArr13 = new Class[2];
                                            clsArr13[0] = Object.class;
                                            clsArr13[1] = cls4;
                                            cls3.getMethod("getFloat", clsArr13);
                                            Class<?>[] clsArr14 = new Class[3];
                                            clsArr14[0] = Object.class;
                                            clsArr14[1] = cls4;
                                            clsArr14[2] = Float.TYPE;
                                            cls3.getMethod("putFloat", clsArr14);
                                            Class<?>[] clsArr15 = new Class[2];
                                            clsArr15[0] = Object.class;
                                            z11 = true;
                                            clsArr15[1] = cls4;
                                            cls3.getMethod("getDouble", clsArr15);
                                            cls3.getMethod("putDouble", Object.class, cls4, Double.TYPE);
                                            z12 = true;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        z11 = z14;
                                        f3471a.log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th);
                                        z12 = false;
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                z11 = z13;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            z11 = true;
                        }
                    }
                    f3476f = z12;
                    f3477g = d(byte[].class);
                    d(cls2);
                    e(cls2);
                    d(cls);
                    e(cls);
                    d(long[].class);
                    e(long[].class);
                    d(float[].class);
                    e(float[].class);
                    d(double[].class);
                    e(double[].class);
                    d(Object[].class);
                    e(Object[].class);
                    fieldF = f();
                    if (fieldF != null) {
                        eVar.j(fieldF);
                    }
                    f3478h = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN ? z11 : false;
                }
            } catch (Throwable th7) {
                th = th7;
                cls = int[].class;
            }
            f3475e = z10;
            unsafe = f3472b;
            if (unsafe == null) {
                z12 = false;
                z11 = true;
            } else {
                cls3 = unsafe.getClass();
                z13 = true;
                cls3.getMethod("objectFieldOffset", Field.class);
                cls3.getMethod("arrayBaseOffset", Class.class);
                Class<?>[] clsArr16 = new Class[1];
                clsArr16[0] = Class.class;
                cls3.getMethod("arrayIndexScale", clsArr16);
                Class<?>[] clsArr17 = new Class[2];
                clsArr17[0] = Object.class;
                cls4 = Long.TYPE;
                z11 = true;
                clsArr17[1] = cls4;
                cls3.getMethod("getInt", clsArr17);
                Class<?>[] clsArr18 = new Class[3];
                clsArr18[0] = Object.class;
                clsArr18[1] = cls4;
                clsArr18[2] = Integer.TYPE;
                cls3.getMethod("putInt", clsArr18);
                Class<?>[] clsArr19 = new Class[2];
                clsArr19[0] = Object.class;
                clsArr19[1] = cls4;
                cls3.getMethod("getLong", clsArr19);
                Class<?>[] clsArr20 = new Class[3];
                clsArr20[0] = Object.class;
                clsArr20[1] = cls4;
                clsArr20[2] = cls4;
                cls3.getMethod("putLong", clsArr20);
                Class<?>[] clsArr21 = new Class[2];
                clsArr21[0] = Object.class;
                z14 = true;
                clsArr21[1] = cls4;
                cls3.getMethod("getObject", clsArr21);
                Class<?>[] clsArr22 = new Class[3];
                clsArr22[0] = Object.class;
                clsArr22[1] = cls4;
                clsArr22[2] = Object.class;
                cls3.getMethod("putObject", clsArr22);
                if (b7.d.a()) {
                    z11 = true;
                    z12 = true;
                } else {
                    Class<?>[] clsArr23 = new Class[2];
                    clsArr23[0] = Object.class;
                    z14 = true;
                    clsArr23[1] = cls4;
                    cls3.getMethod("getByte", clsArr23);
                    Class<?>[] clsArr110 = new Class[3];
                    clsArr110[0] = Object.class;
                    clsArr110[1] = cls4;
                    clsArr110[2] = Byte.TYPE;
                    cls3.getMethod("putByte", clsArr110);
                    Class<?>[] clsArr111 = new Class[2];
                    clsArr111[0] = Object.class;
                    z13 = true;
                    clsArr111[1] = cls4;
                    cls3.getMethod("getBoolean", clsArr111);
                    Class<?>[] clsArr112 = new Class[3];
                    clsArr112[0] = Object.class;
                    clsArr112[1] = cls4;
                    clsArr112[2] = Boolean.TYPE;
                    cls3.getMethod("putBoolean", clsArr112);
                    Class<?>[] clsArr113 = new Class[2];
                    clsArr113[0] = Object.class;
                    clsArr113[1] = cls4;
                    cls3.getMethod("getFloat", clsArr113);
                    Class<?>[] clsArr114 = new Class[3];
                    clsArr114[0] = Object.class;
                    clsArr114[1] = cls4;
                    clsArr114[2] = Float.TYPE;
                    cls3.getMethod("putFloat", clsArr114);
                    Class<?>[] clsArr115 = new Class[2];
                    clsArr115[0] = Object.class;
                    z11 = true;
                    clsArr115[1] = cls4;
                    cls3.getMethod("getDouble", clsArr115);
                    cls3.getMethod("putDouble", Object.class, cls4, Double.TYPE);
                    z12 = true;
                }
            }
            f3476f = z12;
            f3477g = d(byte[].class);
            d(cls2);
            e(cls2);
            d(cls);
            e(cls);
            d(long[].class);
            e(long[].class);
            d(float[].class);
            e(float[].class);
            d(double[].class);
            e(double[].class);
            d(Object[].class);
            e(Object[].class);
            fieldF = f();
            if (fieldF != null && (eVar = f3474d) != null) {
                eVar.j(fieldF);
            }
            f3478h = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN ? z11 : false;
        }
        cls = int[].class;
        cls2 = boolean[].class;
        z10 = false;
        f3475e = z10;
        unsafe = f3472b;
        if (unsafe == null) {
            z12 = false;
            z11 = true;
        } else {
            cls3 = unsafe.getClass();
            z13 = true;
            cls3.getMethod("objectFieldOffset", Field.class);
            cls3.getMethod("arrayBaseOffset", Class.class);
            Class<?>[] clsArr116 = new Class[1];
            clsArr116[0] = Class.class;
            cls3.getMethod("arrayIndexScale", clsArr116);
            Class<?>[] clsArr117 = new Class[2];
            clsArr117[0] = Object.class;
            cls4 = Long.TYPE;
            z11 = true;
            clsArr117[1] = cls4;
            cls3.getMethod("getInt", clsArr117);
            Class<?>[] clsArr118 = new Class[3];
            clsArr118[0] = Object.class;
            clsArr118[1] = cls4;
            clsArr118[2] = Integer.TYPE;
            cls3.getMethod("putInt", clsArr118);
            Class<?>[] clsArr119 = new Class[2];
            clsArr119[0] = Object.class;
            clsArr119[1] = cls4;
            cls3.getMethod("getLong", clsArr119);
            Class<?>[] clsArr24 = new Class[3];
            clsArr24[0] = Object.class;
            clsArr24[1] = cls4;
            clsArr24[2] = cls4;
            cls3.getMethod("putLong", clsArr24);
            Class<?>[] clsArr25 = new Class[2];
            clsArr25[0] = Object.class;
            z14 = true;
            clsArr25[1] = cls4;
            cls3.getMethod("getObject", clsArr25);
            Class<?>[] clsArr26 = new Class[3];
            clsArr26[0] = Object.class;
            clsArr26[1] = cls4;
            clsArr26[2] = Object.class;
            cls3.getMethod("putObject", clsArr26);
            if (b7.d.a()) {
                z11 = true;
                z12 = true;
            } else {
                Class<?>[] clsArr27 = new Class[2];
                clsArr27[0] = Object.class;
                z14 = true;
                clsArr27[1] = cls4;
                cls3.getMethod("getByte", clsArr27);
                Class<?>[] clsArr1110 = new Class[3];
                clsArr1110[0] = Object.class;
                clsArr1110[1] = cls4;
                clsArr1110[2] = Byte.TYPE;
                cls3.getMethod("putByte", clsArr1110);
                Class<?>[] clsArr1111 = new Class[2];
                clsArr1111[0] = Object.class;
                z13 = true;
                clsArr1111[1] = cls4;
                cls3.getMethod("getBoolean", clsArr1111);
                Class<?>[] clsArr1112 = new Class[3];
                clsArr1112[0] = Object.class;
                clsArr1112[1] = cls4;
                clsArr1112[2] = Boolean.TYPE;
                cls3.getMethod("putBoolean", clsArr1112);
                Class<?>[] clsArr1113 = new Class[2];
                clsArr1113[0] = Object.class;
                clsArr1113[1] = cls4;
                cls3.getMethod("getFloat", clsArr1113);
                Class<?>[] clsArr1114 = new Class[3];
                clsArr1114[0] = Object.class;
                clsArr1114[1] = cls4;
                clsArr1114[2] = Float.TYPE;
                cls3.getMethod("putFloat", clsArr1114);
                Class<?>[] clsArr1115 = new Class[2];
                clsArr1115[0] = Object.class;
                z11 = true;
                clsArr1115[1] = cls4;
                cls3.getMethod("getDouble", clsArr1115);
                cls3.getMethod("putDouble", Object.class, cls4, Double.TYPE);
                z12 = true;
            }
        }
        f3476f = z12;
        f3477g = d(byte[].class);
        d(cls2);
        e(cls2);
        d(cls);
        e(cls);
        d(long[].class);
        e(long[].class);
        d(float[].class);
        e(float[].class);
        d(double[].class);
        e(double[].class);
        d(Object[].class);
        e(Object[].class);
        fieldF = f();
        if (fieldF != null) {
            eVar.j(fieldF);
        }
        f3478h = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN ? z11 : false;
    }

    public static boolean a(Object obj, long j10) {
        return ((byte) ((l(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & 255)) != 0;
    }

    public static boolean b(Object obj, long j10) {
        return ((byte) ((l(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255)) != 0;
    }

    public static <T> T c(Class<T> cls) {
        try {
            return (T) f3472b.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static int d(Class<?> cls) {
        if (f3476f) {
            return f3474d.a(cls);
        }
        return -1;
    }

    public static int e(Class<?> cls) {
        if (f3476f) {
            return f3474d.b(cls);
        }
        return -1;
    }

    public static Field f() {
        Field declaredField;
        Field declaredField2;
        if (b7.d.a()) {
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

    public static boolean g(Class<?> cls) {
        if (!b7.d.a()) {
            return false;
        }
        try {
            Class<?> cls2 = f3473c;
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

    public static boolean h(Object obj, long j10) {
        return f3474d.c(obj, j10);
    }

    public static byte i(byte[] bArr, long j10) {
        return f3474d.d(bArr, f3477g + j10);
    }

    public static double j(Object obj, long j10) {
        return f3474d.e(obj, j10);
    }

    public static float k(Object obj, long j10) {
        return f3474d.f(obj, j10);
    }

    public static int l(Object obj, long j10) {
        return f3474d.g(obj, j10);
    }

    public static long m(Object obj, long j10) {
        return f3474d.h(obj, j10);
    }

    public static Object n(Object obj, long j10) {
        return f3474d.i(obj, j10);
    }

    public static Unsafe o() {
        try {
            return (Unsafe) AccessController.doPrivileged(new a());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void p(Object obj, long j10, boolean z10) {
        f3474d.k(obj, j10, z10);
    }

    public static void q(byte[] bArr, long j10, byte b10) {
        f3474d.l(bArr, f3477g + j10, b10);
    }

    public static void r(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int iL = l(obj, j11);
        int i10 = ((~((int) j10)) & 3) << 3;
        v(obj, j11, ((255 & b10) << i10) | (iL & (~(255 << i10))));
    }

    public static void s(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int i10 = (((int) j10) & 3) << 3;
        v(obj, j11, ((255 & b10) << i10) | (l(obj, j11) & (~(255 << i10))));
    }

    public static void t(Object obj, long j10, double d10) {
        f3474d.m(obj, j10, d10);
    }

    public static void u(Object obj, long j10, float f10) {
        f3474d.n(obj, j10, f10);
    }

    public static void v(Object obj, long j10, int i10) {
        f3474d.o(obj, j10, i10);
    }

    public static void w(Object obj, long j10, long j11) {
        f3474d.p(obj, j10, j11);
    }

    public static void x(Object obj, long j10, Object obj2) {
        f3474d.q(obj, j10, obj2);
    }
}
