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
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* JADX INFO: compiled from: SqlDateTypeAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends x<Date> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0187a f9730b = new C0187a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SimpleDateFormat f9731a = new SimpleDateFormat("MMM d, yyyy");

    /* JADX INFO: renamed from: k7.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SqlDateTypeAdapter.java */
    public class C0187a implements y {
        @Override // e7.y
        public final <T> x<T> a(h hVar, l7.a<T> aVar) {
            if (aVar.f10167a == Date.class) {
                return new a();
            }
            return null;
        }
    }

    @Override // e7.x
    public final Date a(JsonReader jsonReader) throws IOException {
        java.util.Date date;
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        String strNextString = jsonReader.nextString();
        try {
            synchronized (this) {
                date = this.f9731a.parse(strNextString);
            }
            return new Date(date.getTime());
        } catch (ParseException e10) {
            StringBuilder sbE = g.e("Failed parsing '", strNextString, "' as SQL Date; at path ");
            sbE.append(jsonReader.getPreviousPath());
            throw new s(sbE.toString(), e10);
        }
    }

    @Override // e7.x
    public final void b(JsonWriter jsonWriter, Date date) throws IOException {
        String str;
        Date date2 = date;
        if (date2 == null) {
            jsonWriter.nullValue();
            return;
        }
        synchronized (this) {
            str = this.f9731a.format((java.util.Date) date2);
        }
        jsonWriter.value(str);
    }
}
