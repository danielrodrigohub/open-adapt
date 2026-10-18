package b7;

import java.nio.charset.Charset;

/* JADX INFO: compiled from: ManifestSchemaFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class i0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f3425b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p0 f3426a;

    /* JADX INFO: compiled from: ManifestSchemaFactory.java */
    public class a implements p0 {
        @Override // b7.p0
        public final o0 a(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }

        @Override // b7.p0
        public final boolean b(Class<?> cls) {
            return false;
        }
    }

    /* JADX INFO: compiled from: ManifestSchemaFactory.java */
    public static class b implements p0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public p0[] f3427a;

        public b(p0... p0VarArr) {
            this.f3427a = p0VarArr;
        }

        @Override // b7.p0
        public final o0 a(Class<?> cls) {
            for (p0 p0Var : this.f3427a) {
                if (p0Var.b(cls)) {
                    return p0Var.a(cls);
                }
            }
            StringBuilder sbC = a0.b.c("No factory is available for message type: ");
            sbC.append(cls.getName());
            throw new UnsupportedOperationException(sbC.toString());
        }

        @Override // b7.p0
        public final boolean b(Class<?> cls) {
            for (p0 p0Var : this.f3427a) {
                if (p0Var.b(cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    public i0() {
        p0 p0Var;
        p0[] p0VarArr = new p0[2];
        p0VarArr[0] = w.f3547a;
        try {
            p0Var = (p0) Class.forName("com.google.crypto.tink.shaded.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            p0Var = f3425b;
        }
        p0VarArr[1] = p0Var;
        b bVar = new b(p0VarArr);
        Charset charset = z.f3564a;
        this.f3426a = bVar;
    }
}
