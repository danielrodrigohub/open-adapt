package h7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import e7.x;
import e7.y;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: ReflectiveTypeAdapterFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class n implements y {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final g7.e f8234h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final e7.c f8235i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final g7.l f8236j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final e f8237k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final List<e7.t> f8238l;

    /* JADX INFO: compiled from: ReflectiveTypeAdapterFactory.java */
    public static final class a<T> extends x<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final g7.q<T> f8239a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map<String, b> f8240b;

        public a(g7.q<T> qVar, Map<String, b> map) {
            this.f8239a = qVar;
            this.f8240b = map;
        }

        @Override // e7.x
        public final T a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            T tConstruct = this.f8239a.construct();
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    b bVar = this.f8240b.get(jsonReader.nextName());
                    if (bVar == null || !bVar.f8243c) {
                        jsonReader.skipValue();
                    } else {
                        bVar.a(jsonReader, tConstruct);
                    }
                }
                jsonReader.endObject();
                return tConstruct;
            } catch (IllegalAccessException e10) {
                j7.a.a(e10);
                throw null;
            } catch (IllegalStateException e11) {
                throw new e7.s(e11);
            }
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, T t10) throws IOException {
            if (t10 == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                Iterator<b> it = this.f8240b.values().iterator();
                while (it.hasNext()) {
                    it.next().b(jsonWriter, t10);
                }
                jsonWriter.endObject();
            } catch (IllegalAccessException e10) {
                j7.a.a(e10);
                throw null;
            }
        }
    }

    /* JADX INFO: compiled from: ReflectiveTypeAdapterFactory.java */
    public static abstract class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f8241a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f8242b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f8243c;

        public b(String str, boolean z10, boolean z11) {
            this.f8241a = str;
            this.f8242b = z10;
            this.f8243c = z11;
        }

        public abstract void a(JsonReader jsonReader, Object obj) throws IllegalAccessException, IOException;

        public abstract void b(JsonWriter jsonWriter, Object obj) throws IllegalAccessException, IOException;
    }

    public n(g7.e eVar, g7.l lVar, e eVar2, List list) {
        e7.b.a aVar = e7.b.f6514h;
        this.f8234h = eVar;
        this.f8235i = aVar;
        this.f8236j = lVar;
        this.f8237k = eVar2;
        this.f8238l = list;
    }

    public static void b(Object obj, Field field) {
        if (Modifier.isStatic(field.getModifiers())) {
            obj = null;
        }
        if (g7.r.a.f7841a.a(field, obj)) {
            return;
        }
        StringBuilder sbC = a0.b.c("Field '");
        sbC.append(field.getDeclaringClass().getName());
        sbC.append("#");
        sbC.append(field.getName());
        sbC.append("' is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type or adjust the access filter.");
        throw new e7.m(sbC.toString());
    }

    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:43)
        */
    @Override // e7.y
    public final <T> e7.x<T> a(
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r38v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:215)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:150)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:415)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
        */
    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        */

    public final boolean c(Field field, boolean z10) {
        boolean z11;
        g7.l lVar = this.f8236j;
        Class<?> type = field.getType();
        if (lVar.c(type) || lVar.b(type, z10)) {
            return false;
        }
        g7.l lVar2 = this.f8236j;
        Objects.requireNonNull(lVar2);
        if ((field.getModifiers() & 136) != 0 || field.isSynthetic() || lVar2.c(field.getType())) {
            z11 = true;
        } else {
            List<e7.a> list = z10 ? lVar2.f7809h : lVar2.f7810i;
            if (!list.isEmpty()) {
                Objects.requireNonNull(field);
                Iterator<e7.a> it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().b()) {
                            z11 = true;
                        }
                    }
                }
            }
            z11 = false;
        }
        return !z11;
    }
}
