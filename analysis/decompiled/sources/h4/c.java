package h4;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: compiled from: EventMessageEncoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ByteArrayOutputStream f8181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DataOutputStream f8182b;

    public c() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f8181a = byteArrayOutputStream;
        this.f8182b = new DataOutputStream(byteArrayOutputStream);
    }

    public final byte[] a(a aVar) {
        this.f8181a.reset();
        try {
            DataOutputStream dataOutputStream = this.f8182b;
            dataOutputStream.writeBytes(aVar.f8175h);
            dataOutputStream.writeByte(0);
            String str = aVar.f8176i;
            if (str == null) {
                str = "";
            }
            DataOutputStream dataOutputStream2 = this.f8182b;
            dataOutputStream2.writeBytes(str);
            dataOutputStream2.writeByte(0);
            this.f8182b.writeLong(aVar.f8177j);
            this.f8182b.writeLong(aVar.f8178k);
            this.f8182b.write(aVar.f8179l);
            this.f8182b.flush();
            return this.f8181a.toByteArray();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
