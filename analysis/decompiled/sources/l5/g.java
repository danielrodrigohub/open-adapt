package l5;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import com.newrelic.agent.android.tracing.ActivityTrace;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* JADX INFO: compiled from: ContentDataSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContentResolver f10022e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Uri f10023f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public AssetFileDescriptor f10024g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public FileInputStream f10025h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f10026i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f10027j;

    /* JADX INFO: compiled from: ContentDataSource.java */
    public static class a extends k {
        public a(IOException iOException, int i10) {
            super(iOException, i10);
        }
    }

    public g(Context context) {
        super(false);
        this.f10022e = context.getContentResolver();
    }

    @Override // l5.h
    public final int b(byte[] bArr, int i10, int i11) throws a {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f10026i;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i11 = (int) Math.min(j10, i11);
            } catch (IOException e10) {
                throw new a(e10, ActivityTrace.MAX_TRACES);
            }
        }
        FileInputStream fileInputStream = this.f10025h;
        int i12 = m5.g0.f10384a;
        int i13 = fileInputStream.read(bArr, i10, i11);
        if (i13 == -1) {
            return -1;
        }
        long j11 = this.f10026i;
        if (j11 != -1) {
            this.f10026i = j11 - ((long) i13);
        }
        v(i13);
        return i13;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0037 */
    /* JADX WARN: Bottom block not found for handler: all -> 0x0055 */
    @Override // l5.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void close() throws a {
        this.f10023f = null;
        try {
            FileInputStream fileInputStream = this.f10025h;
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            this.f10025h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor = this.f10024g;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                    this.f10024g = null;
                    if (this.f10027j) {
                        this.f10027j = false;
                        w();
                    }
                } catch (IOException e10) {
                    throw new a(e10, ActivityTrace.MAX_TRACES);
                }
            } catch (Throwable th) {
                this.f10024g = null;
                if (this.f10027j) {
                    this.f10027j = false;
                    w();
                }
                throw th;
            }
        } catch (IOException e11) {
            throw new a(e11, ActivityTrace.MAX_TRACES);
        }
    }

    @Override // l5.j
    public final long l(m mVar) throws a {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        int i10 = ActivityTrace.MAX_TRACES;
        try {
            Uri uri = mVar.f10071a;
            this.f10023f = uri;
            x(mVar);
            if ("content".equals(mVar.f10071a.getScheme())) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                assetFileDescriptorOpenAssetFileDescriptor = this.f10022e.openTypedAssetFileDescriptor(uri, "*/*", bundle);
            } else {
                assetFileDescriptorOpenAssetFileDescriptor = this.f10022e.openAssetFileDescriptor(uri, "r");
            }
            this.f10024g = assetFileDescriptorOpenAssetFileDescriptor;
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                throw new a(new IOException("Could not open file descriptor for: " + uri), ActivityTrace.MAX_TRACES);
            }
            long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
            this.f10025h = fileInputStream;
            if (length != -1 && mVar.f10076f > length) {
                throw new a(null, 2008);
            }
            long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
            long jSkip = fileInputStream.skip(mVar.f10076f + startOffset) - startOffset;
            if (jSkip != mVar.f10076f) {
                throw new a(null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                long size = channel.size();
                if (size == 0) {
                    this.f10026i = -1L;
                } else {
                    long jPosition = size - channel.position();
                    this.f10026i = jPosition;
                    if (jPosition < 0) {
                        throw new a(null, 2008);
                    }
                }
            } else {
                long j10 = length - jSkip;
                this.f10026i = j10;
                if (j10 < 0) {
                    throw new a(null, 2008);
                }
            }
            long jMin = mVar.f10077g;
            if (jMin != -1) {
                long j11 = this.f10026i;
                if (j11 != -1) {
                    jMin = Math.min(j11, jMin);
                }
                this.f10026i = jMin;
            }
            this.f10027j = true;
            y(mVar);
            long j12 = mVar.f10077g;
            return j12 != -1 ? j12 : this.f10026i;
        } catch (a e10) {
            throw e10;
        } catch (IOException e11) {
            if (e11 instanceof FileNotFoundException) {
                i10 = 2005;
            }
            throw new a(e11, i10);
        }
    }

    @Override // l5.j
    public final Uri o() {
        return this.f10023f;
    }
}
