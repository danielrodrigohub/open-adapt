package hc;

import android.bluetooth.le.ScanRecord;
import android.bluetooth.le.ScanResult;
import android.util.SparseArray;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e0 {

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class a extends rd.o implements qd.l<byte[], String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f8472h = new a();

        public a() {
            super(1);
        }

        @Override // qd.l
        public final String invoke(byte[] bArr) {
            byte[] bArr2 = bArr;
            p4.h.j(bArr2, "it");
            StringBuilder sb2 = new StringBuilder();
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, 0, 5);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            sb2.append(p4.h.s(bArrCopyOfRange));
            sb2.append((bArr2[5] & 1) == 1 ? 'R' : 'L');
            return sb2.toString();
        }
    }

    public static final String a(SparseArray<byte[]> sparseArray, qd.l<? super byte[], String> lVar) {
        int size = sparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            byte[] bArr = sparseArray.get(sparseArray.keyAt(i10));
            if (bArr != null) {
                try {
                    Object objCopyOfRange = Arrays.copyOfRange(bArr, 2, 8);
                    p4.h.i(objCopyOfRange, "copyOfRange(it, 2, 8)");
                    return lVar.invoke(objCopyOfRange);
                } catch (Throwable unused) {
                    continue;
                }
            }
        }
        return null;
    }

    public static final String b(ScanResult scanResult) {
        SparseArray<byte[]> manufacturerSpecificData;
        String strA;
        p4.h.j(scanResult, "<this>");
        ScanRecord scanRecord = scanResult.getScanRecord();
        return (scanRecord == null || (manufacturerSpecificData = scanRecord.getManufacturerSpecificData()) == null || (strA = a(manufacturerSpecificData, a.f8472h)) == null) ? "" : strA;
    }

    public static final String c(byte[] bArr) {
        p4.h.j(bArr, "<this>");
        char[] charArray = "0123456789ABCDEF".toCharArray();
        p4.h.i(charArray, "this as java.lang.String).toCharArray()");
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b10 : bArr) {
            stringBuffer.append(charArray[(b10 & 240) >>> 4]);
            stringBuffer.append(charArray[b10 & 15]);
        }
        String string = stringBuffer.toString();
        p4.h.i(string, "result.toString()");
        return string;
    }
}
