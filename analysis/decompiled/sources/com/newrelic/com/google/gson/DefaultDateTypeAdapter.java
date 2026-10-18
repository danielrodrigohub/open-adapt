package com.newrelic.com.google.gson;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
final class DefaultDateTypeAdapter implements JsonSerializer<Date>, JsonDeserializer<Date> {
    private final DateFormat enUsFormat;
    private final DateFormat iso8601Format;
    private final DateFormat localFormat;

    public DefaultDateTypeAdapter() {
        this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
    }

    private Date deserializeToDate(JsonElement jsonElement) {
        Date date;
        synchronized (this.localFormat) {
            try {
                try {
                    try {
                        date = this.localFormat.parse(jsonElement.getAsString());
                    } catch (ParseException unused) {
                        return this.enUsFormat.parse(jsonElement.getAsString());
                    }
                } catch (ParseException e10) {
                    throw new JsonSyntaxException(jsonElement.getAsString(), e10);
                }
            } catch (ParseException unused2) {
                return this.iso8601Format.parse(jsonElement.getAsString());
            }
        }
        return date;
    }

    public String toString() {
        return "DefaultDateTypeAdapter(" + this.localFormat.getClass().getSimpleName() + ')';
    }

    public DefaultDateTypeAdapter(String str) {
        this(new SimpleDateFormat(str, Locale.US), new SimpleDateFormat(str));
    }

    @Override // com.newrelic.com.google.gson.JsonDeserializer
    public Date deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        if (!(jsonElement instanceof JsonPrimitive)) {
            throw new JsonParseException("The date should be a string value");
        }
        Date dateDeserializeToDate = deserializeToDate(jsonElement);
        if (type == Date.class) {
            return dateDeserializeToDate;
        }
        if (type == Timestamp.class) {
            return new Timestamp(dateDeserializeToDate.getTime());
        }
        if (type == java.sql.Date.class) {
            return new java.sql.Date(dateDeserializeToDate.getTime());
        }
        throw new IllegalArgumentException(DefaultDateTypeAdapter.class + " cannot deserialize to " + type);
    }

    @Override // com.newrelic.com.google.gson.JsonSerializer
    public JsonElement serialize(Date date, Type type, JsonSerializationContext jsonSerializationContext) {
        JsonPrimitive jsonPrimitive;
        synchronized (this.localFormat) {
            jsonPrimitive = new JsonPrimitive(this.enUsFormat.format(date));
        }
        return jsonPrimitive;
    }

    public DefaultDateTypeAdapter(int i10) {
        this(DateFormat.getDateInstance(i10, Locale.US), DateFormat.getDateInstance(i10));
    }

    public DefaultDateTypeAdapter(int i10, int i11) {
        this(DateFormat.getDateTimeInstance(i10, i11, Locale.US), DateFormat.getDateTimeInstance(i10, i11));
    }

    public DefaultDateTypeAdapter(DateFormat dateFormat, DateFormat dateFormat2) {
        this.enUsFormat = dateFormat;
        this.localFormat = dateFormat2;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        this.iso8601Format = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    }
}
