package fa;

import java.util.Arrays;

/* JADX INFO: compiled from: FirmwareDownload.kt */
/* JADX INFO: loaded from: classes.dex */
public interface g {

    /* JADX INFO: compiled from: FirmwareDownload.kt */
    public static final class a implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f7159a;

        public a(String str) {
            p4.h.j(str, "message");
            this.f7159a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && p4.h.c(this.f7159a, ((a) obj).f7159a);
        }

        public final int hashCode() {
            return this.f7159a.hashCode();
        }

        public final String toString() {
            return a0.d.c("Error(message=", this.f7159a, ")");
        }
    }

    /* JADX INFO: compiled from: FirmwareDownload.kt */
    public static final class b implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final fb.c f7160a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f7161b;

        public b(fb.c cVar, byte[] bArr) {
            p4.h.j(cVar, "version");
            p4.h.j(bArr, "firmware");
            this.f7160a = cVar;
            this.f7161b = bArr;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!p4.h.c(b.class, obj != null ? obj.getClass() : null)) {
                return false;
            }
            p4.h.h(obj, "null cannot be cast to non-null type com.nike.android.adaptkit.model.firmware.FirmwareDownload.FirmwareFile");
            return Arrays.equals(this.f7161b, ((b) obj).f7161b);
        }

        public final int hashCode() {
            return Arrays.hashCode(this.f7161b);
        }

        public final String toString() {
            return "FirmwareFile(version=" + this.f7160a + ", firmware=" + Arrays.toString(this.f7161b) + ")";
        }
    }

    /* JADX INFO: compiled from: FirmwareDownload.kt */
    public static final class c implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f7162a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f7163b;

        public c(String str, String str2) {
            p4.h.j(str, "expected");
            p4.h.j(str2, "actual");
            this.f7162a = str;
            this.f7163b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return p4.h.c(this.f7162a, cVar.f7162a) && p4.h.c(this.f7163b, cVar.f7163b);
        }

        public final int hashCode() {
            return this.f7163b.hashCode() + (this.f7162a.hashCode() * 31);
        }

        public final String toString() {
            return a0.b.a("InvalidMD5(expected=", this.f7162a, ", actual=", this.f7163b, ")");
        }
    }
}
