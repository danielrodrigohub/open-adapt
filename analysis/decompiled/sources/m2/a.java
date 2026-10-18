package m2;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.StrictMode;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Closeable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final File f10283h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final File f10284i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final File f10285j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final File f10286k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f10288m;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public BufferedWriter f10291p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f10293r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f10290o = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final LinkedHashMap<String, d> f10292q = new LinkedHashMap<>(0, 0.75f, true);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f10294s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ThreadPoolExecutor f10295t = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b());

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Callable<Void> f10296u = new CallableC0202a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f10287l = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f10289n = 1;

    /* JADX INFO: renamed from: m2.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DiskLruCache.java */
    public class CallableC0202a implements Callable<Void> {
        public CallableC0202a() {
        }

        @Override // java.util.concurrent.Callable
        public final Void call() throws Exception {
            synchronized (a.this) {
                a aVar = a.this;
                if (aVar.f10291p == null) {
                    return null;
                }
                aVar.r0();
                if (a.this.k0()) {
                    a.this.p0();
                    a.this.f10293r = 0;
                }
                return null;
            }
        }
    }

    /* JADX INFO: compiled from: DiskLruCache.java */
    public static final class b implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public final synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }
    }

    /* JADX INFO: compiled from: DiskLruCache.java */
    public final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final d f10298a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean[] f10299b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f10300c;

        public c(d dVar) {
            this.f10298a = dVar;
            this.f10299b = dVar.f10306e ? null : new boolean[a.this.f10289n];
        }

        public final void a() throws IOException {
            a.x(a.this, this, false);
        }

        public final File b() throws IOException {
            File file;
            synchronized (a.this) {
                d dVar = this.f10298a;
                if (dVar.f10307f != this) {
                    throw new IllegalStateException();
                }
                if (!dVar.f10306e) {
                    this.f10299b[0] = true;
                }
                file = dVar.f10305d[0];
                a.this.f10283h.mkdirs();
            }
            return file;
        }
    }

    /* JADX INFO: compiled from: DiskLruCache.java */
    public final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f10302a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long[] f10303b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public File[] f10304c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public File[] f10305d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f10306e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public c f10307f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f10308g;

        public d(String str) {
            this.f10302a = str;
            int i10 = a.this.f10289n;
            this.f10303b = new long[i10];
            this.f10304c = new File[i10];
            this.f10305d = new File[i10];
            StringBuilder sb2 = new StringBuilder(str);
            sb2.append('.');
            int length = sb2.length();
            for (int i11 = 0; i11 < a.this.f10289n; i11++) {
                sb2.append(i11);
                this.f10304c[i11] = new File(a.this.f10283h, sb2.toString());
                sb2.append(".tmp");
                this.f10305d[i11] = new File(a.this.f10283h, sb2.toString());
                sb2.setLength(length);
            }
        }

        public final String a() throws IOException {
            StringBuilder sb2 = new StringBuilder();
            for (long j10 : this.f10303b) {
                sb2.append(SafeJsonPrimitive.NULL_CHAR);
                sb2.append(j10);
            }
            return sb2.toString();
        }

        public final IOException b(String[] strArr) throws IOException {
            StringBuilder sbC = a0.b.c("unexpected journal line: ");
            sbC.append(Arrays.toString(strArr));
            throw new IOException(sbC.toString());
        }
    }

    /* JADX INFO: compiled from: DiskLruCache.java */
    public final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final File[] f10310a;

        public e(File[] fileArr) {
            this.f10310a = fileArr;
        }
    }

    public a(File file, long j10) {
        this.f10283h = file;
        this.f10284i = new File(file, "journal");
        this.f10285j = new File(file, "journal.tmp");
        this.f10286k = new File(file, "journal.bkp");
        this.f10288m = j10;
    }

    @TargetApi(26)
    public static void f0(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void g0(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    @TargetApi(26)
    public static void i0(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static a l0(File file, long j10) throws IOException {
        if (j10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                q0(file2, file3, false);
            }
        }
        a aVar = new a(file, j10);
        if (aVar.f10284i.exists()) {
            try {
                aVar.n0();
                aVar.m0();
                return aVar;
            } catch (IOException e10) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e10.getMessage() + ", removing");
                aVar.close();
                m2.c.a(aVar.f10283h);
            }
        }
        file.mkdirs();
        a aVar2 = new a(file, j10);
        aVar2.p0();
        return aVar2;
    }

    public static void q0(File file, File file2, boolean z10) throws IOException {
        if (z10) {
            g0(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public static void x(a aVar, c cVar, boolean z10) throws IOException {
        synchronized (aVar) {
            d dVar = cVar.f10298a;
            if (dVar.f10307f != cVar) {
                throw new IllegalStateException();
            }
            if (z10 && !dVar.f10306e) {
                for (int i10 = 0; i10 < aVar.f10289n; i10++) {
                    if (!cVar.f10299b[i10]) {
                        cVar.a();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i10);
                    }
                    if (!dVar.f10305d[i10].exists()) {
                        cVar.a();
                        return;
                    }
                }
            }
            for (int i11 = 0; i11 < aVar.f10289n; i11++) {
                File file = dVar.f10305d[i11];
                if (!z10) {
                    g0(file);
                } else if (file.exists()) {
                    File file2 = dVar.f10304c[i11];
                    file.renameTo(file2);
                    long j10 = dVar.f10303b[i11];
                    long length = file2.length();
                    dVar.f10303b[i11] = length;
                    aVar.f10290o = (aVar.f10290o - j10) + length;
                }
            }
            aVar.f10293r++;
            dVar.f10307f = null;
            if (dVar.f10306e || z10) {
                dVar.f10306e = true;
                aVar.f10291p.append((CharSequence) "CLEAN");
                aVar.f10291p.append(SafeJsonPrimitive.NULL_CHAR);
                aVar.f10291p.append((CharSequence) dVar.f10302a);
                aVar.f10291p.append((CharSequence) dVar.a());
                aVar.f10291p.append('\n');
                if (z10) {
                    long j11 = aVar.f10294s;
                    aVar.f10294s = 1 + j11;
                    dVar.f10308g = j11;
                }
            } else {
                aVar.f10292q.remove(dVar.f10302a);
                aVar.f10291p.append((CharSequence) "REMOVE");
                aVar.f10291p.append(SafeJsonPrimitive.NULL_CHAR);
                aVar.f10291p.append((CharSequence) dVar.f10302a);
                aVar.f10291p.append('\n');
            }
            i0(aVar.f10291p);
            if (aVar.f10290o > aVar.f10288m || aVar.k0()) {
                aVar.f10295t.submit(aVar.f10296u);
            }
        }
    }

    public final void Y() {
        if (this.f10291p == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        if (this.f10291p == null) {
            return;
        }
        Iterator it = new ArrayList(this.f10292q.values()).iterator();
        while (it.hasNext()) {
            c cVar = ((d) it.next()).f10307f;
            if (cVar != null) {
                cVar.a();
            }
        }
        r0();
        f0(this.f10291p);
        this.f10291p = null;
    }

    public final c h0(String str) throws IOException {
        c cVar;
        synchronized (this) {
            Y();
            d dVar = this.f10292q.get(str);
            cVar = null;
            if (dVar == null) {
                dVar = new d(str);
                this.f10292q.put(str, dVar);
            } else if (dVar.f10307f != null) {
            }
            cVar = new c(dVar);
            dVar.f10307f = cVar;
            this.f10291p.append((CharSequence) "DIRTY");
            this.f10291p.append(SafeJsonPrimitive.NULL_CHAR);
            this.f10291p.append((CharSequence) str);
            this.f10291p.append('\n');
            i0(this.f10291p);
        }
        return cVar;
    }

    public final synchronized e j0(String str) throws IOException {
        Y();
        d dVar = this.f10292q.get(str);
        if (dVar == null) {
            return null;
        }
        if (!dVar.f10306e) {
            return null;
        }
        for (File file : dVar.f10304c) {
            if (!file.exists()) {
                return null;
            }
        }
        this.f10293r++;
        this.f10291p.append((CharSequence) "READ");
        this.f10291p.append(SafeJsonPrimitive.NULL_CHAR);
        this.f10291p.append((CharSequence) str);
        this.f10291p.append('\n');
        if (k0()) {
            this.f10295t.submit(this.f10296u);
        }
        return new e(dVar.f10304c);
    }

    public final boolean k0() {
        int i10 = this.f10293r;
        return i10 >= 2000 && i10 >= this.f10292q.size();
    }

    public final void m0() throws IOException {
        g0(this.f10285j);
        Iterator<d> it = this.f10292q.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            int i10 = 0;
            if (next.f10307f == null) {
                while (i10 < this.f10289n) {
                    this.f10290o += next.f10303b[i10];
                    i10++;
                }
            } else {
                next.f10307f = null;
                while (i10 < this.f10289n) {
                    g0(next.f10304c[i10]);
                    g0(next.f10305d[i10]);
                    i10++;
                }
                it.remove();
            }
        }
    }

    public final void n0() throws IOException {
        m2.b bVar = new m2.b(new FileInputStream(this.f10284i), m2.c.f10317a);
        try {
            String strY = bVar.Y();
            String strY2 = bVar.Y();
            String strY3 = bVar.Y();
            String strY4 = bVar.Y();
            String strY5 = bVar.Y();
            if (!"libcore.io.DiskLruCache".equals(strY) || !"1".equals(strY2) || !Integer.toString(this.f10287l).equals(strY3) || !Integer.toString(this.f10289n).equals(strY4) || !"".equals(strY5)) {
                throw new IOException("unexpected journal header: [" + strY + ", " + strY2 + ", " + strY4 + ", " + strY5 + "]");
            }
            int i10 = 0;
            while (true) {
                try {
                    o0(bVar.Y());
                    i10++;
                } catch (EOFException unused) {
                    this.f10293r = i10 - this.f10292q.size();
                    if (bVar.f10315l == -1) {
                        p0();
                    } else {
                        this.f10291p = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f10284i, true), m2.c.f10317a));
                    }
                    try {
                        bVar.close();
                        return;
                    } catch (RuntimeException e10) {
                        throw e10;
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            try {
                bVar.close();
            } catch (RuntimeException e11) {
                throw e11;
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    public final void o0(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException(androidx.recyclerview.widget.d.c("unexpected journal line: ", str));
        }
        int i10 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i10);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i10);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                this.f10292q.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i10, iIndexOf2);
        }
        d dVar = this.f10292q.get(strSubstring);
        if (dVar == null) {
            dVar = new d(strSubstring);
            this.f10292q.put(strSubstring, dVar);
        }
        if (iIndexOf2 == -1 || iIndexOf != 5 || !str.startsWith("CLEAN")) {
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                dVar.f10307f = new c(dVar);
                return;
            } else {
                if (iIndexOf2 != -1 || iIndexOf != 4 || !str.startsWith("READ")) {
                    throw new IOException(androidx.recyclerview.widget.d.c("unexpected journal line: ", str));
                }
                return;
            }
        }
        String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
        dVar.f10306e = true;
        dVar.f10307f = null;
        if (strArrSplit.length != a.this.f10289n) {
            dVar.b(strArrSplit);
            throw null;
        }
        for (int i11 = 0; i11 < strArrSplit.length; i11++) {
            try {
                dVar.f10303b[i11] = Long.parseLong(strArrSplit[i11]);
            } catch (NumberFormatException unused) {
                dVar.b(strArrSplit);
                throw null;
            }
        }
    }

    public final synchronized void p0() throws IOException {
        try {
            BufferedWriter bufferedWriter = this.f10291p;
            if (bufferedWriter != null) {
                f0(bufferedWriter);
            }
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f10285j), m2.c.f10317a));
            try {
                bufferedWriter2.write("libcore.io.DiskLruCache");
                bufferedWriter2.write("\n");
                bufferedWriter2.write("1");
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.f10287l));
                bufferedWriter2.write("\n");
                bufferedWriter2.write(Integer.toString(this.f10289n));
                bufferedWriter2.write("\n");
                bufferedWriter2.write("\n");
                for (d dVar : this.f10292q.values()) {
                    if (dVar.f10307f != null) {
                        bufferedWriter2.write("DIRTY " + dVar.f10302a + '\n');
                    } else {
                        bufferedWriter2.write("CLEAN " + dVar.f10302a + dVar.a() + '\n');
                    }
                }
                f0(bufferedWriter2);
                if (this.f10284i.exists()) {
                    q0(this.f10284i, this.f10286k, true);
                }
                q0(this.f10285j, this.f10284i, false);
                this.f10286k.delete();
                this.f10291p = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f10284i, true), m2.c.f10317a));
            } catch (Throwable th) {
                f0(bufferedWriter2);
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void r0() throws IOException {
        while (this.f10290o > this.f10288m) {
            String key = this.f10292q.entrySet().iterator().next().getKey();
            synchronized (this) {
                Y();
                d dVar = this.f10292q.get(key);
                if (dVar != null && dVar.f10307f == null) {
                    for (int i10 = 0; i10 < this.f10289n; i10++) {
                        File file = dVar.f10304c[i10];
                        if (file.exists() && !file.delete()) {
                            throw new IOException("failed to delete " + file);
                        }
                        long j10 = this.f10290o;
                        long[] jArr = dVar.f10303b;
                        this.f10290o = j10 - jArr[i10];
                        jArr[i10] = 0;
                    }
                    this.f10293r++;
                    this.f10291p.append((CharSequence) "REMOVE");
                    this.f10291p.append(SafeJsonPrimitive.NULL_CHAR);
                    this.f10291p.append((CharSequence) key);
                    this.f10291p.append('\n');
                    this.f10292q.remove(key);
                    if (k0()) {
                        this.f10295t.submit(this.f10296u);
                    }
                }
            }
        }
    }
}
