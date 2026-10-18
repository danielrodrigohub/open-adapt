package g7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import e7.y;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: Excluder.java */
/* JADX INFO: loaded from: classes.dex */
public final class l implements y, Cloneable {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final l f7808j = new l();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List<e7.a> f7809h = Collections.emptyList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List<e7.a> f7810i = Collections.emptyList();

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: Excluder.java */
    public class a<T> extends e7.x<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public e7.x<T> f7811a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean f7812b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f7813c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ e7.h f7814d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ l7.a f7815e;

        public a(boolean z10, boolean z11, e7.h hVar, l7.a aVar) {
            this.f7812b = z10;
            this.f7813c = z11;
            this.f7814d = hVar;
            this.f7815e = aVar;
        }

        @Override // e7.x
        public final T a(JsonReader jsonReader) throws IOException {
            if (this.f7812b) {
                jsonReader.skipValue();
                return null;
            }
            e7.x<T> xVarG = this.f7811a;
            if (xVarG == null) {
                xVarG = this.f7814d.g(l.this, this.f7815e);
                this.f7811a = xVarG;
            }
            return xVarG.a(jsonReader);
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, T t10) throws IOException {
            if (this.f7813c) {
                jsonWriter.nullValue();
                return;
            }
            e7.x<T> xVarG = this.f7811a;
            if (xVarG == null) {
                xVarG = this.f7814d.g(l.this, this.f7815e);
                this.f7811a = xVarG;
            }
            xVarG.b(jsonWriter, t10);
        }
    }

    @Override // e7.y
    public final <T> e7.x<T> a(e7.h hVar, l7.a<T> aVar) {
        Class<? super T> cls = aVar.f10167a;
        boolean zC = c(cls);
        boolean z10 = zC || b(cls, true);
        boolean z11 = zC || b(cls, false);
        if (z10 || z11) {
            return new a(z11, z10, hVar, aVar);
        }
        return null;
    }

    public final boolean b(Class<?> cls, boolean z10) {
        Iterator<e7.a> it = (z10 ? this.f7809h : this.f7810i).iterator();
        while (it.hasNext()) {
            if (it.next().a()) {
                return true;
            }
        }
        return false;
    }

    public final boolean c(Class<?> cls) {
        if (!Enum.class.isAssignableFrom(cls)) {
            if (!((cls.getModifiers() & 8) != 0) && (cls.isAnonymousClass() || cls.isLocalClass())) {
                return true;
            }
        }
        return false;
    }

    public final Object clone() throws CloneNotSupportedException {
        try {
            return (l) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }
}
