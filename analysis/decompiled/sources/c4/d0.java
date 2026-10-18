package c4;

import java.util.Collections;
import java.util.List;
import n3.i1;

/* JADX INFO: compiled from: TsPayloadReader.java */
/* JADX INFO: loaded from: classes.dex */
public interface d0 {

    /* JADX INFO: compiled from: TsPayloadReader.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f3945a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f3946b;

        public a(String str, byte[] bArr) {
            this.f3945a = str;
            this.f3946b = bArr;
        }
    }

    /* JADX INFO: compiled from: TsPayloadReader.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f3947a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List<a> f3948b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f3949c;

        public b(int i10, String str, List<a> list, byte[] bArr) {
            this.f3947a = str;
            this.f3948b = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.f3949c = bArr;
        }
    }

    /* JADX INFO: compiled from: TsPayloadReader.java */
    public interface c {
        d0 a(int i10, b bVar);
    }

    /* JADX INFO: compiled from: TsPayloadReader.java */
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f3950a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f3951b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f3952c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f3953d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f3954e;

        public d(int i10, int i11) {
            this(Integer.MIN_VALUE, i10, i11);
        }

        public final void a() {
            int i10 = this.f3953d;
            this.f3953d = i10 == Integer.MIN_VALUE ? this.f3951b : i10 + this.f3952c;
            this.f3954e = this.f3950a + this.f3953d;
        }

        public final String b() {
            if (this.f3953d != Integer.MIN_VALUE) {
                return this.f3954e;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }

        public final int c() {
            int i10 = this.f3953d;
            if (i10 != Integer.MIN_VALUE) {
                return i10;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }

        public d(int i10, int i11, int i12) {
            String str;
            if (i10 != Integer.MIN_VALUE) {
                str = i10 + "/";
            } else {
                str = "";
            }
            this.f3950a = str;
            this.f3951b = i11;
            this.f3952c = i12;
            this.f3953d = Integer.MIN_VALUE;
            this.f3954e = "";
        }
    }

    void a();

    void b(m5.d0 d0Var, s3.j jVar, d dVar);

    void c(m5.w wVar, int i10) throws i1;
}
