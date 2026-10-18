package l5;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import com.newrelic.agent.android.tracing.ActivityTrace;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Objects;

/* JADX INFO: compiled from: FileDataSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class v extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public RandomAccessFile f10148e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Uri f10149f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f10150g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f10151h;

    /* JADX INFO: compiled from: FileDataSource.java */
    public static final class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static boolean b(Throwable th) {
            return (th instanceof ErrnoException) && ((ErrnoException) th).errno == OsConstants.EACCES;
        }
    }

    /* JADX INFO: compiled from: FileDataSource.java */
    public static class b extends k {
        public b(Throwable th, int i10) {
            super(th, i10);
        }

        public b(String str, Throwable th, int i10) {
            super(str, th, i10);
        }
    }

    public v() {
        super(false);
    }

    @Override // l5.h
    public final int b(byte[] bArr, int i10, int i11) throws b {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f10150g;
        if (j10 == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.f10148e;
            int i12 = m5.g0.f10384a;
            int i13 = randomAccessFile.read(bArr, i10, (int) Math.min(j10, i11));
            if (i13 > 0) {
                this.f10150g -= (long) i13;
                v(i13);
            }
            return i13;
        } catch (IOException e10) {
            throw new b(e10, ActivityTrace.MAX_TRACES);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0017 */
    @Override // l5.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void close() throws b {
        this.f10149f = null;
        try {
            RandomAccessFile randomAccessFile = this.f10148e;
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            this.f10148e = null;
            if (this.f10151h) {
                this.f10151h = false;
                w();
            }
        } catch (IOException e10) {
            throw new b(e10, ActivityTrace.MAX_TRACES);
        }
    }

    @Override // l5.j
    public final long l(m mVar) throws b {
        Uri uri = mVar.f10071a;
        this.f10149f = uri;
        x(mVar);
        try {
            String path = uri.getPath();
            Objects.requireNonNull(path);
            RandomAccessFile randomAccessFile = new RandomAccessFile(path, "r");
            this.f10148e = randomAccessFile;
            try {
                randomAccessFile.seek(mVar.f10076f);
                long length = mVar.f10077g;
                if (length == -1) {
                    length = this.f10148e.length() - mVar.f10076f;
                }
                this.f10150g = length;
                if (length < 0) {
                    throw new b(null, null, 2008);
                }
                this.f10151h = true;
                y(mVar);
                return this.f10150g;
            } catch (IOException e10) {
                throw new b(e10, ActivityTrace.MAX_TRACES);
            }
        } catch (FileNotFoundException e11) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new b(e11, (m5.g0.f10384a < 21 || !a.b(e11.getCause())) ? 2005 : 2006);
            }
            throw new b(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e11, 1004);
        } catch (SecurityException e12) {
            throw new b(e12, 2006);
        } catch (RuntimeException e13) {
            throw new b(e13, ActivityTrace.MAX_TRACES);
        }
    }

    @Override // l5.j
    public final Uri o() {
        return this.f10149f;
    }
}
