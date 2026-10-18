package jc;

import android.bluetooth.le.ScanFilter;
import android.bluetooth.le.ScanRecord;
import android.bluetooth.le.ScanResult;
import android.bluetooth.le.ScanSettings;
import android.util.SparseArray;
import hc.d0;
import hc.e0;
import yd.s;

/* JADX INFO: compiled from: DiscoverUtilties.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f9502a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ScanSettings f9503b = new ScanSettings.Builder().setScanMode(2).build();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ScanFilter f9504c;

    static {
        byte[] bArr = {-81, 40};
        f9502a = bArr;
        f9504c = new ScanFilter.Builder().setManufacturerData(120, bArr).build();
    }

    public static final a a(ScanResult scanResult) {
        String strA;
        SparseArray<byte[]> manufacturerSpecificData;
        String name = scanResult.getDevice().getName();
        if (name == null) {
            name = "Nike Adapt BB";
        }
        String str = name;
        String address = scanResult.getDevice().getAddress();
        p4.h.i(address, "device.address");
        ScanRecord scanRecord = scanResult.getScanRecord();
        if (scanRecord == null || (manufacturerSpecificData = scanRecord.getManufacturerSpecificData()) == null || (strA = e0.a(manufacturerSpecificData, d0.f8457h)) == null) {
            strA = "";
        }
        String lowerCase = strA.toLowerCase();
        p4.h.i(lowerCase, "this as java.lang.String).toLowerCase()");
        return new a(str, address, lowerCase, e0.b(scanResult), s.j0(e0.b(scanResult), 'R', false), scanResult.getRssi());
    }
}
