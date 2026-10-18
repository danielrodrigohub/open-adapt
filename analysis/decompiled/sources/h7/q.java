package h7;

import androidx.appcompat.widget.y0;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.ConcurrentModificationException;
import java.util.Currency;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* JADX INFO: compiled from: TypeAdapters.java */
/* JADX INFO: loaded from: classes.dex */
public final class q {
    public static final e7.x<BigInteger> A;
    public static final e7.x<g7.o> B;
    public static final h7.r C;
    public static final e7.x<StringBuilder> D;
    public static final h7.r E;
    public static final e7.x<StringBuffer> F;
    public static final h7.r G;
    public static final e7.x<URL> H;
    public static final h7.r I;
    public static final e7.x<URI> J;
    public static final h7.r K;
    public static final e7.x<InetAddress> L;
    public static final h7.u M;
    public static final e7.x<UUID> N;
    public static final h7.r O;
    public static final e7.x<Currency> P;
    public static final h7.r Q;
    public static final e7.x<Calendar> R;
    public static final h7.t S;
    public static final e7.x<Locale> T;
    public static final h7.r U;
    public static final e7.x<e7.l> V;
    public static final h7.u W;
    public static final u X;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e7.x<Class> f8253a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final h7.r f8254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e7.x<BitSet> f8255c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final h7.r f8256d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final e7.x<Boolean> f8257e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final e7.x<Boolean> f8258f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final h7.s f8259g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final e7.x<Number> f8260h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final h7.s f8261i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final e7.x<Number> f8262j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final h7.s f8263k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final e7.x<Number> f8264l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final h7.s f8265m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final e7.x<AtomicInteger> f8266n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final h7.r f8267o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final e7.x<AtomicBoolean> f8268p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final h7.r f8269q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final e7.x<AtomicIntegerArray> f8270r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final h7.r f8271s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final e7.x<Number> f8272t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final e7.x<Number> f8273u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final e7.x<Number> f8274v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final e7.x<Character> f8275w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final h7.s f8276x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final e7.x<String> f8277y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final e7.x<BigDecimal> f8278z;

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class a extends e7.x<AtomicIntegerArray> {
        @Override // e7.x
        public final AtomicIntegerArray a(JsonReader jsonReader) throws IOException {
            ArrayList arrayList = new ArrayList();
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                try {
                    arrayList.add(Integer.valueOf(jsonReader.nextInt()));
                } catch (NumberFormatException e10) {
                    throw new e7.s(e10);
                }
            }
            jsonReader.endArray();
            int size = arrayList.size();
            AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
            for (int i10 = 0; i10 < size; i10++) {
                atomicIntegerArray.set(i10, ((Integer) arrayList.get(i10)).intValue());
            }
            return atomicIntegerArray;
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, AtomicIntegerArray atomicIntegerArray) throws IOException {
            AtomicIntegerArray atomicIntegerArray2 = atomicIntegerArray;
            jsonWriter.beginArray();
            int length = atomicIntegerArray2.length();
            for (int i10 = 0; i10 < length; i10++) {
                jsonWriter.value(atomicIntegerArray2.get(i10));
            }
            jsonWriter.endArray();
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class a0 extends e7.x<Number> {
        @Override // e7.x
        public final Number a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                int iNextInt = jsonReader.nextInt();
                if (iNextInt <= 65535 && iNextInt >= -32768) {
                    return Short.valueOf((short) iNextInt);
                }
                StringBuilder sbC = y0.c("Lossy conversion from ", iNextInt, " to short; at path ");
                sbC.append(jsonReader.getPreviousPath());
                throw new e7.s(sbC.toString());
            } catch (NumberFormatException e10) {
                throw new e7.s(e10);
            }
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class b extends e7.x<Number> {
        @Override // e7.x
        public final Number a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return Long.valueOf(jsonReader.nextLong());
            } catch (NumberFormatException e10) {
                throw new e7.s(e10);
            }
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class b0 extends e7.x<Number> {
        @Override // e7.x
        public final Number a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return Integer.valueOf(jsonReader.nextInt());
            } catch (NumberFormatException e10) {
                throw new e7.s(e10);
            }
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class c extends e7.x<Number> {
        @Override // e7.x
        public final Number a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Float.valueOf((float) jsonReader.nextDouble());
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class c0 extends e7.x<AtomicInteger> {
        @Override // e7.x
        public final AtomicInteger a(JsonReader jsonReader) throws IOException {
            try {
                return new AtomicInteger(jsonReader.nextInt());
            } catch (NumberFormatException e10) {
                throw new e7.s(e10);
            }
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, AtomicInteger atomicInteger) throws IOException {
            jsonWriter.value(atomicInteger.get());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class d extends e7.x<Number> {
        @Override // e7.x
        public final Number a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Double.valueOf(jsonReader.nextDouble());
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class d0 extends e7.x<AtomicBoolean> {
        @Override // e7.x
        public final AtomicBoolean a(JsonReader jsonReader) throws IOException {
            return new AtomicBoolean(jsonReader.nextBoolean());
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, AtomicBoolean atomicBoolean) throws IOException {
            jsonWriter.value(atomicBoolean.get());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class e extends e7.x<Character> {
        @Override // e7.x
        public final Character a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            String strNextString = jsonReader.nextString();
            if (strNextString.length() == 1) {
                return Character.valueOf(strNextString.charAt(0));
            }
            StringBuilder sbE = a4.g.e("Expecting character, got: ", strNextString, "; at ");
            sbE.append(jsonReader.getPreviousPath());
            throw new e7.s(sbE.toString());
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, Character ch) throws IOException {
            Character ch2 = ch;
            jsonWriter.value(ch2 == null ? null : String.valueOf(ch2));
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static final class e0<T extends Enum<T>> extends e7.x<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Map<String, T> f8279a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Map<String, T> f8280b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Map<T, String> f8281c = new HashMap();

        /* JADX INFO: compiled from: TypeAdapters.java */
        public class a implements PrivilegedAction<Field[]> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Class f8282a;

            public a(Class cls) {
                this.f8282a = cls;
            }

            @Override // java.security.PrivilegedAction
            public final Field[] run() {
                Field[] declaredFields = this.f8282a.getDeclaredFields();
                ArrayList arrayList = new ArrayList(declaredFields.length);
                for (Field field : declaredFields) {
                    if (field.isEnumConstant()) {
                        arrayList.add(field);
                    }
                }
                Field[] fieldArr = (Field[]) arrayList.toArray(new Field[0]);
                AccessibleObject.setAccessible(fieldArr, true);
                return fieldArr;
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public e0(Class<T> cls) {
            try {
                for (Field field : (Field[]) AccessController.doPrivileged(new a(cls))) {
                    Enum r10 = (Enum) field.get(null);
                    String strName = r10.name();
                    String string = r10.toString();
                    f7.b bVar = (f7.b) field.getAnnotation(f7.b.class);
                    if (bVar != null) {
                        strName = bVar.value();
                        for (String str : bVar.alternate()) {
                            this.f8279a.put(str, (T) r10);
                        }
                    }
                    this.f8279a.put(strName, (T) r10);
                    this.f8280b.put(string, (T) r10);
                    this.f8281c.put((T) r10, strName);
                }
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override // e7.x
        public final Object a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            String strNextString = jsonReader.nextString();
            Enum r10 = (Enum) this.f8279a.get(strNextString);
            return r10 == null ? (Enum) this.f8280b.get(strNextString) : r10;
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, Object obj) throws IOException {
            Enum r10 = (Enum) obj;
            jsonWriter.value(r10 == null ? null : (String) this.f8281c.get(r10));
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class f extends e7.x<String> {
        @Override // e7.x
        public final String a(JsonReader jsonReader) throws IOException {
            JsonToken jsonTokenPeek = jsonReader.peek();
            if (jsonTokenPeek != JsonToken.NULL) {
                return jsonTokenPeek == JsonToken.BOOLEAN ? Boolean.toString(jsonReader.nextBoolean()) : jsonReader.nextString();
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, String str) throws IOException {
            jsonWriter.value(str);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class g extends e7.x<BigDecimal> {
        @Override // e7.x
        public final BigDecimal a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            String strNextString = jsonReader.nextString();
            try {
                return new BigDecimal(strNextString);
            } catch (NumberFormatException e10) {
                StringBuilder sbE = a4.g.e("Failed parsing '", strNextString, "' as BigDecimal; at path ");
                sbE.append(jsonReader.getPreviousPath());
                throw new e7.s(sbE.toString(), e10);
            }
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, BigDecimal bigDecimal) throws IOException {
            jsonWriter.value(bigDecimal);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class h extends e7.x<BigInteger> {
        @Override // e7.x
        public final BigInteger a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            String strNextString = jsonReader.nextString();
            try {
                return new BigInteger(strNextString);
            } catch (NumberFormatException e10) {
                StringBuilder sbE = a4.g.e("Failed parsing '", strNextString, "' as BigInteger; at path ");
                sbE.append(jsonReader.getPreviousPath());
                throw new e7.s(sbE.toString(), e10);
            }
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, BigInteger bigInteger) throws IOException {
            jsonWriter.value(bigInteger);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class i extends e7.x<g7.o> {
        @Override // e7.x
        public final g7.o a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return new g7.o(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, g7.o oVar) throws IOException {
            jsonWriter.value(oVar);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class j extends e7.x<StringBuilder> {
        @Override // e7.x
        public final StringBuilder a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return new StringBuilder(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, StringBuilder sb2) throws IOException {
            StringBuilder sb3 = sb2;
            jsonWriter.value(sb3 == null ? null : sb3.toString());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class k extends e7.x<Class> {
        @Override // e7.x
        public final Class a(JsonReader jsonReader) throws IOException {
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, Class cls) throws IOException {
            StringBuilder sbC = a0.b.c("Attempted to serialize java.lang.Class: ");
            sbC.append(cls.getName());
            sbC.append(". Forgot to register a type adapter?");
            throw new UnsupportedOperationException(sbC.toString());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class l extends e7.x<StringBuffer> {
        @Override // e7.x
        public final StringBuffer a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return new StringBuffer(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, StringBuffer stringBuffer) throws IOException {
            StringBuffer stringBuffer2 = stringBuffer;
            jsonWriter.value(stringBuffer2 == null ? null : stringBuffer2.toString());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class m extends e7.x<URL> {
        @Override // e7.x
        public final URL a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            String strNextString = jsonReader.nextString();
            if (SafeJsonPrimitive.NULL_STRING.equals(strNextString)) {
                return null;
            }
            return new URL(strNextString);
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, URL url) throws IOException {
            URL url2 = url;
            jsonWriter.value(url2 == null ? null : url2.toExternalForm());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class n extends e7.x<URI> {
        @Override // e7.x
        public final URI a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                String strNextString = jsonReader.nextString();
                if (SafeJsonPrimitive.NULL_STRING.equals(strNextString)) {
                    return null;
                }
                return new URI(strNextString);
            } catch (URISyntaxException e10) {
                throw new e7.m(e10);
            }
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, URI uri) throws IOException {
            URI uri2 = uri;
            jsonWriter.value(uri2 == null ? null : uri2.toASCIIString());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class o extends e7.x<InetAddress> {
        @Override // e7.x
        public final InetAddress a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return InetAddress.getByName(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, InetAddress inetAddress) throws IOException {
            InetAddress inetAddress2 = inetAddress;
            jsonWriter.value(inetAddress2 == null ? null : inetAddress2.getHostAddress());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class p extends e7.x<UUID> {
        @Override // e7.x
        public final UUID a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            String strNextString = jsonReader.nextString();
            try {
                return UUID.fromString(strNextString);
            } catch (IllegalArgumentException e10) {
                StringBuilder sbE = a4.g.e("Failed parsing '", strNextString, "' as UUID; at path ");
                sbE.append(jsonReader.getPreviousPath());
                throw new e7.s(sbE.toString(), e10);
            }
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, UUID uuid) throws IOException {
            UUID uuid2 = uuid;
            jsonWriter.value(uuid2 == null ? null : uuid2.toString());
        }
    }

    /* JADX INFO: renamed from: h7.q$q, reason: collision with other inner class name */
    /* JADX INFO: compiled from: TypeAdapters.java */
    public class C0166q extends e7.x<Currency> {
        @Override // e7.x
        public final Currency a(JsonReader jsonReader) throws IOException {
            String strNextString = jsonReader.nextString();
            try {
                return Currency.getInstance(strNextString);
            } catch (IllegalArgumentException e10) {
                StringBuilder sbE = a4.g.e("Failed parsing '", strNextString, "' as Currency; at path ");
                sbE.append(jsonReader.getPreviousPath());
                throw new e7.s(sbE.toString(), e10);
            }
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, Currency currency) throws IOException {
            jsonWriter.value(currency.getCurrencyCode());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class r extends e7.x<Calendar> {
        @Override // e7.x
        public final Calendar a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            while (jsonReader.peek() != JsonToken.END_OBJECT) {
                String strNextName = jsonReader.nextName();
                int iNextInt = jsonReader.nextInt();
                if ("year".equals(strNextName)) {
                    i10 = iNextInt;
                } else if ("month".equals(strNextName)) {
                    i11 = iNextInt;
                } else if ("dayOfMonth".equals(strNextName)) {
                    i12 = iNextInt;
                } else if ("hourOfDay".equals(strNextName)) {
                    i13 = iNextInt;
                } else if ("minute".equals(strNextName)) {
                    i14 = iNextInt;
                } else if ("second".equals(strNextName)) {
                    i15 = iNextInt;
                }
            }
            jsonReader.endObject();
            return new GregorianCalendar(i10, i11, i12, i13, i14, i15);
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, Calendar calendar) throws IOException {
            Calendar calendar2 = calendar;
            if (calendar2 == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("year");
            jsonWriter.value(calendar2.get(1));
            jsonWriter.name("month");
            jsonWriter.value(calendar2.get(2));
            jsonWriter.name("dayOfMonth");
            jsonWriter.value(calendar2.get(5));
            jsonWriter.name("hourOfDay");
            jsonWriter.value(calendar2.get(11));
            jsonWriter.name("minute");
            jsonWriter.value(calendar2.get(12));
            jsonWriter.name("second");
            jsonWriter.value(calendar2.get(13));
            jsonWriter.endObject();
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class s extends e7.x<Locale> {
        @Override // e7.x
        public final Locale a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(jsonReader.nextString(), "_");
            String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            if (strNextToken2 == null && strNextToken3 == null) {
                return new Locale(strNextToken);
            }
            return strNextToken3 == null ? new Locale(strNextToken, strNextToken2) : new Locale(strNextToken, strNextToken2, strNextToken3);
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, Locale locale) throws IOException {
            Locale locale2 = locale;
            jsonWriter.value(locale2 == null ? null : locale2.toString());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class t extends e7.x<e7.l> {
        /* JADX WARN: Type inference failed for: r2v5, types: [java.util.ArrayList, java.util.List<e7.l>] */
        @Override // e7.x
        public final e7.l a(JsonReader jsonReader) throws IOException {
            if (jsonReader instanceof h7.f) {
                h7.f fVar = (h7.f) jsonReader;
                JsonToken jsonTokenPeek = fVar.peek();
                if (jsonTokenPeek != JsonToken.NAME && jsonTokenPeek != JsonToken.END_ARRAY && jsonTokenPeek != JsonToken.END_OBJECT && jsonTokenPeek != JsonToken.END_DOCUMENT) {
                    e7.l lVar = (e7.l) fVar.Y();
                    fVar.skipValue();
                    return lVar;
                }
                throw new IllegalStateException("Unexpected " + jsonTokenPeek + " when reading a JsonElement.");
            }
            JsonToken jsonTokenPeek2 = jsonReader.peek();
            e7.l lVarD = d(jsonReader, jsonTokenPeek2);
            if (lVarD == null) {
                return c(jsonReader, jsonTokenPeek2);
            }
            ArrayDeque arrayDeque = new ArrayDeque();
            while (true) {
                if (jsonReader.hasNext()) {
                    String strNextName = lVarD instanceof e7.o ? jsonReader.nextName() : null;
                    JsonToken jsonTokenPeek3 = jsonReader.peek();
                    e7.l lVarD2 = d(jsonReader, jsonTokenPeek3);
                    boolean z10 = lVarD2 != null;
                    if (lVarD2 == null) {
                        lVarD2 = c(jsonReader, jsonTokenPeek3);
                    }
                    if (lVarD instanceof e7.j) {
                        ((e7.j) lVarD).f6540h.add(lVarD2);
                    } else {
                        ((e7.o) lVarD).f6542a.put(strNextName, lVarD2);
                    }
                    if (z10) {
                        arrayDeque.addLast(lVarD);
                        lVarD = lVarD2;
                    }
                } else {
                    if (lVarD instanceof e7.j) {
                        jsonReader.endArray();
                    } else {
                        jsonReader.endObject();
                    }
                    if (arrayDeque.isEmpty()) {
                        return lVarD;
                    }
                    lVarD = (e7.l) arrayDeque.removeLast();
                }
            }
        }

        public final e7.l c(JsonReader jsonReader, JsonToken jsonToken) throws IOException {
            int i10 = w.f8283a[jsonToken.ordinal()];
            if (i10 == 1) {
                return new e7.q(new g7.o(jsonReader.nextString()));
            }
            if (i10 == 2) {
                return new e7.q(jsonReader.nextString());
            }
            if (i10 == 3) {
                return new e7.q(Boolean.valueOf(jsonReader.nextBoolean()));
            }
            if (i10 == 6) {
                jsonReader.nextNull();
                return e7.n.f6541a;
            }
            throw new IllegalStateException("Unexpected token: " + jsonToken);
        }

        public final e7.l d(JsonReader jsonReader, JsonToken jsonToken) throws IOException {
            int i10 = w.f8283a[jsonToken.ordinal()];
            if (i10 == 4) {
                jsonReader.beginArray();
                return new e7.j();
            }
            if (i10 != 5) {
                return null;
            }
            jsonReader.beginObject();
            return new e7.o();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // e7.x
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public final void b(JsonWriter jsonWriter, e7.l lVar) throws IOException {
            if (lVar == null || (lVar instanceof e7.n)) {
                jsonWriter.nullValue();
                return;
            }
            if (lVar instanceof e7.q) {
                e7.q qVarH = lVar.h();
                Serializable serializable = qVarH.f6543a;
                if (serializable instanceof Number) {
                    jsonWriter.value(qVarH.l());
                    return;
                } else if (serializable instanceof Boolean) {
                    jsonWriter.value(qVarH.k());
                    return;
                } else {
                    jsonWriter.value(qVarH.m());
                    return;
                }
            }
            boolean z10 = lVar instanceof e7.j;
            if (z10) {
                jsonWriter.beginArray();
                if (!z10) {
                    throw new IllegalStateException("Not a JSON Array: " + lVar);
                }
                Iterator<e7.l> it = ((e7.j) lVar).iterator();
                while (it.hasNext()) {
                    b(jsonWriter, it.next());
                }
                jsonWriter.endArray();
                return;
            }
            boolean z11 = lVar instanceof e7.o;
            if (!z11) {
                StringBuilder sbC = a0.b.c("Couldn't write ");
                sbC.append(lVar.getClass());
                throw new IllegalArgumentException(sbC.toString());
            }
            jsonWriter.beginObject();
            if (!z11) {
                throw new IllegalStateException("Not a JSON Object: " + lVar);
            }
            g7.p pVar = g7.p.this;
            g7.p.e eVar = pVar.f7824l.f7836k;
            int i10 = pVar.f7823k;
            while (true) {
                g7.p.e eVar2 = pVar.f7824l;
                if (!(eVar != eVar2)) {
                    jsonWriter.endObject();
                    return;
                }
                if (eVar == eVar2) {
                    throw new NoSuchElementException();
                }
                if (pVar.f7823k != i10) {
                    throw new ConcurrentModificationException();
                }
                g7.p.e eVar3 = eVar.f7836k;
                jsonWriter.name((String) eVar.f7838m);
                b(jsonWriter, (e7.l) eVar.f7839n);
                eVar = eVar3;
            }
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class u implements e7.y {
        @Override // e7.y
        public final <T> e7.x<T> a(e7.h hVar, l7.a<T> aVar) {
            Class<? super T> superclass = aVar.f10167a;
            if (!Enum.class.isAssignableFrom(superclass) || superclass == Enum.class) {
                return null;
            }
            if (!superclass.isEnum()) {
                superclass = superclass.getSuperclass();
            }
            return new e0(superclass);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class v extends e7.x<BitSet> {
        @Override // e7.x
        public final BitSet a(JsonReader jsonReader) throws IOException {
            BitSet bitSet = new BitSet();
            jsonReader.beginArray();
            JsonToken jsonTokenPeek = jsonReader.peek();
            int i10 = 0;
            while (jsonTokenPeek != JsonToken.END_ARRAY) {
                int i11 = w.f8283a[jsonTokenPeek.ordinal()];
                boolean zNextBoolean = true;
                if (i11 == 1 || i11 == 2) {
                    int iNextInt = jsonReader.nextInt();
                    if (iNextInt == 0) {
                        zNextBoolean = false;
                    } else if (iNextInt != 1) {
                        StringBuilder sbC = y0.c("Invalid bitset value ", iNextInt, ", expected 0 or 1; at path ");
                        sbC.append(jsonReader.getPreviousPath());
                        throw new e7.s(sbC.toString());
                    }
                } else {
                    if (i11 != 3) {
                        throw new e7.s("Invalid bitset value type: " + jsonTokenPeek + "; at path " + jsonReader.getPath());
                    }
                    zNextBoolean = jsonReader.nextBoolean();
                }
                if (zNextBoolean) {
                    bitSet.set(i10);
                }
                i10++;
                jsonTokenPeek = jsonReader.peek();
            }
            jsonReader.endArray();
            return bitSet;
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, BitSet bitSet) throws IOException {
            BitSet bitSet2 = bitSet;
            jsonWriter.beginArray();
            int length = bitSet2.length();
            for (int i10 = 0; i10 < length; i10++) {
                jsonWriter.value(bitSet2.get(i10) ? 1L : 0L);
            }
            jsonWriter.endArray();
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static /* synthetic */ class w {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8283a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f8283a = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8283a[JsonToken.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8283a[JsonToken.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8283a[JsonToken.BEGIN_ARRAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8283a[JsonToken.BEGIN_OBJECT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8283a[JsonToken.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class x extends e7.x<Boolean> {
        @Override // e7.x
        public final Boolean a(JsonReader jsonReader) throws IOException {
            JsonToken jsonTokenPeek = jsonReader.peek();
            if (jsonTokenPeek != JsonToken.NULL) {
                return jsonTokenPeek == JsonToken.STRING ? Boolean.valueOf(Boolean.parseBoolean(jsonReader.nextString())) : Boolean.valueOf(jsonReader.nextBoolean());
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, Boolean bool) throws IOException {
            jsonWriter.value(bool);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class y extends e7.x<Boolean> {
        @Override // e7.x
        public final Boolean a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Boolean.valueOf(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, Boolean bool) throws IOException {
            Boolean bool2 = bool;
            jsonWriter.value(bool2 == null ? SafeJsonPrimitive.NULL_STRING : bool2.toString());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public class z extends e7.x<Number> {
        @Override // e7.x
        public final Number a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                int iNextInt = jsonReader.nextInt();
                if (iNextInt <= 255 && iNextInt >= -128) {
                    return Byte.valueOf((byte) iNextInt);
                }
                StringBuilder sbC = y0.c("Lossy conversion from ", iNextInt, " to byte; at path ");
                sbC.append(jsonReader.getPreviousPath());
                throw new e7.s(sbC.toString());
            } catch (NumberFormatException e10) {
                throw new e7.s(e10);
            }
        }

        @Override // e7.x
        public final void b(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    }

    static {
        e7.w wVar = new e7.w(new k());
        f8253a = wVar;
        f8254b = new h7.r(Class.class, wVar);
        e7.w wVar2 = new e7.w(new v());
        f8255c = wVar2;
        f8256d = new h7.r(BitSet.class, wVar2);
        x xVar = new x();
        f8257e = xVar;
        f8258f = new y();
        f8259g = new h7.s(Boolean.TYPE, Boolean.class, xVar);
        z zVar = new z();
        f8260h = zVar;
        f8261i = new h7.s(Byte.TYPE, Byte.class, zVar);
        a0 a0Var = new a0();
        f8262j = a0Var;
        f8263k = new h7.s(Short.TYPE, Short.class, a0Var);
        b0 b0Var = new b0();
        f8264l = b0Var;
        f8265m = new h7.s(Integer.TYPE, Integer.class, b0Var);
        e7.w wVar3 = new e7.w(new c0());
        f8266n = wVar3;
        f8267o = new h7.r(AtomicInteger.class, wVar3);
        e7.w wVar4 = new e7.w(new d0());
        f8268p = wVar4;
        f8269q = new h7.r(AtomicBoolean.class, wVar4);
        e7.w wVar5 = new e7.w(new a());
        f8270r = wVar5;
        f8271s = new h7.r(AtomicIntegerArray.class, wVar5);
        f8272t = new b();
        f8273u = new c();
        f8274v = new d();
        e eVar = new e();
        f8275w = eVar;
        f8276x = new h7.s(Character.TYPE, Character.class, eVar);
        f fVar = new f();
        f8277y = fVar;
        f8278z = new g();
        A = new h();
        B = new i();
        C = new h7.r(String.class, fVar);
        j jVar = new j();
        D = jVar;
        E = new h7.r(StringBuilder.class, jVar);
        l lVar = new l();
        F = lVar;
        G = new h7.r(StringBuffer.class, lVar);
        m mVar = new m();
        H = mVar;
        I = new h7.r(URL.class, mVar);
        n nVar = new n();
        J = nVar;
        K = new h7.r(URI.class, nVar);
        o oVar = new o();
        L = oVar;
        M = new h7.u(InetAddress.class, oVar);
        p pVar = new p();
        N = pVar;
        O = new h7.r(UUID.class, pVar);
        e7.w wVar6 = new e7.w(new C0166q());
        P = wVar6;
        Q = new h7.r(Currency.class, wVar6);
        r rVar = new r();
        R = rVar;
        S = new h7.t(Calendar.class, GregorianCalendar.class, rVar);
        s sVar = new s();
        T = sVar;
        U = new h7.r(Locale.class, sVar);
        t tVar = new t();
        V = tVar;
        W = new h7.u(e7.l.class, tVar);
        X = new u();
    }
}
