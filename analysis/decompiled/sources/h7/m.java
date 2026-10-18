package h7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import e7.x;
import java.io.IOException;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: ReflectiveTypeAdapterFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class m extends n.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f8227d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Field f8228e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f8229f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ x f8230g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ e7.h f8231h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ l7.a f8232i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f8233j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(String str, boolean z10, boolean z11, boolean z12, Field field, boolean z13, x xVar, e7.h hVar, l7.a aVar, boolean z14) {
        super(str, z10, z11);
        this.f8227d = z12;
        this.f8228e = field;
        this.f8229f = z13;
        this.f8230g = xVar;
        this.f8231h = hVar;
        this.f8232i = aVar;
        this.f8233j = z14;
    }

    @Override // h7.n.b
    public final void a(JsonReader jsonReader, Object obj) throws IllegalAccessException, IOException {
        Object objA = this.f8230g.a(jsonReader);
        if (objA == null && this.f8233j) {
            return;
        }
        if (this.f8227d) {
            n.b(obj, this.f8228e);
        }
        this.f8228e.set(obj, objA);
    }

    @Override // h7.n.b
    public final void b(JsonWriter jsonWriter, Object obj) throws IllegalAccessException, IOException {
        if (this.f8242b) {
            if (this.f8227d) {
                n.b(obj, this.f8228e);
            }
            Object obj2 = this.f8228e.get(obj);
            if (obj2 == obj) {
                return;
            }
            jsonWriter.name(this.f8241a);
            (this.f8229f ? this.f8230g : new p(this.f8231h, this.f8230g, this.f8232i.f10168b)).b(jsonWriter, obj2);
        }
    }
}
