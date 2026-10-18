package x2;

import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import p2.g;
import p2.h;
import p2.i;
import y2.m;
import y2.n;
import y2.s;

/* JADX INFO: compiled from: DefaultOnHeaderDecodedListener.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements ImageDecoder.OnHeaderDecodedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s f17725a = s.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17726b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f17727c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p2.b f17728d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final m f17729e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f17730f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final i f17731g;

    /* JADX INFO: renamed from: x2.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DefaultOnHeaderDecodedListener.java */
    public class C0313a implements ImageDecoder.OnPartialImageListener {
        @Override // android.graphics.ImageDecoder.OnPartialImageListener
        public final boolean onPartialImage(ImageDecoder.DecodeException decodeException) {
            return false;
        }
    }

    public a(int i10, int i11, h hVar) {
        this.f17726b = i10;
        this.f17727c = i11;
        this.f17728d = (p2.b) hVar.c(n.f18465f);
        this.f17729e = (m) hVar.c(m.f18463f);
        g<Boolean> gVar = n.f18468i;
        this.f17730f = hVar.c(gVar) != null && ((Boolean) hVar.c(gVar)).booleanValue();
        this.f17731g = (i) hVar.c(n.f18466g);
    }

    @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        boolean z10 = false;
        if (this.f17725a.b(this.f17726b, this.f17727c, this.f17730f, false)) {
            imageDecoder.setAllocator(3);
        } else {
            imageDecoder.setAllocator(1);
        }
        if (this.f17728d == p2.b.PREFER_RGB_565) {
            imageDecoder.setMemorySizePolicy(0);
        }
        imageDecoder.setOnPartialImageListener(new C0313a());
        Size size = imageInfo.getSize();
        int width = this.f17726b;
        if (width == Integer.MIN_VALUE) {
            width = size.getWidth();
        }
        int height = this.f17727c;
        if (height == Integer.MIN_VALUE) {
            height = size.getHeight();
        }
        float fB = this.f17729e.b(size.getWidth(), size.getHeight(), width, height);
        int iRound = Math.round(size.getWidth() * fB);
        int iRound2 = Math.round(size.getHeight() * fB);
        if (Log.isLoggable("ImageDecoder", 2)) {
            StringBuilder sbC = a0.b.c("Resizing from [");
            sbC.append(size.getWidth());
            sbC.append("x");
            sbC.append(size.getHeight());
            sbC.append("] to [");
            sbC.append(iRound);
            sbC.append("x");
            sbC.append(iRound2);
            sbC.append("] scaleFactor: ");
            sbC.append(fB);
            Log.v("ImageDecoder", sbC.toString());
        }
        imageDecoder.setTargetSize(iRound, iRound2);
        i iVar = this.f17731g;
        if (iVar != null) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 < 28) {
                if (i10 >= 26) {
                    imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
                }
            } else {
                if (iVar == i.DISPLAY_P3 && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) {
                    z10 = true;
                }
                imageDecoder.setTargetColorSpace(ColorSpace.get(z10 ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
            }
        }
    }
}
