package com.newrelic.com.google.gson.internal.bind;

import com.newrelic.com.google.gson.Gson;
import com.newrelic.com.google.gson.JsonSyntaxException;
import com.newrelic.com.google.gson.TypeAdapter;
import com.newrelic.com.google.gson.TypeAdapterFactory;
import com.newrelic.com.google.gson.reflect.TypeToken;
import com.newrelic.com.google.gson.stream.JsonReader;
import com.newrelic.com.google.gson.stream.JsonToken;
import com.newrelic.com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class DateTypeAdapter extends TypeAdapter<Date> {
    public static final TypeAdapterFactory FACTORY = new TypeAdapterFactory() { // from class: com.newrelic.com.google.gson.internal.bind.DateTypeAdapter.1
        @Override // com.newrelic.com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            if (typeToken.getRawType() == Date.class) {
                return new DateTypeAdapter();
            }
            return null;
        }
    };
    private final DateFormat enUsFormat = DateFormat.getDateTimeInstance(2, 2, Locale.US);
    private final DateFormat localFormat = DateFormat.getDateTimeInstance(2, 2);
    private final DateFormat iso8601Format = buildIso8601Format();

    private static DateFormat buildIso8601Format() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat;
    }

    private synchronized Date deserializeToDate(String str) {
        try {
            try {
                try {
                } catch (ParseException unused) {
                    return this.iso8601Format.parse(str);
                }
            } catch (ParseException e10) {
                throw new JsonSyntaxException(str, e10);
            }
        } catch (ParseException unused2) {
            return this.enUsFormat.parse(str);
        }
        return this.localFormat.parse(str);
    }

    @Override // com.newrelic.com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public Date read2(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() != JsonToken.NULL) {
            return deserializeToDate(jsonReader.nextString());
        }
        jsonReader.nextNull();
        return null;
    }

    @Override // com.newrelic.com.google.gson.TypeAdapter
    public synchronized void write(JsonWriter jsonWriter, Date date) throws IOException {
        try {
            if (date == null) {
                jsonWriter.nullValue();
            } else {
                jsonWriter.value(this.enUsFormat.format(date));
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
