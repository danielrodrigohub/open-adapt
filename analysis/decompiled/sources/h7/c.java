package h7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import e7.x;
import e7.y;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: DateTypeAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends x<Date> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f8198b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<DateFormat> f8199a;

    /* JADX INFO: compiled from: DateTypeAdapter.java */
    public class a implements y {
        @Override // e7.y
        public final <T> x<T> a(e7.h hVar, l7.a<T> aVar) {
            if (aVar.f10167a == Date.class) {
                return new c();
            }
            return null;
        }
    }

    public c() {
        ArrayList arrayList = new ArrayList();
        this.f8199a = arrayList;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (g7.m.f7817a >= 9) {
            arrayList.add(new SimpleDateFormat("MMM d, yyyy h:mm:ss a", locale));
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<java.text.DateFormat>] */
    @Override // e7.x
    public final Date a(JsonReader jsonReader) throws IOException {
        Date dateB;
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        String strNextString = jsonReader.nextString();
        synchronized (this.f8199a) {
            Iterator it = this.f8199a.iterator();
            while (it.hasNext()) {
                try {
                    dateB = ((DateFormat) it.next()).parse(strNextString);
                } catch (ParseException unused) {
                }
            }
            try {
                dateB = i7.a.b(strNextString, new ParsePosition(0));
            } catch (ParseException e10) {
                StringBuilder sbE = a4.g.e("Failed parsing '", strNextString, "' as Date; at path ");
                sbE.append(jsonReader.getPreviousPath());
                throw new e7.s(sbE.toString(), e10);
            }
        }
        return dateB;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<java.text.DateFormat>] */
    @Override // e7.x
    public final void b(JsonWriter jsonWriter, Date date) throws IOException {
        String str;
        Date date2 = date;
        if (date2 == null) {
            jsonWriter.nullValue();
            return;
        }
        DateFormat dateFormat = (DateFormat) this.f8199a.get(0);
        synchronized (this.f8199a) {
            str = dateFormat.format(date2);
        }
        jsonWriter.value(str);
    }
}
