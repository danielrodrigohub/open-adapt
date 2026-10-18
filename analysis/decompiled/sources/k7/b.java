package k7;

import a4.g;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import e7.h;
import e7.s;
import e7.x;
import e7.y;
import java.io.IOException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: compiled from: SqlTimeTypeAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends x<Time> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f9732b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SimpleDateFormat f9733a = new SimpleDateFormat("hh:mm:ss a");

    /* JADX INFO: compiled from: SqlTimeTypeAdapter.java */
    public class a implements y {
        @Override // e7.y
        public final <T> x<T> a(h hVar, l7.a<T> aVar) {
            if (aVar.f10167a == Time.class) {
                return new b();
            }
            return null;
        }
    }

    @Override // e7.x
    public final Time a(JsonReader jsonReader) throws IOException {
        Time time;
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        String strNextString = jsonReader.nextString();
        try {
            synchronized (this) {
                try {
                    time = new Time(this.f9733a.parse(strNextString).getTime());
                } catch (Throwable th) {
                    throw th;
                }
            }
            return time;
        } catch (ParseException e10) {
            StringBuilder sbE = g.e("Failed parsing '", strNextString, "' as SQL Time; at path ");
            sbE.append(jsonReader.getPreviousPath());
            throw new s(sbE.toString(), e10);
        }
    }

    @Override // e7.x
    public final void b(JsonWriter jsonWriter, Time time) throws IOException {
        String str;
        Time time2 = time;
        if (time2 == null) {
            jsonWriter.nullValue();
            return;
        }
        synchronized (this) {
            str = this.f9733a.format((Date) time2);
        }
        jsonWriter.value(str);
    }
}
