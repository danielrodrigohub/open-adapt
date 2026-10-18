package okhttp3.internal;

import de.a0;
import de.c;
import de.g;
import de.h0;
import de.k;
import de.y;
import fd.o;
import gd.p;
import java.io.Closeable;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import p4.h;
import qd.l;
import rd.a;
import rd.b0;
import yd.e;
import yd.f;
import yd.s;

/* JADX INFO: compiled from: -UtilCommon.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class _UtilCommonKt {
    public static final byte[] EMPTY_BYTE_ARRAY;
    private static final y UNICODE_BOMS;
    private static final Headers commonEmptyHeaders;
    private static final RequestBody commonEmptyRequestBody;
    private static final ResponseBody commonEmptyResponse;
    public static final String userAgent = "okhttp/5.0.0-alpha.10";

    static {
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        y.a aVar = y.f6279j;
        g.a aVar2 = g.f6227k;
        UNICODE_BOMS = aVar.b(aVar2.b("efbbbf"), aVar2.b("feff"), aVar2.b("fffe"), aVar2.b("0000ffff"), aVar2.b("ffff0000"));
        commonEmptyHeaders = Headers.Companion.of(new String[0]);
        commonEmptyRequestBody = RequestBody.Companion.create$default(RequestBody.Companion, bArr, (MediaType) null, 0, 0, 7, (Object) null);
        commonEmptyResponse = ResponseBody.Companion.create$default(ResponseBody.Companion, bArr, (MediaType) null, 1, (Object) null);
    }

    public static final <E> void addIfAbsent(List<E> list, E e10) {
        h.j(list, "<this>");
        if (list.contains(e10)) {
            return;
        }
        list.add(e10);
    }

    public static final int and(byte b10, int i10) {
        return b10 & i10;
    }

    public static final int and(short s10, int i10) {
        return s10 & i10;
    }

    public static final long and(int i10, long j10) {
        return ((long) i10) & j10;
    }

    public static final <E> List<E> buildList(l<? super List<E>, o> lVar) {
        h.j(lVar, "builderAction");
        ArrayList arrayList = new ArrayList();
        lVar.invoke(arrayList);
        return arrayList;
    }

    public static final void checkOffsetAndCount(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException("length=" + j10 + ", offset=" + j11 + ", count=" + j11);
        }
    }

    public static final void closeQuietly(Closeable closeable) {
        h.j(closeable, "<this>");
        try {
            closeable.close();
        } catch (RuntimeException e10) {
            throw e10;
        } catch (Exception unused) {
        }
    }

    public static final String[] concat(String[] strArr, String str) {
        h.j(strArr, "<this>");
        h.j(str, "value");
        Object[] objArrCopyOf = Arrays.copyOf(strArr, strArr.length + 1);
        h.i(objArrCopyOf, "copyOf(this, newSize)");
        String[] strArr2 = (String[]) objArrCopyOf;
        strArr2[strArr2.length - 1] = str;
        return strArr2;
    }

    public static final void deleteContents(k kVar, a0 a0Var) throws IOException {
        h.j(kVar, "<this>");
        h.j(a0Var, "directory");
        try {
            IOException iOException = null;
            for (a0 a0Var2 : kVar.list(a0Var)) {
                try {
                    if (kVar.metadata(a0Var2).f6244b) {
                        deleteContents(kVar, a0Var2);
                    }
                    kVar.delete(a0Var2);
                } catch (IOException e10) {
                    if (iOException == null) {
                        iOException = e10;
                    }
                }
            }
            if (iOException != null) {
                throw iOException;
            }
        } catch (FileNotFoundException unused) {
        }
    }

    public static final void deleteIfExists(k kVar, a0 a0Var) throws IOException {
        h.j(kVar, "<this>");
        h.j(a0Var, "path");
        try {
            kVar.delete(a0Var);
        } catch (FileNotFoundException unused) {
        }
    }

    public static final int delimiterOffset(String str, String str2, int i10, int i11) {
        h.j(str, "<this>");
        h.j(str2, "delimiters");
        while (i10 < i11) {
            if (s.h0(str2, str.charAt(i10))) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, String str2, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = str.length();
        }
        return delimiterOffset(str, str2, i10, i11);
    }

    public static final <T> List<T> filterList(Iterable<? extends T> iterable, l<? super T, Boolean> lVar) {
        h.j(iterable, "<this>");
        h.j(lVar, "predicate");
        ArrayList arrayList = p.f8070h;
        for (T t10 : iterable) {
            if (lVar.invoke(t10).booleanValue()) {
                if (arrayList.isEmpty()) {
                    arrayList = new ArrayList();
                }
                b0.a(arrayList).add(t10);
            }
        }
        return arrayList;
    }

    public static final int getCode(char c10) {
        return c10;
    }

    public static /* synthetic */ void getCode$annotations(char c10) {
    }

    public static final Headers getCommonEmptyHeaders() {
        return commonEmptyHeaders;
    }

    public static final RequestBody getCommonEmptyRequestBody() {
        return commonEmptyRequestBody;
    }

    public static final ResponseBody getCommonEmptyResponse() {
        return commonEmptyResponse;
    }

    public static final y getUNICODE_BOMS() {
        return UNICODE_BOMS;
    }

    public static final boolean hasIntersection(String[] strArr, String[] strArr2, Comparator<? super String> comparator) {
        a aVar;
        h.j(strArr, "<this>");
        h.j(comparator, "comparator");
        if (!(strArr.length == 0) && strArr2 != null) {
            if (!(strArr2.length == 0)) {
                for (String str : strArr) {
                    Iterator itV = h.v(strArr2);
                    do {
                        aVar = (a) itV;
                        if (!aVar.hasNext()) {
                        }
                    } while (comparator.compare(str, (String) aVar.next()) != 0);
                    return true;
                }
            }
        }
        return false;
    }

    public static final void ignoreIoExceptions(qd.a<o> aVar) {
        h.j(aVar, "block");
        try {
            aVar.invoke();
        } catch (IOException unused) {
        }
    }

    public static final int indexOf(String[] strArr, String str, Comparator<String> comparator) {
        h.j(strArr, "<this>");
        h.j(str, "value");
        h.j(comparator, "comparator");
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (comparator.compare(strArr[i10], str) == 0) {
                return i10;
            }
        }
        return -1;
    }

    public static final int indexOfControlOrNonAscii(String str) {
        h.j(str, "<this>");
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (h.l(cCharAt, 31) <= 0 || h.l(cCharAt, 127) >= 0) {
                return i10;
            }
        }
        return -1;
    }

    public static final int indexOfFirstNonAsciiWhitespace(String str, int i10, int i11) {
        h.j(str, "<this>");
        while (i10 < i11) {
            char cCharAt = str.charAt(i10);
            if (!((((cCharAt == '\t' || cCharAt == '\n') || cCharAt == '\f') || cCharAt == '\r') || cCharAt == ' ')) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static /* synthetic */ int indexOfFirstNonAsciiWhitespace$default(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return indexOfFirstNonAsciiWhitespace(str, i10, i11);
    }

    public static final int indexOfLastNonAsciiWhitespace(String str, int i10, int i11) {
        h.j(str, "<this>");
        int i12 = i11 - 1;
        if (i10 <= i12) {
            while (true) {
                char cCharAt = str.charAt(i12);
                if (!((((cCharAt == '\t' || cCharAt == '\n') || cCharAt == '\f') || cCharAt == '\r') || cCharAt == ' ')) {
                    return i12 + 1;
                }
                if (i12 != i10) {
                    i12--;
                }
            }
        }
        return i10;
    }

    public static /* synthetic */ int indexOfLastNonAsciiWhitespace$default(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return indexOfLastNonAsciiWhitespace(str, i10, i11);
    }

    public static final int indexOfNonWhitespace(String str, int i10) {
        h.j(str, "<this>");
        int length = str.length();
        while (i10 < length) {
            char cCharAt = str.charAt(i10);
            if (cCharAt != ' ' && cCharAt != '\t') {
                return i10;
            }
            i10++;
        }
        return str.length();
    }

    public static /* synthetic */ int indexOfNonWhitespace$default(String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return indexOfNonWhitespace(str, i10);
    }

    public static final <T> List<T> interleave(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        h.j(iterable, "a");
        h.j(iterable2, "b");
        Iterator<? extends T> it = iterable.iterator();
        Iterator<? extends T> it2 = iterable2.iterator();
        ArrayList arrayList = new ArrayList();
        while (true) {
            if (!it.hasNext() && !it2.hasNext()) {
                return arrayList;
            }
            if (it.hasNext()) {
                arrayList.add(it.next());
            }
            if (it2.hasNext()) {
                arrayList.add(it2.next());
            }
        }
    }

    public static final String[] intersect(String[] strArr, String[] strArr2, Comparator<? super String> comparator) {
        h.j(strArr, "<this>");
        h.j(strArr2, "other");
        h.j(comparator, "comparator");
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            for (String str2 : strArr2) {
                if (comparator.compare(str, str2) == 0) {
                    arrayList.add(str);
                    break;
                }
            }
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (String[]) array;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002c  */
    /* JADX WARN: Code duplicated, block: B:21:0x0034  */
    /* JADX WARN: Code duplicated, block: B:22:0x001e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static final boolean isCivilized(k kVar, a0 a0Var) throws Throwable {
        o oVar;
        h.j(kVar, "<this>");
        h.j(a0Var, "file");
        h0 h0VarSink = kVar.sink(a0Var);
        Throwable th = null;
        try {
            try {
                kVar.delete(a0Var);
                return true;
            } catch (IOException unused) {
                oVar = o.f7408a;
                if (h0VarSink != null) {
                    try {
                        h0VarSink.close();
                    } catch (Throwable th2) {
                        if (th == null) {
                            th = th2;
                        } else {
                            h.b(th, th2);
                        }
                    }
                }
                if (th == null) {
                    throw th;
                }
                h.g(oVar);
                kVar.delete(a0Var);
                return false;
            }
        } catch (Throwable th3) {
            oVar = null;
            th = th3;
            if (h0VarSink != null) {
                h0VarSink.close();
            }
            if (th == null) {
                throw th;
            }
            h.g(oVar);
            kVar.delete(a0Var);
            return false;
        }
    }

    public static final boolean isSensitiveHeader(String str) {
        h.j(str, "name");
        return yd.o.Z(str, "Authorization") || yd.o.Z(str, "Cookie") || yd.o.Z(str, "Proxy-Authorization") || yd.o.Z(str, "Set-Cookie");
    }

    public static final e matchAtPolyfill(yd.g gVar, CharSequence charSequence, int i10) {
        h.j(gVar, "<this>");
        h.j(charSequence, "input");
        Matcher matcher = gVar.f19196h.matcher(charSequence);
        h.i(matcher, "nativePattern.matcher(input)");
        f fVar = !matcher.find(i10) ? null : new f(matcher, charSequence);
        if (fVar != null && fVar.c().f17021h == i10) {
            return fVar;
        }
        return null;
    }

    public static final int parseHexDigit(char c10) {
        if ('0' <= c10 && c10 < ':') {
            return c10 - '0';
        }
        char c11 = 'a';
        if (!('a' <= c10 && c10 < 'g')) {
            c11 = 'A';
            if (!('A' <= c10 && c10 < 'G')) {
                return -1;
            }
        }
        return (c10 - c11) + 10;
    }

    public static final int readMedium(de.f fVar) throws IOException {
        h.j(fVar, "<this>");
        return and(fVar.readByte(), 255) | (and(fVar.readByte(), 255) << 16) | (and(fVar.readByte(), 255) << 8);
    }

    public static final int skipAll(c cVar, byte b10) throws EOFException {
        h.j(cVar, "<this>");
        int i10 = 0;
        while (!cVar.z() && cVar.h0(0L) == b10) {
            i10++;
            cVar.readByte();
        }
        return i10;
    }

    public static final long toLongOrDefault(String str, long j10) {
        h.j(str, "<this>");
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j10;
        }
    }

    public static final int toNonNegativeInt(String str, int i10) {
        if (str != null) {
            try {
                long j10 = Long.parseLong(str);
                if (j10 > 2147483647L) {
                    return Integer.MAX_VALUE;
                }
                if (j10 < 0) {
                    return 0;
                }
                return (int) j10;
            } catch (NumberFormatException unused) {
            }
        }
        return i10;
    }

    public static final String trimSubstring(String str, int i10, int i11) {
        h.j(str, "<this>");
        int iIndexOfFirstNonAsciiWhitespace = indexOfFirstNonAsciiWhitespace(str, i10, i11);
        String strSubstring = str.substring(iIndexOfFirstNonAsciiWhitespace, indexOfLastNonAsciiWhitespace(str, iIndexOfFirstNonAsciiWhitespace, i11));
        h.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ String trimSubstring$default(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return trimSubstring(str, i10, i11);
    }

    public static final Throwable withSuppressed(Exception exc, List<? extends Exception> list) {
        h.j(exc, "<this>");
        h.j(list, "suppressed");
        Iterator<? extends Exception> it = list.iterator();
        while (it.hasNext()) {
            h.b(exc, it.next());
        }
        return exc;
    }

    public static final void writeMedium(de.e eVar, int i10) throws IOException {
        h.j(eVar, "<this>");
        eVar.A((i10 >>> 16) & 255);
        eVar.A((i10 >>> 8) & 255);
        eVar.A(i10 & 255);
    }

    public static final int delimiterOffset(String str, char c10, int i10, int i11) {
        h.j(str, "<this>");
        while (i10 < i11) {
            if (str.charAt(i10) == c10) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, char c10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = str.length();
        }
        return delimiterOffset(str, c10, i10, i11);
    }
}
