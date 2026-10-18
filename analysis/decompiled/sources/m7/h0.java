package m7;

import java.nio.charset.Charset;

/* JADX INFO: compiled from: ManifestSchemaFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class h0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f10663b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o0 f10664a;

    /* JADX INFO: compiled from: ManifestSchemaFactory.java */
    public static class a implements o0 {
        @Override // m7.o0
        public final n0 a(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }

        @Override // m7.o0
        public final boolean b(Class<?> cls) {
            return false;
        }
    }

    /* JADX INFO: compiled from: ManifestSchemaFactory.java */
    public static class b implements o0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public o0[] f10665a;

        public b(o0... o0VarArr) {
            this.f10665a = o0VarArr;
        }

        @Override // m7.o0
        public final n0 a(Class<?> cls) {
            for (o0 o0Var : this.f10665a) {
                if (o0Var.b(cls)) {
                    return o0Var.a(cls);
                }
            }
            StringBuilder sbC = a0.b.c("No factory is available for message type: ");
            sbC.append(cls.getName());
            throw new UnsupportedOperationException(sbC.toString());
        }

        @Override // m7.o0
        public final boolean b(Class<?> cls) {
            for (o0 o0Var : this.f10665a) {
                if (o0Var.b(cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    public h0() {
        o0 o0Var;
        o0[] o0VarArr = new o0[2];
        o0VarArr[0] = v.f10783a;
        try {
            o0Var = (o0) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            o0Var = f10663b;
        }
        o0VarArr[1] = o0Var;
        b bVar = new b(o0VarArr);
        Charset charset = y.f10801a;
        this.f10664a = bVar;
    }
}
