package androidx.lifecycle;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: ViewModelProvider.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m0 implements d3.c, e3.m, g7.q {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final m0 f2228h = new m0();

    public static String a(m7.i iVar) {
        StringBuilder sb2 = new StringBuilder(iVar.size());
        for (int i10 = 0; i10 < iVar.size(); i10++) {
            byte bH = iVar.h(i10);
            if (bH == 34) {
                sb2.append("\\\"");
            } else if (bH == 39) {
                sb2.append("\\'");
            } else if (bH != 92) {
                switch (bH) {
                    case 7:
                        sb2.append("\\a");
                        break;
                    case 8:
                        sb2.append("\\b");
                        break;
                    case 9:
                        sb2.append("\\t");
                        break;
                    case 10:
                        sb2.append("\\n");
                        break;
                    case 11:
                        sb2.append("\\v");
                        break;
                    case 12:
                        sb2.append("\\f");
                        break;
                    case 13:
                        sb2.append("\\r");
                        break;
                    default:
                        if (bH < 32 || bH > 126) {
                            sb2.append('\\');
                            sb2.append((char) (((bH >>> 6) & 3) + 48));
                            sb2.append((char) (((bH >>> 3) & 7) + 48));
                            sb2.append((char) ((bH & 7) + 48));
                        } else {
                            sb2.append((char) bH);
                        }
                        break;
                }
            } else {
                sb2.append("\\\\");
            }
        }
        return sb2.toString();
    }

    public static final String c(String str, boolean z10) {
        Pattern patternCompile = Pattern.compile("..");
        p4.h.i(patternCompile, "compile(pattern)");
        String strReplaceAll = patternCompile.matcher(str).replaceAll("$0:");
        p4.h.i(strReplaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
        List listN0 = gd.n.n0(yd.s.B0(yd.s.x0(strReplaceAll, ":"), new String[]{":"}));
        ArrayList arrayList = (ArrayList) listN0;
        if (arrayList.size() < 6) {
            arrayList.add("00");
        }
        List listB0 = yd.s.B0(gd.n.d0(new gd.a0(listN0), ":", null, null, null, 62), new String[]{":"});
        int size = listB0.size();
        byte[] bArr = new byte[size];
        int i10 = size - 1;
        Iterator it = listB0.iterator();
        while (it.hasNext()) {
            bArr[i10] = (byte) Integer.parseInt((String) it.next(), 16);
            i10--;
        }
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        return String.valueOf(p4.h.s(bArr)) + (z10 ? 'R' : 'L');
    }

    public static Thread d(String str, int i10, qd.a aVar, int i11) {
        boolean z10 = (i11 & 1) != 0;
        if ((i11 & 8) != 0) {
            str = null;
        }
        if ((i11 & 16) != 0) {
            i10 = -1;
        }
        p4.h.j(aVar, "block");
        id.a aVar2 = new id.a(aVar);
        if (i10 > 0) {
            aVar2.setPriority(i10);
        }
        if (str != null) {
            aVar2.setName(str);
        }
        if (z10) {
            aVar2.start();
        }
        return aVar2;
    }

    @Override // d3.c
    public r2.w b(r2.w wVar, p2.h hVar) {
        byte[] bArrArray;
        ByteBuffer byteBufferAsReadOnlyBuffer = ((c3.c) wVar.get()).f3835h.f3845a.f3847a.g().asReadOnlyBuffer();
        AtomicReference<byte[]> atomicReference = l3.a.f9918a;
        l3.a.b bVar = (byteBufferAsReadOnlyBuffer.isReadOnly() || !byteBufferAsReadOnlyBuffer.hasArray()) ? null : new l3.a.b(byteBufferAsReadOnlyBuffer.array(), byteBufferAsReadOnlyBuffer.arrayOffset(), byteBufferAsReadOnlyBuffer.limit());
        if (bVar != null && bVar.f9921a == 0 && bVar.f9922b == bVar.f9923c.length) {
            bArrArray = byteBufferAsReadOnlyBuffer.array();
        } else {
            ByteBuffer byteBufferAsReadOnlyBuffer2 = byteBufferAsReadOnlyBuffer.asReadOnlyBuffer();
            byte[] bArr = new byte[byteBufferAsReadOnlyBuffer2.limit()];
            byteBufferAsReadOnlyBuffer2.get(bArr);
            bArrArray = bArr;
        }
        return new z2.b(bArrArray);
    }

    @Override // g7.q
    public Object construct() {
        return new LinkedHashMap();
    }

    public int e(int i10) {
        if (i10 != 1) {
            return i10 != 2 ? 1 : 3;
        }
        return 2;
    }
}
