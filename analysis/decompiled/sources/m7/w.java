package m7;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import m7.w;
import m7.w.a;

/* JADX INFO: compiled from: GeneratedMessageLite.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class w<MessageType extends w<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends m7.a<MessageType, BuilderType> {
    private static Map<Object, w<?, ?>> defaultInstanceMap = new ConcurrentHashMap();
    public j1 unknownFields = j1.f10682f;
    public int memoizedSerializedSize = -1;

    /* JADX INFO: compiled from: GeneratedMessageLite.java */
    public static abstract class a<MessageType extends w<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends m7.a.AbstractC0206a<MessageType, BuilderType> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final MessageType f10784h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public MessageType f10785i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f10786j = false;

        public a(MessageType messagetype) {
            this.f10784h = messagetype;
            this.f10785i = (MessageType) messagetype.o(f.NEW_MUTABLE_INSTANCE);
        }

        @Override // m7.q0
        public final p0 b() {
            return this.f10784h;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Object clone() throws CloneNotSupportedException {
            a aVarD = this.f10784h.d();
            aVarD.l(i());
            return aVarD;
        }

        @Override // m7.q0
        public final boolean f() {
            return w.s(this.f10785i, false);
        }

        public final MessageType h() {
            MessageType messagetype = (MessageType) i();
            if (w.s(messagetype, true)) {
                return messagetype;
            }
            throw new h1();
        }

        public final MessageType i() {
            if (this.f10786j) {
                return this.f10785i;
            }
            MessageType messagetype = this.f10785i;
            Objects.requireNonNull(messagetype);
            z0 z0Var = z0.f10805c;
            Objects.requireNonNull(z0Var);
            z0Var.a(messagetype.getClass()).b(messagetype);
            this.f10786j = true;
            return this.f10785i;
        }

        public final BuilderType j() {
            this.f10785i = (MessageType) this.f10785i.o(f.NEW_MUTABLE_INSTANCE);
            return this;
        }

        public final void k() {
            if (this.f10786j) {
                MessageType messagetype = (MessageType) this.f10785i.o(f.NEW_MUTABLE_INSTANCE);
                MessageType messagetype2 = this.f10785i;
                z0 z0Var = z0.f10805c;
                Objects.requireNonNull(z0Var);
                z0Var.a(messagetype.getClass()).a(messagetype, messagetype2);
                this.f10785i = messagetype;
                this.f10786j = false;
            }
        }

        public final BuilderType l(MessageType messagetype) {
            k();
            MessageType messagetype2 = this.f10785i;
            z0 z0Var = z0.f10805c;
            Objects.requireNonNull(z0Var);
            z0Var.a(messagetype2.getClass()).a(messagetype2, messagetype);
            return this;
        }
    }

    /* JADX INFO: compiled from: GeneratedMessageLite.java */
    public static class b<T extends w<T, ?>> extends m7.b<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final T f10787a;

        public b(T t10) {
            this.f10787a = t10;
        }
    }

    /* JADX INFO: compiled from: GeneratedMessageLite.java */
    public static abstract class c<MessageType extends c<MessageType, BuilderType>, BuilderType> extends w<MessageType, BuilderType> implements q0 {
        public s<d> extensions = s.f10749d;

        @Override // m7.w, m7.q0
        public final /* bridge */ /* synthetic */ p0 b() {
            return b();
        }

        @Override // m7.w, m7.p0
        public final p0.a c() {
            a aVar = (a) o(f.NEW_BUILDER);
            aVar.l(this);
            return aVar;
        }

        @Override // m7.w, m7.p0
        public final /* bridge */ /* synthetic */ p0.a d() {
            return d();
        }

        public final s<d> x() {
            s<d> sVar = this.extensions;
            if (sVar.f10751b) {
                this.extensions = sVar.clone();
            }
            return this.extensions;
        }
    }

    /* JADX INFO: compiled from: GeneratedMessageLite.java */
    public static final class d implements s.a<d> {
        @Override // m7.s.a
        public final void a() {
        }

        @Override // m7.s.a
        public final void c() {
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            Objects.requireNonNull((d) obj);
            return 0;
        }

        @Override // m7.s.a
        public final void d() {
        }

        @Override // m7.s.a
        public final p1 e() {
            throw null;
        }

        @Override // m7.s.a
        public final void f() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // m7.s.a
        public final p0.a r(p0.a aVar, p0 p0Var) {
            a aVar2 = (a) aVar;
            aVar2.l((w) p0Var);
            return aVar2;
        }
    }

    /* JADX INFO: compiled from: GeneratedMessageLite.java */
    public static class e<ContainingType extends p0, Type> extends f8.b {
    }

    /* JADX INFO: compiled from: GeneratedMessageLite.java */
    public enum f {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    public static <T extends w<?, ?>> T p(Class<T> cls) {
        w<?, ?> wVar = defaultInstanceMap.get(cls);
        if (wVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                wVar = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (wVar == null) {
            wVar = (T) ((w) m1.d(cls)).b();
            if (wVar == null) {
                throw new IllegalStateException();
            }
            defaultInstanceMap.put(cls, wVar);
        }
        return (T) wVar;
    }

    static Object r(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static final <T extends w<T, ?>> boolean s(T t10, boolean z10) {
        byte bByteValue = ((Byte) t10.o(f.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        z0 z0Var = z0.f10805c;
        Objects.requireNonNull(z0Var);
        boolean zC = z0Var.a(t10.getClass()).c(t10);
        if (z10) {
            t10.o(f.SET_MEMOIZED_IS_INITIALIZED);
        }
        return zC;
    }

    public static <E> y.d<E> t(y.d<E> dVar) {
        int size = dVar.size();
        return dVar.b(size == 0 ? 10 : size * 2);
    }

    public static <T extends w<T, ?>> T v(T t10, byte[] bArr) throws z {
        int length = bArr.length;
        o oVarA = o.a();
        T t11 = (T) t10.o(f.NEW_MUTABLE_INSTANCE);
        try {
            c1 c1VarB = z0.f10805c.b(t11);
            c1VarB.h(t11, bArr, 0, length + 0, new m7.e.a(oVarA));
            c1VarB.b(t11);
            if (t11.memoizedHashCode != 0) {
                throw new RuntimeException();
            }
            if (s(t11, true)) {
                return t11;
            }
            throw new h1().a();
        } catch (z e10) {
            throw e10;
        } catch (IOException e11) {
            if (e11.getCause() instanceof z) {
                throw ((z) e11.getCause());
            }
            throw new z(e11);
        } catch (IndexOutOfBoundsException unused) {
            throw z.e();
        } catch (h1 e12) {
            throw e12.a();
        }
    }

    public static <T extends w<?, ?>> void w(Class<T> cls, T t10) {
        defaultInstanceMap.put(cls, t10);
    }

    @Override // m7.p0
    public final int a() {
        if (this.memoizedSerializedSize == -1) {
            z0 z0Var = z0.f10805c;
            Objects.requireNonNull(z0Var);
            this.memoizedSerializedSize = z0Var.a(getClass()).e(this);
        }
        return this.memoizedSerializedSize;
    }

    @Override // m7.p0
    public p0.a c() {
        a aVar = (a) o(f.NEW_BUILDER);
        aVar.l(this);
        return aVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        z0 z0Var = z0.f10805c;
        Objects.requireNonNull(z0Var);
        return z0Var.a(getClass()).d(this, (w) obj);
    }

    @Override // m7.q0
    public final boolean f() {
        return s(this, true);
    }

    @Override // m7.p0
    public final void g(k kVar) throws IOException {
        z0 z0Var = z0.f10805c;
        Objects.requireNonNull(z0Var);
        c1 c1VarA = z0Var.a(getClass());
        l lVar = kVar.f10690a;
        if (lVar == null) {
            lVar = new l(kVar);
        }
        c1VarA.i(this, lVar);
    }

    public final int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        z0 z0Var = z0.f10805c;
        Objects.requireNonNull(z0Var);
        int iG = z0Var.a(getClass()).g(this);
        this.memoizedHashCode = iG;
        return iG;
    }

    @Override // m7.a
    final int i() {
        return this.memoizedSerializedSize;
    }

    @Override // m7.a
    final void l(int i10) {
        this.memoizedSerializedSize = i10;
    }

    public final <MessageType extends w<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> BuilderType n() {
        return (BuilderType) o(f.NEW_BUILDER);
    }

    public abstract Object o(f fVar);

    @Override // m7.q0
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public final MessageType b() {
        return (MessageType) o(f.GET_DEFAULT_INSTANCE);
    }

    public final String toString() {
        String string = super.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(string);
        r0.c(this, sb2, 0);
        return sb2.toString();
    }

    @Override // m7.p0
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public final BuilderType d() {
        return (BuilderType) o(f.NEW_BUILDER);
    }
}
