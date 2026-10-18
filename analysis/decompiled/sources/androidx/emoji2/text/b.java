package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.util.Base64;
import android.util.Log;
import android.view.KeyEvent;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import fb.l;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import p4.h;
import s.e;
import v4.f;
import yd.o;

/* JADX INFO: compiled from: EmojiProcessor.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements l, p2.d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final char[] f1801h = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final b f1802i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static boolean[] f1803j = new boolean[3];

    public /* synthetic */ b() {
    }

    public static final int e(char c10) {
        if ('0' <= c10 && c10 < ':') {
            return c10 - '0';
        }
        char c11 = 'a';
        if (!('a' <= c10 && c10 < 'g')) {
            c11 = 'A';
            if (!('A' <= c10 && c10 < 'G')) {
                throw new IllegalArgumentException("Unexpected hex digit: " + c10);
            }
        }
        return (c10 - c11) + 10;
    }

    public static final qd.l f(qd.l lVar, String str) {
        return lVar == null ? new w9.b(str) : lVar;
    }

    public static void g(e eVar, q.d dVar, s.d dVar2) {
        dVar2.f14880o = -1;
        dVar2.f14882p = -1;
        if (eVar.U[0] != 2 && dVar2.U[0] == 4) {
            int i10 = dVar2.J.f14841g;
            int iR = eVar.r() - dVar2.L.f14841g;
            s.c cVar = dVar2.J;
            cVar.f14843i = dVar.l(cVar);
            s.c cVar2 = dVar2.L;
            cVar2.f14843i = dVar.l(cVar2);
            dVar.e(dVar2.J.f14843i, i10);
            dVar.e(dVar2.L.f14843i, iR);
            dVar2.f14880o = 2;
            dVar2.f14854a0 = i10;
            int i11 = iR - i10;
            dVar2.W = i11;
            int i12 = dVar2.d0;
            if (i11 < i12) {
                dVar2.W = i12;
            }
        }
        if (eVar.U[1] == 2 || dVar2.U[1] != 4) {
            return;
        }
        int i13 = dVar2.K.f14841g;
        int iK = eVar.k() - dVar2.M.f14841g;
        s.c cVar3 = dVar2.K;
        cVar3.f14843i = dVar.l(cVar3);
        s.c cVar4 = dVar2.M;
        cVar4.f14843i = dVar.l(cVar4);
        dVar.e(dVar2.K.f14843i, i13);
        dVar.e(dVar2.M.f14843i, iK);
        if (dVar2.f14858c0 > 0 || dVar2.f14869i0 == 8) {
            s.c cVar5 = dVar2.N;
            cVar5.f14843i = dVar.l(cVar5);
            dVar.e(dVar2.N.f14843i, dVar2.f14858c0 + i13);
        }
        dVar2.f14882p = 2;
        dVar2.f14856b0 = i13;
        int i14 = iK - i13;
        dVar2.X = i14;
        int i15 = dVar2.f14861e0;
        if (i14 < i15) {
            dVar2.X = i15;
        }
    }

    public static boolean h(Editable editable, KeyEvent keyEvent, boolean z10) {
        c[] cVarArr;
        if (!KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!(selectionStart == -1 || selectionEnd == -1 || selectionStart != selectionEnd) && (cVarArr = (c[]) editable.getSpans(selectionStart, selectionEnd, c.class)) != null && cVarArr.length > 0) {
            for (c cVar : cVarArr) {
                int spanStart = editable.getSpanStart(cVar);
                int spanEnd = editable.getSpanEnd(cVar);
                if ((z10 && spanStart == selectionStart) || ((!z10 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    public static final boolean i(int i10, int i11) {
        return (i10 & i11) == i11;
    }

    @Override // fb.l
    public String a(String str) {
        h.j(str, "md5");
        byte[] bArrDecode = Base64.decode(str, 0);
        h.i(bArrDecode, "decodeMd5");
        String strC = "";
        for (byte b10 : bArrDecode) {
            String str2 = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b10)}, 1));
            h.i(str2, "format(format, *args)");
            strC = androidx.recyclerview.widget.d.c(strC, str2);
        }
        return strC;
    }

    @Override // fb.l
    public String b(byte[] bArr) {
        String strE0;
        h.j(bArr, "bytes");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            h.i(messageDigest, "getInstance(\"MD5\")");
            byte[] bArr2 = new byte[8192];
            while (true) {
                try {
                    try {
                        int i10 = byteArrayInputStream.read(bArr2);
                        if (i10 < 1) {
                            break;
                        }
                        messageDigest.update(bArr2, 0, i10);
                    } catch (Throwable th) {
                        try {
                            byteArrayInputStream.close();
                        } catch (IOException e10) {
                            d3.e.j().b("MD5", "got ioexception in finally " + e10);
                        }
                        throw th;
                    }
                } catch (IOException e11) {
                    d3.e.j().b("MD5", "got ioexception " + e11);
                    throw new RuntimeException("Unable to process file for MD5", e11);
                }
            }
            String str = String.format("%32s", Arrays.copyOf(new Object[]{new BigInteger(1, messageDigest.digest()).toString(16)}, 1));
            h.i(str, "format(format, *args)");
            strE0 = o.e0(str, SafeJsonPrimitive.NULL_CHAR, '0');
            try {
                byteArrayInputStream.close();
            } catch (IOException e12) {
                d3.e.j().b("MD5", "got ioexception in finally " + e12);
            }
        } catch (NoSuchAlgorithmException unused) {
            strE0 = null;
        }
        return strE0 == null ? "could_not_compute_md5" : strE0;
    }

    @Override // p2.d
    public boolean c(Object obj, File file, p2.h hVar) throws Throwable {
        try {
            l3.a.d((ByteBuffer) obj, file);
            return true;
        } catch (IOException e10) {
            if (Log.isLoggable("ByteBufferEncoder", 3)) {
                Log.d("ByteBufferEncoder", "Failed to write data", e10);
            }
            return false;
        }
    }

    public /* synthetic */ b(f fVar) {
        new v4.d(fVar.f16324a, fVar.f16325b, fVar.f16306e, fVar.f16307f, fVar.f16308g, fVar.f16309h, fVar.f16310i, fVar.f16311j, fVar.f16312k, fVar.f16326c, fVar.f16313l, fVar.f16314m);
    }
}
