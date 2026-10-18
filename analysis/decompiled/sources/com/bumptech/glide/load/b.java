package com.bumptech.glide.load;

import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import java.io.FileInputStream;
import java.io.IOException;
import y2.x;

/* JADX INFO: compiled from: ImageHeaderParserUtils.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ParcelFileDescriptorRewinder f4495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s2.b f4496b;

    public b(ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, s2.b bVar) {
        this.f4495a = parcelFileDescriptorRewinder;
        this.f4496b = bVar;
    }

    public final int a(ImageHeaderParser imageHeaderParser) throws Throwable {
        x xVar = null;
        try {
            x xVar2 = new x(new FileInputStream(this.f4495a.a().getFileDescriptor()), this.f4496b);
            try {
                int iB = imageHeaderParser.b(xVar2, this.f4496b);
                try {
                    xVar2.close();
                } catch (IOException unused) {
                }
                this.f4495a.a();
                return iB;
            } catch (Throwable th) {
                th = th;
                xVar = xVar2;
                if (xVar != null) {
                    try {
                        xVar.close();
                    } catch (IOException unused2) {
                    }
                }
                this.f4495a.a();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
