package okhttp3;

import androidx.recyclerview.widget.d;
import fd.e;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import okhttp3.internal._HeadersCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.http.DatesKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import p4.h;
import yd.o;
import yd.s;

/* JADX INFO: compiled from: Headers.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Headers implements Iterable<e<? extends String, ? extends String>>, sd.a {
    public static final Companion Companion = new Companion(null);
    private final String[] namesAndValues;

    /* JADX INFO: compiled from: Headers.kt */
    public static final class Builder {
        private final List<String> namesAndValues = new ArrayList(20);

        public final Builder add(String str) {
            h.j(str, "line");
            int iO0 = s.o0(str, ':', 0, false, 6);
            if (!(iO0 != -1)) {
                throw new IllegalArgumentException(d.c("Unexpected header: ", str).toString());
            }
            String strSubstring = str.substring(0, iO0);
            h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String string = s.G0(strSubstring).toString();
            String strSubstring2 = str.substring(iO0 + 1);
            h.i(strSubstring2, "this as java.lang.String).substring(startIndex)");
            add(string, strSubstring2);
            return this;
        }

        public final Builder addAll(Headers headers) {
            h.j(headers, "headers");
            return _HeadersCommonKt.commonAddAll(this, headers);
        }

        public final Builder addLenient$okhttp(String str) {
            h.j(str, "line");
            int iO0 = s.o0(str, ':', 1, false, 4);
            if (iO0 != -1) {
                String strSubstring = str.substring(0, iO0);
                h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                String strSubstring2 = str.substring(iO0 + 1);
                h.i(strSubstring2, "this as java.lang.String).substring(startIndex)");
                addLenient$okhttp(strSubstring, strSubstring2);
            } else if (str.charAt(0) == ':') {
                String strSubstring3 = str.substring(1);
                h.i(strSubstring3, "this as java.lang.String).substring(startIndex)");
                addLenient$okhttp("", strSubstring3);
            } else {
                addLenient$okhttp("", str);
            }
            return this;
        }

        public final Builder addUnsafeNonAscii(String str, String str2) {
            h.j(str, "name");
            h.j(str2, "value");
            _HeadersCommonKt.headersCheckName(str);
            addLenient$okhttp(str, str2);
            return this;
        }

        public final Headers build() {
            return _HeadersCommonKt.commonBuild(this);
        }

        public final String get(String str) {
            h.j(str, "name");
            return _HeadersCommonKt.commonGet(this, str);
        }

        public final List<String> getNamesAndValues$okhttp() {
            return this.namesAndValues;
        }

        public final Builder removeAll(String str) {
            h.j(str, "name");
            return _HeadersCommonKt.commonRemoveAll(this, str);
        }

        public final Builder set(String str, Date date) {
            h.j(str, "name");
            h.j(date, "value");
            set(str, DatesKt.toHttpDateString(date));
            return this;
        }

        @IgnoreJRERequirement
        public final Builder set(String str, Instant instant) {
            h.j(str, "name");
            h.j(instant, "value");
            return set(str, new Date(instant.toEpochMilli()));
        }

        public final Builder set(String str, String str2) {
            h.j(str, "name");
            h.j(str2, "value");
            return _HeadersCommonKt.commonSet(this, str, str2);
        }

        public final Builder addLenient$okhttp(String str, String str2) {
            h.j(str, "name");
            h.j(str2, "value");
            return _HeadersCommonKt.commonAddLenient(this, str, str2);
        }

        public final Builder add(String str, String str2) {
            h.j(str, "name");
            h.j(str2, "value");
            return _HeadersCommonKt.commonAdd(this, str, str2);
        }

        public final Builder add(String str, Date date) {
            h.j(str, "name");
            h.j(date, "value");
            add(str, DatesKt.toHttpDateString(date));
            return this;
        }

        @IgnoreJRERequirement
        public final Builder add(String str, Instant instant) {
            h.j(str, "name");
            h.j(instant, "value");
            add(str, new Date(instant.toEpochMilli()));
            return this;
        }
    }

    /* JADX INFO: compiled from: Headers.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(rd.h hVar) {
            this();
        }

        /* JADX INFO: renamed from: -deprecated_of, reason: not valid java name */
        public final Headers m76deprecated_of(String... strArr) {
            h.j(strArr, "namesAndValues");
            return of((String[]) Arrays.copyOf(strArr, strArr.length));
        }

        public final Headers of(String... strArr) {
            h.j(strArr, "namesAndValues");
            return _HeadersCommonKt.commonHeadersOf((String[]) Arrays.copyOf(strArr, strArr.length));
        }

        /* JADX INFO: renamed from: -deprecated_of, reason: not valid java name */
        public final Headers m75deprecated_of(Map<String, String> map) {
            h.j(map, "headers");
            return of(map);
        }

        public final Headers of(Map<String, String> map) {
            h.j(map, "<this>");
            return _HeadersCommonKt.commonToHeaders(map);
        }
    }

    public Headers(String[] strArr) {
        h.j(strArr, "namesAndValues");
        this.namesAndValues = strArr;
    }

    public static final Headers of(Map<String, String> map) {
        return Companion.of(map);
    }

    public static final Headers of(String... strArr) {
        return Companion.of(strArr);
    }

    /* JADX INFO: renamed from: -deprecated_size, reason: not valid java name */
    public final int m74deprecated_size() {
        return size();
    }

    public final long byteCount() {
        String[] strArr = this.namesAndValues;
        long length = strArr.length * 2;
        int length2 = strArr.length;
        for (int i10 = 0; i10 < length2; i10++) {
            length += (long) this.namesAndValues[i10].length();
        }
        return length;
    }

    public boolean equals(Object obj) {
        return _HeadersCommonKt.commonEquals(this, obj);
    }

    public final String get(String str) {
        h.j(str, "name");
        return _HeadersCommonKt.commonHeadersGet(this.namesAndValues, str);
    }

    public final Date getDate(String str) {
        h.j(str, "name");
        String str2 = get(str);
        if (str2 != null) {
            return DatesKt.toHttpDateOrNull(str2);
        }
        return null;
    }

    @IgnoreJRERequirement
    public final Instant getInstant(String str) {
        h.j(str, "name");
        Date date = getDate(str);
        if (date != null) {
            return date.toInstant();
        }
        return null;
    }

    public final String[] getNamesAndValues$okhttp() {
        return this.namesAndValues;
    }

    public int hashCode() {
        return _HeadersCommonKt.commonHashCode(this);
    }

    @Override // java.lang.Iterable
    public Iterator<e<? extends String, ? extends String>> iterator() {
        return _HeadersCommonKt.commonIterator(this);
    }

    public final String name(int i10) {
        return _HeadersCommonKt.commonName(this, i10);
    }

    public final Set<String> names() {
        o.a0();
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            treeSet.add(name(i10));
        }
        Set<String> setUnmodifiableSet = Collections.unmodifiableSet(treeSet);
        h.i(setUnmodifiableSet, "unmodifiableSet(result)");
        return setUnmodifiableSet;
    }

    public final Builder newBuilder() {
        return _HeadersCommonKt.commonNewBuilder(this);
    }

    public final int size() {
        return this.namesAndValues.length / 2;
    }

    public final Map<String, List<String>> toMultimap() {
        o.a0();
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            String strName = name(i10);
            Locale locale = Locale.US;
            h.i(locale, "US");
            String strLowercase = _UtilJvmKt.lowercase(strName, locale);
            List arrayList = (List) treeMap.get(strLowercase);
            if (arrayList == null) {
                arrayList = new ArrayList(2);
                treeMap.put(strLowercase, arrayList);
            }
            arrayList.add(value(i10));
        }
        return treeMap;
    }

    public String toString() {
        return _HeadersCommonKt.commonToString(this);
    }

    public final String value(int i10) {
        return _HeadersCommonKt.commonValue(this, i10);
    }

    public final List<String> values(String str) {
        h.j(str, "name");
        return _HeadersCommonKt.commonValues(this, str);
    }
}
