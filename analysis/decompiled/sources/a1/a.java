package a1;

import java.io.File;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: CopyLock.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Map<String, Lock> f31e = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f32a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lock f33b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f34c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public FileChannel f35d;

    /* JADX WARN: Type inference failed for: r4v1, types: [java.util.HashMap, java.util.Map<java.lang.String, java.util.concurrent.locks.Lock>] */
    public a(String str, File file, boolean z10) {
        Lock reentrantLock;
        File file2 = new File(file, androidx.recyclerview.widget.d.c(str, ".lck"));
        this.f32a = file2;
        String absolutePath = file2.getAbsolutePath();
        ?? r10 = f31e;
        synchronized (r10) {
            reentrantLock = (Lock) r10.get(absolutePath);
            if (reentrantLock == null) {
                reentrantLock = new ReentrantLock();
                r10.put(absolutePath, reentrantLock);
            }
        }
        this.f33b = reentrantLock;
        this.f34c = z10;
    }

    public final void a() {
        FileChannel fileChannel = this.f35d;
        if (fileChannel != null) {
            try {
                fileChannel.close();
            } catch (IOException unused) {
            }
        }
        this.f33b.unlock();
    }
}
