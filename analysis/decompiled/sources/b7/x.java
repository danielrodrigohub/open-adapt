package b7;

import b7.x;
import b7.x.a;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: GeneratedMessageLite.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class x<MessageType extends x<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends b7.a<MessageType, BuilderType> {
    private static Map<Object, x<?, ?>> defaultInstanceMap = new ConcurrentHashMap();
    public m1 unknownFields = m1.f3452f;
    public int memoizedSerializedSize = -1;

    /* JADX INFO: compiled from: GeneratedMessageLite.java */
    public static abstract class a<MessageType extends x<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends b7.a.AbstractC0055a<MessageType, BuilderType> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final MessageType f3548h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public MessageType f3549i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f3550j = false;

        public a(MessageType messagetype) {
            this.f3548h = messagetype;
            this.f3549i = (MessageType) messagetype.p();
        }

        @Override // b7.r0
        public final q0 b() {
            return this.f3548h;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Object clone() throws CloneNotSupportedException {
            a aVar = (a) this.f3548h.o(f.NEW_BUILDER);
            aVar.k(i());
            return aVar;
        }

        public final MessageType h() {
            MessageType messagetype = (MessageType) i();
            if (messagetype.f()) {
                return messagetype;
            }
            throw new k1();
        }

        public final MessageType i() {
            if (this.f3550j) {
                return this.f3549i;
            }
            MessageType messagetype = this.f3549i;
            Objects.requireNonNull(messagetype);
            a1 a1Var = a1.f3353c;
            Objects.requireNonNull(a1Var);
            a1Var.a(messagetype.getClass()).b(messagetype);
            this.f3550j = true;
            return this.f3549i;
        }

        public final void j() {
            if (this.f3550j) {
                MessageType messagetype = (MessageType) this.f3549i.o(f.NEW_MUTABLE_INSTANCE);
                MessageType messagetype2 = this.f3549i;
                a1 a1Var = a1.f3353c;
                Objects.requireNonNull(a1Var);
                a1Var.a(messagetype.getClass()).a(messagetype, messagetype2);
                this.f3549i = messagetype;
                this.f3550j = false;
            }
        }

        public final BuilderType k(MessageType messagetype) {
            j();
            MessageType messagetype2 = this.f3549i;
            a1 a1Var = a1.f3353c;
            Objects.requireNonNull(a1Var);
            a1Var.a(messagetype2.getClass()).a(messagetype2, messagetype);
            return this;
        }
    }

    /* JADX INFO: compiled from: GeneratedMessageLite.java */
    public static class b<T extends x<T, ?>> extends b7.b<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final T f3551a;

        public b(T t10) {
            this.f3551a = t10;
        }
    }

    /* JADX INFO: compiled from: GeneratedMessageLite.java */
    public static abstract class c<MessageType extends c<MessageType, BuilderType>, BuilderType> extends x<MessageType, BuilderType> implements r0 {
        public t<d> extensions = t.f3513d;

        public final t<d> x() {
            t<d> tVar = this.extensions;
            if (tVar.f3515b) {
                this.extensions = tVar.clone();
            }
            return this.extensions;
        }
    }

    /* JADX INFO: compiled from: GeneratedMessageLite.java */
    public static final class d implements t.a<d> {
        @Override // b7.t.a
        public final void a() {
        }

        @Override // b7.t.a
        public final void c() {
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            Objects.requireNonNull((d) obj);
            return 0;
        }

        @Override // b7.t.a
        public final void d() {
        }

        @Override // b7.t.a
        public final s1 e() {
            throw null;
        }

        @Override // b7.t.a
        public final void f() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // b7.t.a
        public final q0.a v(q0.a aVar, q0 q0Var) {
            a aVar2 = (a) aVar;
            aVar2.k((x) q0Var);
            return aVar2;
        }
    }

    /* JADX INFO: compiled from: GeneratedMessageLite.java */
    public static class e<ContainingType extends q0, Type> extends android.support.v4.media.a {
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

    public static <T extends x<T, ?>> T m(T t10) throws a0 {
        if (t10.f()) {
            return t10;
        }
        throw new a0(new k1().getMessage());
    }

    public static <T extends x<?, ?>> T q(Class<T> cls) {
        x<?, ?> xVar = defaultInstanceMap.get(cls);
        if (xVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                xVar = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (xVar == null) {
            xVar = (T) ((x) p1.c(cls)).b();
            if (xVar == null) {
                throw new IllegalStateException();
            }
            defaultInstanceMap.put(cls, xVar);
        }
        return (T) xVar;
    }

    static Object s(Method method, Object obj, Object... objArr) {
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

    public static <T extends x<T, ?>> T t(T t10, i iVar, p pVar) throws a0 {
        try {
            j jVarP = iVar.p();
            T t11 = (T) v(t10, jVarP, pVar);
            try {
                jVarP.a(0);
                m(t11);
                return t11;
            } catch (a0 e10) {
                throw e10;
            }
        } catch (a0 e11) {
            throw e11;
        }
    }

    public static <T extends x<T, ?>> T u(T t10, byte[] bArr, p pVar) throws a0 {
        int length = bArr.length;
        T t11 = (T) t10.o(f.NEW_MUTABLE_INSTANCE);
        try {
            e1 e1VarB = a1.f3353c.b(t11);
            e1VarB.j(t11, bArr, 0, length + 0, new b7.e.a(pVar));
            e1VarB.b(t11);
            if (t11.memoizedHashCode != 0) {
                throw new RuntimeException();
            }
            m(t11);
            return t11;
        } catch (IOException e10) {
            if (e10.getCause() instanceof a0) {
                throw ((a0) e10.getCause());
            }
            throw new a0(e10.getMessage());
        } catch (IndexOutOfBoundsException unused) {
            throw a0.h();
        }
    }

    public static <T extends x<T, ?>> T v(T t10, j jVar, p pVar) throws a0 {
        T t11 = (T) t10.o(f.NEW_MUTABLE_INSTANCE);
        try {
            e1 e1VarB = a1.f3353c.b(t11);
            k kVar = jVar.f3430c;
            if (kVar == null) {
                kVar = new k(jVar);
            }
            e1VarB.i(t11, kVar, pVar);
            e1VarB.b(t11);
            return t11;
        } catch (IOException e10) {
            if (e10.getCause() instanceof a0) {
                throw ((a0) e10.getCause());
            }
            throw new a0(e10.getMessage());
        } catch (RuntimeException e11) {
            if (e11.getCause() instanceof a0) {
                throw ((a0) e11.getCause());
            }
            throw e11;
        }
    }

    public static <T extends x<?, ?>> void w(Class<T> cls, T t10) {
        defaultInstanceMap.put(cls, t10);
    }

    @Override // b7.q0
    public final int a() {
        if (this.memoizedSerializedSize == -1) {
            a1 a1Var = a1.f3353c;
            Objects.requireNonNull(a1Var);
            this.memoizedSerializedSize = a1Var.a(getClass()).e(this);
        }
        return this.memoizedSerializedSize;
    }

    @Override // b7.q0
    public final q0.a c() {
        a aVar = (a) o(f.NEW_BUILDER);
        aVar.k(this);
        return aVar;
    }

    @Override // b7.q0
    public final q0.a d() {
        return (a) o(f.NEW_BUILDER);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!b().getClass().isInstance(obj)) {
            return false;
        }
        a1 a1Var = a1.f3353c;
        Objects.requireNonNull(a1Var);
        return a1Var.a(getClass()).d(this, (x) obj);
    }

    @Override // b7.r0
    public final boolean f() {
        byte bByteValue = ((Byte) o(f.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        a1 a1Var = a1.f3353c;
        Objects.requireNonNull(a1Var);
        boolean zC = a1Var.a(getClass()).c(this);
        o(f.SET_MEMOIZED_IS_INITIALIZED);
        return zC;
    }

    @Override // b7.q0
    public final void g(l lVar) throws IOException {
        a1 a1Var = a1.f3353c;
        Objects.requireNonNull(a1Var);
        e1 e1VarA = a1Var.a(getClass());
        m mVar = lVar.f3447a;
        if (mVar == null) {
            mVar = new m(lVar);
        }
        e1VarA.h(this, mVar);
    }

    @Override // b7.a
    final int h() {
        return this.memoizedSerializedSize;
    }

    public final int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        a1 a1Var = a1.f3353c;
        Objects.requireNonNull(a1Var);
        int iG = a1Var.a(getClass()).g(this);
        this.memoizedHashCode = iG;
        return iG;
    }

    @Override // b7.a
    final void k(int i10) {
        this.memoizedSerializedSize = i10;
    }

    public final <MessageType extends x<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> BuilderType n() {
        return (BuilderType) o(f.NEW_BUILDER);
    }

    public abstract Object o(f fVar);

    public final Object p() {
        return o(f.NEW_MUTABLE_INSTANCE);
    }

    @Override // b7.r0
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public final MessageType b() {
        return (MessageType) o(f.GET_DEFAULT_INSTANCE);
    }

    public final String toString() {
        String string = super.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(string);
        s0.c(this, sb2, 0);
        return sb2.toString();
    }
}
