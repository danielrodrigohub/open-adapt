package y0;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: SQLiteCopyOpenHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class g0 implements d1.d, o {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f18212h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f18213i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final File f18214j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Callable<InputStream> f18215k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f18216l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final d1.d f18217m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public n f18218n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f18219o;

    @Override // d1.d
    public final synchronized d1.b X() {
        if (!this.f18219o) {
            f0(true);
            this.f18219o = true;
        }
        return this.f18217m.X();
    }

    public final void Y(File file) throws IOException {
        ReadableByteChannel readableByteChannelNewChannel;
        if (this.f18213i != null) {
            readableByteChannelNewChannel = Channels.newChannel(this.f18212h.getAssets().open(this.f18213i));
        } else if (this.f18214j != null) {
            readableByteChannelNewChannel = new FileInputStream(this.f18214j).getChannel();
        } else {
            Callable<InputStream> callable = this.f18215k;
            if (callable == null) {
                throw new IllegalStateException("copyFromAssetPath, copyFromFile and copyFromInputStream are all null!");
            }
            try {
                readableByteChannelNewChannel = Channels.newChannel(callable.call());
            } catch (Exception e10) {
                throw new IOException("inputStreamCallable exception on call", e10);
            }
        }
        File fileCreateTempFile = File.createTempFile("room-copy-helper", ".tmp", this.f18212h.getCacheDir());
        fileCreateTempFile.deleteOnExit();
        FileChannel channel = new FileOutputStream(fileCreateTempFile).getChannel();
        try {
            channel.transferFrom(readableByteChannelNewChannel, 0L, Long.MAX_VALUE);
            channel.force(false);
            readableByteChannelNewChannel.close();
            channel.close();
            File parentFile = file.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                StringBuilder sbC = a0.b.c("Failed to create directories for ");
                sbC.append(file.getAbsolutePath());
                throw new IOException(sbC.toString());
            }
            if (fileCreateTempFile.renameTo(file)) {
                return;
            }
            StringBuilder sbC2 = a0.b.c("Failed to move intermediate file (");
            sbC2.append(fileCreateTempFile.getAbsolutePath());
            sbC2.append(") to destination (");
            sbC2.append(file.getAbsolutePath());
            sbC2.append(").");
            throw new IOException(sbC2.toString());
        } catch (Throwable th) {
            readableByteChannelNewChannel.close();
            channel.close();
            throw th;
        }
    }

    @Override // d1.d, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f18217m.close();
        this.f18219o = false;
    }

    public final void f0(boolean z10) {
        String databaseName = getDatabaseName();
        File databasePath = this.f18212h.getDatabasePath(databaseName);
        n nVar = this.f18218n;
        a1.a aVar = new a1.a(databaseName, this.f18212h.getFilesDir(), nVar == null || nVar.f18266k);
        try {
            aVar.f33b.lock();
            if (aVar.f34c) {
                try {
                    FileChannel channel = new FileOutputStream(aVar.f32a).getChannel();
                    aVar.f35d = channel;
                    channel.lock();
                } catch (IOException e10) {
                    throw new IllegalStateException("Unable to grab copy lock.", e10);
                }
            }
            if (!databasePath.exists()) {
                try {
                    Y(databasePath);
                    aVar.a();
                    return;
                } catch (IOException e11) {
                    throw new RuntimeException("Unable to copy database file.", e11);
                }
            }
            if (this.f18218n == null) {
                aVar.a();
                return;
            }
            try {
                int iB = a1.c.b(databasePath);
                int i10 = this.f18216l;
                if (iB == i10) {
                    aVar.a();
                    return;
                }
                if (this.f18218n.a(iB, i10)) {
                    aVar.a();
                    return;
                }
                if (this.f18212h.deleteDatabase(databaseName)) {
                    try {
                        Y(databasePath);
                    } catch (IOException e12) {
                        Log.w("ROOM", "Unable to copy database file.", e12);
                    }
                } else {
                    Log.w("ROOM", "Failed to delete database file (" + databaseName + ") for a copy destructive migration.");
                }
                aVar.a();
                return;
            } catch (IOException e13) {
                Log.w("ROOM", "Unable to read database version.", e13);
                aVar.a();
                return;
            }
        } catch (Throwable th) {
            aVar.a();
            throw th;
        }
        aVar.a();
        throw th;
    }

    @Override // d1.d
    public final String getDatabaseName() {
        return this.f18217m.getDatabaseName();
    }

    @Override // d1.d
    public final void setWriteAheadLoggingEnabled(boolean z10) {
        this.f18217m.setWriteAheadLoggingEnabled(z10);
    }

    @Override // y0.o
    public final d1.d x() {
        return this.f18217m;
    }
}
