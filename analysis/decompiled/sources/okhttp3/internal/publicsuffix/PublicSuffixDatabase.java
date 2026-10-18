package okhttp3.internal.publicsuffix;

import a0.b;
import a1.f;
import androidx.lifecycle.o;
import d3.e;
import de.q;
import de.w;
import gd.m;
import gd.n;
import gd.p;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.platform.Platform;
import rd.h;
import xd.c;
import xd.d;
import yd.a;
import yd.s;

/* JADX INFO: compiled from: PublicSuffixDatabase.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PublicSuffixDatabase {
    private static final char EXCEPTION_MARKER = '!';
    private byte[] publicSuffixExceptionListBytes;
    private byte[] publicSuffixListBytes;
    public static final Companion Companion = new Companion(null);
    public static final String PUBLIC_SUFFIX_RESOURCE = "PublicSuffixDatabase.gz";
    private static final byte[] WILDCARD_LABEL = {(byte) 42};
    private static final List<String> PREVAILING_RULE = o.y("*");
    private static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    /* JADX INFO: compiled from: PublicSuffixDatabase.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String binarySearch(byte[] bArr, byte[][] bArr2, int i10) {
            int i11;
            boolean z10;
            int iAnd;
            int iAnd2;
            int length = bArr.length;
            int i12 = 0;
            while (i12 < length) {
                int i13 = (i12 + length) / 2;
                while (i13 > -1 && bArr[i13] != ((byte) 10)) {
                    i13--;
                }
                int i14 = i13 + 1;
                int i15 = 1;
                while (true) {
                    i11 = i14 + i15;
                    if (bArr[i11] == ((byte) 10)) {
                        break;
                    }
                    i15++;
                }
                int i16 = i11 - i14;
                int i17 = i10;
                boolean z11 = false;
                int i18 = 0;
                int i19 = 0;
                while (true) {
                    if (z11) {
                        iAnd = 46;
                        z10 = false;
                    } else {
                        z10 = z11;
                        iAnd = _UtilCommonKt.and(bArr2[i17][i18], 255);
                    }
                    iAnd2 = iAnd - _UtilCommonKt.and(bArr[i14 + i19], 255);
                    if (iAnd2 != 0) {
                        break;
                    }
                    i19++;
                    i18++;
                    if (i19 == i16) {
                        break;
                    }
                    if (bArr2[i17].length != i18) {
                        z11 = z10;
                    } else {
                        if (i17 == bArr2.length - 1) {
                            break;
                        }
                        i17++;
                        i18 = -1;
                        z11 = true;
                    }
                }
                if (iAnd2 >= 0) {
                    if (iAnd2 <= 0) {
                        int i20 = i16 - i19;
                        int length2 = bArr2[i17].length - i18;
                        int length3 = bArr2.length;
                        for (int i21 = i17 + 1; i21 < length3; i21++) {
                            length2 += bArr2[i21].length;
                        }
                        if (length2 >= i20) {
                            if (length2 <= i20) {
                                return new String(bArr, i14, i16, a.f19171b);
                            }
                        }
                    }
                    i12 = i11 + 1;
                }
                length = i14 - 1;
            }
            return null;
        }

        public final PublicSuffixDatabase get() {
            return PublicSuffixDatabase.instance;
        }
    }

    private final List<String> findMatchingRule(List<String> list) {
        String str;
        String strBinarySearch;
        String strBinarySearch2;
        if (this.listRead.get() || !this.listRead.compareAndSet(false, true)) {
            try {
                this.readCompleteLatch.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            readTheListUninterruptibly();
        }
        if (!(this.publicSuffixListBytes != null)) {
            throw new IllegalStateException(f.d(b.c("Unable to load "), PUBLIC_SUFFIX_RESOURCE, " resource from the classpath.").toString());
        }
        int size = list.size();
        byte[][] bArr = new byte[size][];
        for (int i10 = 0; i10 < size; i10++) {
            byte[] bytes = list.get(i10).getBytes(a.f19171b);
            p4.h.i(bytes, "this as java.lang.String).getBytes(charset)");
            bArr[i10] = bytes;
        }
        int i11 = 0;
        while (true) {
            str = null;
            if (i11 >= size) {
                strBinarySearch = null;
                break;
            }
            Companion companion = Companion;
            byte[] bArr2 = this.publicSuffixListBytes;
            if (bArr2 == null) {
                p4.h.C("publicSuffixListBytes");
                throw null;
            }
            strBinarySearch = companion.binarySearch(bArr2, bArr, i11);
            if (strBinarySearch != null) {
                break;
            }
            i11++;
        }
        if (size <= 1) {
            strBinarySearch2 = null;
            break;
        }
        byte[][] bArr3 = (byte[][]) bArr.clone();
        int length = bArr3.length - 1;
        int i12 = 0;
        while (true) {
            if (i12 >= length) {
                strBinarySearch2 = null;
                break;
            }
            bArr3[i12] = WILDCARD_LABEL;
            Companion companion2 = Companion;
            byte[] bArr4 = this.publicSuffixListBytes;
            if (bArr4 == null) {
                p4.h.C("publicSuffixListBytes");
                throw null;
            }
            strBinarySearch2 = companion2.binarySearch(bArr4, bArr3, i12);
            if (strBinarySearch2 != null) {
                break;
            }
            i12++;
        }
        if (strBinarySearch2 != null) {
            int i13 = size - 1;
            for (int i14 = 0; i14 < i13; i14++) {
                Companion companion3 = Companion;
                byte[] bArr5 = this.publicSuffixExceptionListBytes;
                if (bArr5 == null) {
                    p4.h.C("publicSuffixExceptionListBytes");
                    throw null;
                }
                String strBinarySearch3 = companion3.binarySearch(bArr5, bArr, i14);
                if (strBinarySearch3 != null) {
                    str = strBinarySearch3;
                    break;
                }
            }
        }
        if (str != null) {
            return s.A0(EXCEPTION_MARKER + str, new char[]{'.'});
        }
        if (strBinarySearch == null && strBinarySearch2 == null) {
            return PREVAILING_RULE;
        }
        List<String> listA0 = strBinarySearch != null ? s.A0(strBinarySearch, new char[]{'.'}) : p.f8070h;
        List<String> listA1 = strBinarySearch2 != null ? s.A0(strBinarySearch2, new char[]{'.'}) : p.f8070h;
        return listA0.size() > listA1.size() ? listA0 : listA1;
    }

    private final void readTheList() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(PUBLIC_SUFFIX_RESOURCE);
        if (resourceAsStream == null) {
            return;
        }
        de.f fVarB = w.b(new q(w.f(resourceAsStream)));
        try {
            byte[] bArrB = fVarB.B(fVarB.readInt());
            byte[] bArrB2 = fVarB.B(fVarB.readInt());
            e.d(fVarB, null);
            synchronized (this) {
                p4.h.g(bArrB);
                this.publicSuffixListBytes = bArrB;
                p4.h.g(bArrB2);
                this.publicSuffixExceptionListBytes = bArrB2;
            }
            this.readCompleteLatch.countDown();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                e.d(fVarB, th);
                throw th2;
            }
        }
    }

    private final void readTheListUninterruptibly() {
        boolean z10 = false;
        while (true) {
            try {
                try {
                    readTheList();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z10 = true;
                } catch (IOException e10) {
                    Platform.Companion.get().log("Failed to read public suffix list", 5, e10);
                    if (z10) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    private final List<String> splitDomain(String str) {
        List<String> listA0 = s.A0(str, new char[]{'.'});
        if (!p4.h.c(n.e0(listA0), "")) {
            return listA0;
        }
        int size = listA0.size() - 1;
        return n.j0(listA0, size >= 0 ? size : 0);
    }

    public final String getEffectiveTldPlusOne(String str) {
        int size;
        int size2;
        p4.h.j(str, "domain");
        String unicode = IDN.toUnicode(str);
        p4.h.i(unicode, "unicodeDomain");
        List<String> listSplitDomain = splitDomain(unicode);
        List<String> listFindMatchingRule = findMatchingRule(listSplitDomain);
        int i10 = 0;
        if (listSplitDomain.size() == listFindMatchingRule.size() && listFindMatchingRule.get(0).charAt(0) != '!') {
            return null;
        }
        if (listFindMatchingRule.get(0).charAt(0) == '!') {
            size = listSplitDomain.size();
            size2 = listFindMatchingRule.size();
        } else {
            size = listSplitDomain.size();
            size2 = listFindMatchingRule.size() + 1;
        }
        int i11 = size - size2;
        List<String> listSplitDomain2 = splitDomain(str);
        p4.h.j(listSplitDomain2, "<this>");
        d mVar = new m(listSplitDomain2);
        if (!(i11 >= 0)) {
            throw new IllegalArgumentException(a0.d.b("Requested element count ", i11, " is less than zero.").toString());
        }
        if (i11 != 0) {
            mVar = mVar instanceof c ? ((c) mVar).a(i11) : new xd.b(mVar, i11);
        }
        p4.h.j(mVar, "<this>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "");
        for (Object obj : mVar) {
            i10++;
            if (i10 > 1) {
                sb2.append((CharSequence) ".");
            }
            o.d(sb2, obj, null);
        }
        sb2.append((CharSequence) "");
        String string = sb2.toString();
        p4.h.i(string, "joinTo(StringBuilder(), …ed, transform).toString()");
        return string;
    }

    public final void setListBytes(byte[] bArr, byte[] bArr2) {
        p4.h.j(bArr, "publicSuffixListBytes");
        p4.h.j(bArr2, "publicSuffixExceptionListBytes");
        this.publicSuffixListBytes = bArr;
        this.publicSuffixExceptionListBytes = bArr2;
        this.listRead.set(true);
        this.readCompleteLatch.countDown();
    }
}
