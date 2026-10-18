package c1;

import a7.f;
import a7.l;
import a7.p;
import b7.i;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.FileChannel;
import y6.e;
import y6.n;

/* JADX INFO: compiled from: EncryptedFile.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f3807a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n f3808b;

    /* JADX INFO: renamed from: c1.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: EncryptedFile.java */
    public static final class C0070a extends FileInputStream {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final InputStream f3809h;

        public C0070a(FileDescriptor fileDescriptor, InputStream inputStream) {
            super(fileDescriptor);
            this.f3809h = inputStream;
        }

        @Override // java.io.FileInputStream, java.io.InputStream
        public final int available() throws IOException {
            return this.f3809h.available();
        }

        @Override // java.io.FileInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            this.f3809h.close();
        }

        @Override // java.io.FileInputStream
        public final FileChannel getChannel() {
            throw new UnsupportedOperationException("For encrypted files, please open the relevant FileInput/FileOutputStream.");
        }

        @Override // java.io.InputStream
        public final synchronized void mark(int i10) {
            this.f3809h.mark(i10);
        }

        @Override // java.io.InputStream
        public final boolean markSupported() {
            return this.f3809h.markSupported();
        }

        @Override // java.io.FileInputStream, java.io.InputStream
        public final int read() throws IOException {
            return this.f3809h.read();
        }

        @Override // java.io.InputStream
        public final synchronized void reset() throws IOException {
            this.f3809h.reset();
        }

        @Override // java.io.FileInputStream, java.io.InputStream
        public final long skip(long j10) throws IOException {
            return this.f3809h.skip(j10);
        }

        @Override // java.io.FileInputStream, java.io.InputStream
        public final int read(byte[] bArr) throws IOException {
            return this.f3809h.read(bArr);
        }

        @Override // java.io.FileInputStream, java.io.InputStream
        public final int read(byte[] bArr, int i10, int i11) throws IOException {
            return this.f3809h.read(bArr, i10, i11);
        }
    }

    /* JADX INFO: compiled from: EncryptedFile.java */
    public static final class b extends FileOutputStream {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final OutputStream f3810h;

        public b(FileDescriptor fileDescriptor, OutputStream outputStream) {
            super(fileDescriptor);
            this.f3810h = outputStream;
        }

        @Override // java.io.FileOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            this.f3810h.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public final void flush() throws IOException {
            this.f3810h.flush();
        }

        @Override // java.io.FileOutputStream
        public final FileChannel getChannel() {
            throw new UnsupportedOperationException("For encrypted files, please open the relevant FileInput/FileOutputStream.");
        }

        @Override // java.io.FileOutputStream, java.io.OutputStream
        public final void write(byte[] bArr) throws IOException {
            this.f3810h.write(bArr);
        }

        @Override // java.io.FileOutputStream, java.io.OutputStream
        public final void write(int i10) throws IOException {
            this.f3810h.write(i10);
        }

        @Override // java.io.FileOutputStream, java.io.OutputStream
        public final void write(byte[] bArr, int i10, int i11) throws IOException {
            this.f3810h.write(bArr, i10, i11);
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'i' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX INFO: compiled from: EncryptedFile.java */
    public static final class c {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final c f3811i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final /* synthetic */ c[] f3812j;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final e f3813h;

        static {
            f.a aVarF = f.F();
            aVarF.j();
            f.y((f) aVarF.f3549i);
            aVarF.j();
            f.z((f) aVarF.f3549i);
            aVarF.j();
            f.A((f) aVarF.f3549i);
            f fVarH = aVarF.h();
            a7.e.a aVarC = a7.e.C();
            aVarC.j();
            a7.e.z((a7.e) aVarC.f3549i);
            aVarC.j();
            a7.e.y((a7.e) aVarC.f3549i, fVarH);
            a7.e eVarH = aVarC.h();
            new c7.b();
            byte[] bArrL = eVarH.l();
            l.a aVarE = l.E();
            aVarE.j();
            l.y((l) aVarE.f3549i);
            i iVarL = i.l(bArrL, 0, bArrL.length);
            aVarE.j();
            l.z((l) aVarE.f3549i, iVarL);
            p pVar = p.RAW;
            aVarE.j();
            l.A((l) aVarE.f3549i, pVar);
            c cVar = new c(new e(aVarE.h()));
            f3811i = cVar;
            f3812j = new c[]{cVar};
        }

        public c(e eVar) {
            super("AES256_GCM_HKDF_4KB", 0);
            this.f3813h = eVar;
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) f3812j.clone();
        }
    }

    public a(File file, n nVar) {
        this.f3807a = file;
        this.f3808b = nVar;
    }
}
