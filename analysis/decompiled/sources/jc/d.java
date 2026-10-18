package jc;

import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanRecord;
import android.bluetooth.le.ScanResult;
import android.os.Build;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: DiscoverUtilties.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends ScanCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f9499a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<a> f9500b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f9501c = new Object();

    public d(c cVar) {
        this.f9499a = cVar;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x003a A[Catch: all -> 0x007d, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0009, B:8:0x0011, B:10:0x0019, B:15:0x0028, B:18:0x0031, B:22:0x003a, B:23:0x0040, B:25:0x0046, B:29:0x005f, B:31:0x0063, B:32:0x0072), top: B:38:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0046 A[Catch: all -> 0x007d, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0009, B:8:0x0011, B:10:0x0019, B:15:0x0028, B:18:0x0031, B:22:0x003a, B:23:0x0040, B:25:0x0046, B:29:0x005f, B:31:0x0063, B:32:0x0072), top: B:38:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0063 A[Catch: all -> 0x007d, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0009, B:8:0x0011, B:10:0x0019, B:15:0x0028, B:18:0x0031, B:22:0x003a, B:23:0x0040, B:25:0x0046, B:29:0x005f, B:31:0x0063, B:32:0x0072), top: B:38:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0072 A[Catch: all -> 0x007d, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0009, B:8:0x0011, B:10:0x0019, B:15:0x0028, B:18:0x0031, B:22:0x003a, B:23:0x0040, B:25:0x0046, B:29:0x005f, B:31:0x0063, B:32:0x0072), top: B:38:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x005e A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<jc.a>] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.ArrayList, java.util.List<jc.a>] */
    public final void a(ScanResult scanResult) {
        Iterator it;
        Object next;
        byte[] manufacturerSpecificData;
        boolean z10;
        synchronized (this.f9501c) {
            if (Build.VERSION.SDK_INT < 26) {
                ScanRecord scanRecord = scanResult.getScanRecord();
                boolean z11 = false;
                if (scanRecord != null && (manufacturerSpecificData = scanRecord.getManufacturerSpecificData(120)) != null) {
                    byte[] bArr = e.f9502a;
                    byte[] bArr2 = e.f9502a;
                    if (manufacturerSpecificData.length < 2) {
                        z10 = false;
                    } else {
                        int i10 = 0;
                        int i11 = 0;
                        z10 = true;
                        while (i10 < 2) {
                            int i12 = i11 + 1;
                            if (bArr2[i10] != manufacturerSpecificData[i11]) {
                                z10 = false;
                            }
                            i10++;
                            i11 = i12;
                        }
                    }
                    if (z10) {
                        z11 = true;
                    }
                }
                if (z11) {
                    it = this.f9500b.iterator();
                    do {
                        if (it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!p4.h.c(((a) next).f9490b, scanResult.getDevice().getAddress()));
                    if (((a) next) == null) {
                        a aVarA = e.a(scanResult);
                        this.f9500b.add(aVarA);
                        this.f9499a.e(aVarA);
                    } else {
                        this.f9499a.a(e.a(scanResult));
                    }
                }
            } else {
                it = this.f9500b.iterator();
                do {
                    if (it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!p4.h.c(((a) next).f9490b, scanResult.getDevice().getAddress()));
                if (((a) next) == null) {
                    a aVarA2 = e.a(scanResult);
                    this.f9500b.add(aVarA2);
                    this.f9499a.e(aVarA2);
                } else {
                    this.f9499a.a(e.a(scanResult));
                }
            }
        }
    }

    @Override // android.bluetooth.le.ScanCallback
    public final void onBatchScanResults(List<ScanResult> list) {
        p4.h.j(list, "results");
        super.onBatchScanResults(list);
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            a((ScanResult) it.next());
        }
    }

    @Override // android.bluetooth.le.ScanCallback
    public final void onScanFailed(int i10) {
        super.onScanFailed(i10);
        this.f9499a.d(i10);
    }

    @Override // android.bluetooth.le.ScanCallback
    public final void onScanResult(int i10, ScanResult scanResult) {
        p4.h.j(scanResult, "result");
        super.onScanResult(i10, scanResult);
        a(scanResult);
    }
}
