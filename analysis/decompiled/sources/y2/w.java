package y2;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: ParcelFileDescriptorBitmapDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class w implements p2.j<ParcelFileDescriptor, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n f18503a;

    public w(n nVar) {
        this.f18503a = nVar;
    }

    @Override // p2.j
    public final boolean a(ParcelFileDescriptor parcelFileDescriptor, p2.h hVar) throws IOException {
        ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptor;
        String str = Build.MANUFACTURER;
        if (!(!("HUAWEI".equalsIgnoreCase(str) || "HONOR".equalsIgnoreCase(str)) || parcelFileDescriptor2.getStatSize() <= 536870912)) {
            return false;
        }
        Objects.requireNonNull(this.f18503a);
        return true;
    }

    @Override // p2.j
    public final r2.w<Bitmap> b(ParcelFileDescriptor parcelFileDescriptor, int i10, int i11, p2.h hVar) throws IOException {
        n nVar = this.f18503a;
        return nVar.a(new t.c(parcelFileDescriptor, nVar.f18474d, nVar.f18473c), i10, i11, hVar, n.f18469j);
    }
}
