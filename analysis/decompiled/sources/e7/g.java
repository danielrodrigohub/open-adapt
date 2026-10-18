package e7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: compiled from: Gson.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends x<AtomicLongArray> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f6523a;

    public g(x xVar) {
        this.f6523a = xVar;
    }

    @Override // e7.x
    public final AtomicLongArray a(JsonReader jsonReader) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(Long.valueOf(((Number) this.f6523a.a(jsonReader)).longValue()));
        }
        jsonReader.endArray();
        int size = arrayList.size();
        AtomicLongArray atomicLongArray = new AtomicLongArray(size);
        for (int i10 = 0; i10 < size; i10++) {
            atomicLongArray.set(i10, ((Long) arrayList.get(i10)).longValue());
        }
        return atomicLongArray;
    }

    @Override // e7.x
    public final void b(JsonWriter jsonWriter, AtomicLongArray atomicLongArray) throws IOException {
        AtomicLongArray atomicLongArray2 = atomicLongArray;
        jsonWriter.beginArray();
        int length = atomicLongArray2.length();
        for (int i10 = 0; i10 < length; i10++) {
            this.f6523a.b(jsonWriter, Long.valueOf(atomicLongArray2.get(i10)));
        }
        jsonWriter.endArray();
    }
}
