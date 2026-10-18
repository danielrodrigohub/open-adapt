package cd;

import android.content.Context;
import fd.o;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import ld.i;
import p4.h;
import qd.p;

/* JADX INFO: compiled from: EncryptedAndroidFileSystem.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g f4362a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineDispatcher f4363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Mutex f4364c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final File f4365d;

    /* JADX INFO: compiled from: EncryptedAndroidFileSystem.kt */
    @ld.e(c = "com.nike.persistence.implementation.repositories.EncryptedAndroidFileSystem$readBytes$2", f = "EncryptedAndroidFileSystem.kt", l = {91}, m = "invokeSuspend")
    public static final class a extends i implements p<CoroutineScope, jd.d<? super byte[]>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Mutex f4366h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public d f4367i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public String f4368j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f4369k;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final /* synthetic */ String f4371m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, jd.d<? super a> dVar) {
            super(2, dVar);
            this.f4371m = str;
        }

        @Override // ld.a
        public final jd.d<o> create(Object obj, jd.d<?> dVar) {
            return d.this.new a(this.f4371m, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super byte[]> dVar) {
            return ((a) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            d dVar;
            Mutex mutex;
            String str;
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f4369k;
            if (i10 == 0) {
                d3.e.p(obj);
                dVar = d.this;
                Mutex mutex2 = dVar.f4364c;
                String str2 = this.f4371m;
                this.f4366h = mutex2;
                this.f4367i = dVar;
                this.f4368j = str2;
                this.f4369k = 1;
                if (mutex2.lock(null, this) == aVar) {
                    return aVar;
                }
                mutex = mutex2;
                str = str2;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str = this.f4368j;
                dVar = this.f4367i;
                mutex = this.f4366h;
                d3.e.p(obj);
            }
            try {
                InputStream inputStreamC = d.f(dVar, str).c();
                BufferedInputStream bufferedInputStream = inputStreamC instanceof BufferedInputStream ? (BufferedInputStream) inputStreamC : new BufferedInputStream(inputStreamC, 8192);
                try {
                    h.j(bufferedInputStream, "<this>");
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(8192, bufferedInputStream.available()));
                    androidx.lifecycle.o.h(bufferedInputStream, byteArrayOutputStream);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    h.i(byteArray, "buffer.toByteArray()");
                    d3.e.d(bufferedInputStream, null);
                    mutex.unlock(null);
                    return byteArray;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        d3.e.d(bufferedInputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                mutex.unlock(null);
                throw th3;
            }
        }
    }

    /* JADX INFO: compiled from: EncryptedAndroidFileSystem.kt */
    @ld.e(c = "com.nike.persistence.implementation.repositories.EncryptedAndroidFileSystem$readText$2", f = "EncryptedAndroidFileSystem.kt", l = {91}, m = "invokeSuspend")
    public static final class b extends i implements p<CoroutineScope, jd.d<? super String>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Mutex f4372h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public d f4373i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public String f4374j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f4375k;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final /* synthetic */ String f4377m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, jd.d<? super b> dVar) {
            super(2, dVar);
            this.f4377m = str;
        }

        @Override // ld.a
        public final jd.d<o> create(Object obj, jd.d<?> dVar) {
            return d.this.new b(this.f4377m, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super String> dVar) {
            return ((b) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            d dVar;
            Mutex mutex;
            String str;
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f4375k;
            if (i10 == 0) {
                d3.e.p(obj);
                dVar = d.this;
                Mutex mutex2 = dVar.f4364c;
                String str2 = this.f4377m;
                this.f4372h = mutex2;
                this.f4373i = dVar;
                this.f4374j = str2;
                this.f4375k = 1;
                if (mutex2.lock(null, this) == aVar) {
                    return aVar;
                }
                mutex = mutex2;
                str = str2;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str = this.f4374j;
                dVar = this.f4373i;
                mutex = this.f4372h;
                d3.e.p(obj);
            }
            try {
                Reader inputStreamReader = new InputStreamReader(d.f(dVar, str).c(), yd.a.f19171b);
                BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
                try {
                    String strE = androidx.lifecycle.o.E(bufferedReader);
                    d3.e.d(bufferedReader, null);
                    mutex.unlock(null);
                    return strE;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        d3.e.d(bufferedReader, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                mutex.unlock(null);
                throw th3;
            }
        }
    }

    /* JADX INFO: compiled from: EncryptedAndroidFileSystem.kt */
    @ld.e(c = "com.nike.persistence.implementation.repositories.EncryptedAndroidFileSystem$writeText$2", f = "EncryptedAndroidFileSystem.kt", l = {91}, m = "invokeSuspend")
    public static final class c extends i implements p<CoroutineScope, jd.d<? super o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Mutex f4378h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public d f4379i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public String f4380j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public String f4381k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f4382l;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final /* synthetic */ String f4384n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final /* synthetic */ String f4385o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, String str2, jd.d<? super c> dVar) {
            super(2, dVar);
            this.f4384n = str;
            this.f4385o = str2;
        }

        @Override // ld.a
        public final jd.d<o> create(Object obj, jd.d<?> dVar) {
            return d.this.new c(this.f4384n, this.f4385o, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super o> dVar) {
            return ((c) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            d dVar;
            Mutex mutex;
            String str;
            String str2;
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f4382l;
            if (i10 == 0) {
                d3.e.p(obj);
                dVar = d.this;
                mutex = dVar.f4364c;
                str = this.f4384n;
                String str3 = this.f4385o;
                this.f4378h = mutex;
                this.f4379i = dVar;
                this.f4380j = str;
                this.f4381k = str3;
                this.f4382l = 1;
                if (mutex.lock(null, this) == aVar) {
                    return aVar;
                }
                str2 = str3;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str2 = this.f4381k;
                str = this.f4380j;
                dVar = this.f4379i;
                mutex = this.f4378h;
                d3.e.p(obj);
            }
            try {
                OutputStream outputStreamB = dVar.f4362a.a(dVar.f4365d, str, true).b();
                BufferedOutputStream bufferedOutputStream = outputStreamB instanceof BufferedOutputStream ? (BufferedOutputStream) outputStreamB : new BufferedOutputStream(outputStreamB, 8192);
                try {
                    Charset charset = yd.a.f19171b;
                    if (str2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                    }
                    byte[] bytes = str2.getBytes(charset);
                    h.i(bytes, "(this as java.lang.String).getBytes(charset)");
                    bufferedOutputStream.write(bytes);
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                    o oVar = o.f7408a;
                    d3.e.d(bufferedOutputStream, null);
                    mutex.unlock(null);
                    return oVar;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        d3.e.d(bufferedOutputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                mutex.unlock(null);
                throw th3;
            }
        }
    }

    public d(Context context, cd.a aVar) {
        cd.c cVar = new cd.c(context);
        CoroutineDispatcher io = Dispatchers.getIO();
        h.j(context, "context");
        h.j(aVar, "nonEncryptedFileSystem");
        h.j(io, "ioDispatcher");
        this.f4362a = cVar;
        this.f4363b = io;
        this.f4364c = MutexKt.Mutex$default(false, 1, null);
        this.f4365d = aVar.f4346a;
    }

    public static final f f(d dVar, String str) throws FileNotFoundException {
        f fVarA = dVar.f4362a.a(dVar.f4365d, str, false);
        File file = new File(fVarA.a());
        if (file.exists()) {
            return fVarA;
        }
        StringBuilder sbC = a0.b.c("File with path=");
        sbC.append((Object) file.getPath());
        sbC.append(" does not exist");
        throw new FileNotFoundException(sbC.toString());
    }

    @Override // cd.e
    public final Object a(String str, String str2, jd.d<? super o> dVar) {
        Object objWithContext = BuildersKt.withContext(this.f4363b, new c(str, str2, null), dVar);
        return objWithContext == kd.a.COROUTINE_SUSPENDED ? objWithContext : o.f7408a;
    }

    @Override // cd.e
    public final Object b(String str, jd.d<? super byte[]> dVar) {
        return BuildersKt.withContext(this.f4363b, new a(str, null), dVar);
    }

    @Override // cd.e
    public final Object d(String str, jd.d<? super String> dVar) {
        return BuildersKt.withContext(this.f4363b, new b(str, null), dVar);
    }
}
