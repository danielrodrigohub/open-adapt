package l5;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import com.newrelic.agent.android.tracing.ActivityTrace;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.Objects;

/* JADX INFO: compiled from: RawResourceDataSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class g0 extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Resources f10028e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f10029f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Uri f10030g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AssetFileDescriptor f10031h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public FileInputStream f10032i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f10033j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f10034k;

    /* JADX INFO: compiled from: RawResourceDataSource.java */
    public static class a extends k {
        public a(String str, Throwable th, int i10) {
            super(str, th, i10);
        }
    }

    public g0(Context context) {
        super(false);
        this.f10028e = context.getResources();
        this.f10029f = context.getPackageName();
    }

    public static Uri buildRawResourceUri(int i10) {
        return Uri.parse("rawresource:///" + i10);
    }

    @Override // l5.h
    public final int b(byte[] bArr, int i10, int i11) throws a {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f10033j;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i11 = (int) Math.min(j10, i11);
            } catch (IOException e10) {
                throw new a(null, e10, ActivityTrace.MAX_TRACES);
            }
        }
        FileInputStream fileInputStream = this.f10032i;
        int i12 = m5.g0.f10384a;
        int i13 = fileInputStream.read(bArr, i10, i11);
        if (i13 == -1) {
            if (this.f10033j == -1) {
                return -1;
            }
            throw new a("End of stream reached having not read sufficient data.", new EOFException(), ActivityTrace.MAX_TRACES);
        }
        long j11 = this.f10033j;
        if (j11 != -1) {
            this.f10033j = j11 - ((long) i13);
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
        this.f10030g = null;
        try {
            FileInputStream fileInputStream = this.f10032i;
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            this.f10032i = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor = this.f10031h;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                    this.f10031h = null;
                    if (this.f10034k) {
                        this.f10034k = false;
                        w();
                    }
                } catch (IOException e10) {
                    throw new a(null, e10, ActivityTrace.MAX_TRACES);
                }
            } catch (Throwable th) {
                this.f10031h = null;
                if (this.f10034k) {
                    this.f10034k = false;
                    w();
                }
                throw th;
            }
        } catch (IOException e11) {
            throw new a(null, e11, ActivityTrace.MAX_TRACES);
        }
    }

    /* JADX WARN: Code duplicated, block: B:82:0x0092 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // l5.j
    public final long l(m mVar) throws a {
        int identifier;
        Uri uri = mVar.f10071a;
        this.f10030g = uri;
        if (TextUtils.equals("rawresource", uri.getScheme())) {
            try {
                String lastPathSegment = uri.getLastPathSegment();
                Objects.requireNonNull(lastPathSegment);
                identifier = Integer.parseInt(lastPathSegment);
            } catch (NumberFormatException unused) {
                throw new a("Resource identifier must be an integer.", null, 1004);
            }
        } else {
            if (TextUtils.equals("android.resource", uri.getScheme()) && uri.getPathSegments().size() == 1) {
                String lastPathSegment2 = uri.getLastPathSegment();
                Objects.requireNonNull(lastPathSegment2);
                if (lastPathSegment2.matches("\\d+")) {
                    String lastPathSegment3 = uri.getLastPathSegment();
                    Objects.requireNonNull(lastPathSegment3);
                    identifier = Integer.parseInt(lastPathSegment3);
                }
            }
            if (!TextUtils.equals("android.resource", uri.getScheme())) {
                throw new a("URI must either use scheme rawresource or android.resource", null, 1004);
            }
            String path = uri.getPath();
            Objects.requireNonNull(path);
            if (path.startsWith("/")) {
                path = path.substring(1);
            }
            String host = uri.getHost();
            identifier = this.f10028e.getIdentifier(a1.f.d(new StringBuilder(), TextUtils.isEmpty(host) ? "" : androidx.recyclerview.widget.d.c(host, ":"), path), "raw", this.f10029f);
            if (identifier == 0) {
                throw new a("Resource not found.", null, 2005);
            }
        }
        x(mVar);
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = this.f10028e.openRawResourceFd(identifier);
            this.f10031h = assetFileDescriptorOpenRawResourceFd;
            if (assetFileDescriptorOpenRawResourceFd == null) {
                throw new a("Resource is compressed: " + uri, null, ActivityTrace.MAX_TRACES);
            }
            long length = assetFileDescriptorOpenRawResourceFd.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenRawResourceFd.getFileDescriptor());
            this.f10032i = fileInputStream;
            if (length != -1) {
                try {
                    if (mVar.f10076f > length) {
                        throw new a(null, null, 2008);
                    }
                } catch (a e10) {
                    throw e10;
                } catch (IOException e11) {
                    throw new a(null, e11, ActivityTrace.MAX_TRACES);
                }
            }
            long startOffset = assetFileDescriptorOpenRawResourceFd.getStartOffset();
            long jSkip = fileInputStream.skip(mVar.f10076f + startOffset) - startOffset;
            if (jSkip != mVar.f10076f) {
                throw new a(null, null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                if (channel.size() == 0) {
                    this.f10033j = -1L;
                } else {
                    long size = channel.size() - channel.position();
                    this.f10033j = size;
                    if (size < 0) {
                        throw new a(null, null, 2008);
                    }
                }
            } else {
                long j10 = length - jSkip;
                this.f10033j = j10;
                if (j10 < 0) {
                    throw new k(2008);
                }
            }
            long jMin = mVar.f10077g;
            if (jMin != -1) {
                long j11 = this.f10033j;
                if (j11 != -1) {
                    jMin = Math.min(j11, jMin);
                }
                this.f10033j = jMin;
            }
            this.f10034k = true;
            y(mVar);
            long j12 = mVar.f10077g;
            return j12 != -1 ? j12 : this.f10033j;
        } catch (Resources.NotFoundException e12) {
            throw new a(null, e12, 2005);
        }
    }

    @Override // l5.j
    public final Uri o() {
        return this.f10030g;
    }
}
