package cd;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: SecureFile.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4358a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c1.a f4359b;

    public b(String str, c1.a aVar) {
        this.f4358a = str;
        this.f4359b = aVar;
    }

    @Override // cd.f
    public final String a() {
        return this.f4358a;
    }

    @Override // cd.f
    public final FileOutputStream b() throws GeneralSecurityException, IOException {
        c1.a aVar = this.f4359b;
        if (aVar.f3807a.exists()) {
            StringBuilder sbC = a0.b.c("output file already exists, please use a new file: ");
            sbC.append(aVar.f3807a.getName());
            throw new IOException(sbC.toString());
        }
        FileOutputStream fileOutputStream = new FileOutputStream(aVar.f3807a);
        return new c1.a.b(fileOutputStream.getFD(), aVar.f3808b.a(fileOutputStream, aVar.f3807a.getName().getBytes(StandardCharsets.UTF_8)));
    }

    @Override // cd.f
    public final FileInputStream c() throws GeneralSecurityException, IOException {
        c1.a aVar = this.f4359b;
        if (aVar.f3807a.exists()) {
            FileInputStream fileInputStream = new FileInputStream(aVar.f3807a);
            return new c1.a.C0070a(fileInputStream.getFD(), aVar.f3808b.b(fileInputStream, aVar.f3807a.getName().getBytes(StandardCharsets.UTF_8)));
        }
        StringBuilder sbC = a0.b.c("file doesn't exist: ");
        sbC.append(aVar.f3807a.getName());
        throw new IOException(sbC.toString());
    }
}
