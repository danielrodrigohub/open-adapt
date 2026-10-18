package com.bumptech.glide.load;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import y2.x;

/* JADX INFO: compiled from: ImageHeaderParserUtils.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: compiled from: ImageHeaderParserUtils.java */
    public interface a {
    }

    /* JADX INFO: compiled from: ImageHeaderParserUtils.java */
    public interface b {
    }

    public static int a(List<ImageHeaderParser> list, InputStream inputStream, s2.b bVar) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new x(inputStream, bVar);
        }
        inputStream.mark(5242880);
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                int iB = list.get(i10).b(inputStream, bVar);
                inputStream.reset();
                if (iB != -1) {
                    return iB;
                }
            } catch (Throwable th) {
                inputStream.reset();
                throw th;
            }
        }
        return -1;
    }

    public static int b(List<ImageHeaderParser> list, a aVar) throws Throwable {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            int iA = ((com.bumptech.glide.load.b) aVar).a(list.get(i10));
            if (iA != -1) {
                return iA;
            }
        }
        return -1;
    }

    public static ImageHeaderParser.ImageType c(List<ImageHeaderParser> list, InputStream inputStream, s2.b bVar) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new x(inputStream, bVar);
        }
        inputStream.mark(5242880);
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                ImageHeaderParser.ImageType imageTypeD = list.get(i10).d(inputStream);
                inputStream.reset();
                if (imageTypeD != ImageHeaderParser.ImageType.UNKNOWN) {
                    return imageTypeD;
                }
            } catch (Throwable th) {
                inputStream.reset();
                throw th;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    public static ImageHeaderParser.ImageType d(List<ImageHeaderParser> list, ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            ImageHeaderParser.ImageType imageTypeA = list.get(i10).a(byteBuffer);
            if (imageTypeA != ImageHeaderParser.ImageType.UNKNOWN) {
                return imageTypeA;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    public static ImageHeaderParser.ImageType e(List<ImageHeaderParser> list, b bVar) throws Throwable {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            ImageHeaderParser.ImageType imageTypeA = ((com.bumptech.glide.load.a) bVar).a(list.get(i10));
            if (imageTypeA != ImageHeaderParser.ImageType.UNKNOWN) {
                return imageTypeA;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
