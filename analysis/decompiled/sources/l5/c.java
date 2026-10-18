package l5;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.newrelic.agent.android.tracing.ActivityTrace;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: compiled from: AssetDataSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetManager f9972e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Uri f9973f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public InputStream f9974g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f9975h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f9976i;

    /* JADX INFO: compiled from: AssetDataSource.java */
    public static final class a extends k {
        public a(Throwable th, int i10) {
            super(th, i10);
        }
    }

    public c(Context context) {
        super(false);
        this.f9972e = context.getAssets();
    }

    @Override // l5.h
    public final int b(byte[] bArr, int i10, int i11) throws a {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f9975h;
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
        InputStream inputStream = this.f9974g;
        int i12 = m5.g0.f10384a;
        int i13 = inputStream.read(bArr, i10, i11);
        if (i13 == -1) {
            return -1;
        }
        long j11 = this.f9975h;
        if (j11 != -1) {
            this.f9975h = j11 - ((long) i13);
        }
        v(i13);
        return i13;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0017 */
    @Override // l5.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void close() throws a {
        this.f9973f = null;
        try {
            InputStream inputStream = this.f9974g;
            if (inputStream != null) {
                inputStream.close();
            }
            this.f9974g = null;
            if (this.f9976i) {
                this.f9976i = false;
                w();
            }
        } catch (IOException e10) {
            throw new a(e10, ActivityTrace.MAX_TRACES);
        }
    }

    @Override // l5.j
    public final long l(m mVar) throws a {
        try {
            Uri uri = mVar.f10071a;
            this.f9973f = uri;
            String path = uri.getPath();
            Objects.requireNonNull(path);
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith("/")) {
                path = path.substring(1);
            }
            x(mVar);
            InputStream inputStreamOpen = this.f9972e.open(path, 1);
            this.f9974g = inputStreamOpen;
            if (inputStreamOpen.skip(mVar.f10076f) < mVar.f10076f) {
                throw new a(null, 2008);
            }
            long j10 = mVar.f10077g;
            if (j10 != -1) {
                this.f9975h = j10;
            } else {
                long jAvailable = this.f9974g.available();
                this.f9975h = jAvailable;
                if (jAvailable == 2147483647L) {
                    this.f9975h = -1L;
                }
            }
            this.f9976i = true;
            y(mVar);
            return this.f9975h;
        } catch (a e10) {
            throw e10;
        } catch (IOException e11) {
            throw new a(e11, e11 instanceof FileNotFoundException ? 2005 : ActivityTrace.MAX_TRACES);
        }
    }

    @Override // l5.j
    public final Uri o() {
        return this.f9973f;
    }
}
