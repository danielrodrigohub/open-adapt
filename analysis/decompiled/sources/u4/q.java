package u4;

import android.text.TextUtils;
import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m5.d0;
import m5.w;
import n3.i1;
import n3.s0;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import s3.t;
import s3.u;

/* JADX INFO: compiled from: WebvttExtractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class q implements s3.h {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Pattern f15852g = Pattern.compile("LOCAL:([^,]+)");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Pattern f15853h = Pattern.compile("MPEGTS:(-?\\d+)");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d0 f15855b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public s3.j f15857d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f15859f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w f15856c = new w();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f15858e = new byte[1024];

    public q(String str, d0 d0Var) {
        this.f15854a = str;
        this.f15855b = d0Var;
    }

    @Override // s3.h
    public final void a() {
    }

    @Override // s3.h
    public final void b(long j10, long j11) {
        throw new IllegalStateException();
    }

    @RequiresNonNull({"output"})
    public final s3.w c(long j10) {
        s3.w wVarP = this.f15857d.p(0, 3);
        s0.a aVar = new s0.a();
        aVar.f11705k = "text/vtt";
        aVar.f11697c = this.f15854a;
        aVar.f11709o = j10;
        wVarP.b(aVar.a());
        this.f15857d.b();
        return wVarP;
    }

    @Override // s3.h
    public final int e(s3.i iVar, t tVar) throws IOException {
        String strF;
        Objects.requireNonNull(this.f15857d);
        int iA = (int) iVar.a();
        int i10 = this.f15859f;
        byte[] bArr = this.f15858e;
        if (i10 == bArr.length) {
            this.f15858e = Arrays.copyOf(bArr, ((iA != -1 ? iA : bArr.length) * 3) / 2);
        }
        byte[] bArr2 = this.f15858e;
        int i11 = this.f15859f;
        int iB = iVar.b(bArr2, i11, bArr2.length - i11);
        if (iB != -1) {
            int i12 = this.f15859f + iB;
            this.f15859f = i12;
            if (iA == -1 || i12 != iA) {
                return 0;
            }
        }
        w wVar = new w(this.f15858e);
        i5.i.d(wVar);
        String strF2 = wVar.f();
        long j10 = 0;
        long jC = 0;
        while (true) {
            Matcher matcher = null;
            if (TextUtils.isEmpty(strF2)) {
                while (true) {
                    String strF3 = wVar.f();
                    if (strF3 == null) {
                        break;
                    }
                    if (i5.i.f8812a.matcher(strF3).matches()) {
                        do {
                            strF = wVar.f();
                            if (strF == null) {
                                break;
                            }
                        } while (!strF.isEmpty());
                    } else {
                        Matcher matcher2 = i5.g.f8787a.matcher(strF3);
                        if (matcher2.matches()) {
                            matcher = matcher2;
                            break;
                        }
                    }
                }
                if (matcher == null) {
                    c(0L);
                    return -1;
                }
                String strGroup = matcher.group(1);
                Objects.requireNonNull(strGroup);
                long jC2 = i5.i.c(strGroup);
                long jB = this.f15855b.b(((((j10 + jC2) - jC) * 90000) / 1000000) % 8589934592L);
                s3.w wVarC = c(jB - jC2);
                this.f15856c.B(this.f15858e, this.f15859f);
                wVarC.f(this.f15856c, this.f15859f);
                wVarC.c(jB, 1, this.f15859f, 0, null);
                return -1;
            }
            if (strF2.startsWith("X-TIMESTAMP-MAP")) {
                Matcher matcher3 = f15852g.matcher(strF2);
                if (!matcher3.find()) {
                    throw i1.a("X-TIMESTAMP-MAP doesn't contain local timestamp: " + strF2, null);
                }
                Matcher matcher4 = f15853h.matcher(strF2);
                if (!matcher4.find()) {
                    throw i1.a("X-TIMESTAMP-MAP doesn't contain media timestamp: " + strF2, null);
                }
                String strGroup2 = matcher3.group(1);
                Objects.requireNonNull(strGroup2);
                jC = i5.i.c(strGroup2);
                String strGroup3 = matcher4.group(1);
                Objects.requireNonNull(strGroup3);
                j10 = (Long.parseLong(strGroup3) * 1000000) / 90000;
            }
            strF2 = wVar.f();
        }
    }

    @Override // s3.h
    public final void g(s3.j jVar) {
        this.f15857d = jVar;
        jVar.j(new u.b(-9223372036854775807L));
    }

    @Override // s3.h
    public final boolean j(s3.i iVar) throws IOException {
        s3.e eVar = (s3.e) iVar;
        eVar.p(this.f15858e, 0, 6, false);
        this.f15856c.B(this.f15858e, 6);
        if (i5.i.a(this.f15856c)) {
            return true;
        }
        eVar.p(this.f15858e, 6, 3, false);
        this.f15856c.B(this.f15858e, 9);
        return i5.i.a(this.f15856c);
    }
}
