package com.bumptech.glide.load;

import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import java.io.FileInputStream;
import java.io.IOException;
import y2.x;

/* JADX INFO: compiled from: ImageHeaderParserUtils.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements c.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ParcelFileDescriptorRewinder f4493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s2.b f4494b;

    public a(ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, s2.b bVar) {
        this.f4493a = parcelFileDescriptorRewinder;
        this.f4494b = bVar;
    }

    public final ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws Throwable {
        x xVar = null;
        try {
            x xVar2 = new x(new FileInputStream(this.f4493a.a().getFileDescriptor()), this.f4494b);
            try {
                ImageHeaderParser.ImageType imageTypeD = imageHeaderParser.d(xVar2);
                try {
                    xVar2.close();
                } catch (IOException unused) {
                }
                this.f4493a.a();
                return imageTypeD;
            } catch (Throwable th) {
                th = th;
                xVar = xVar2;
                if (xVar != null) {
                    try {
                        xVar.close();
                    } catch (IOException unused2) {
                    }
                }
                this.f4493a.a();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
