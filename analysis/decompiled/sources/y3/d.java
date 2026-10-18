package y3;

import android.util.Pair;
import android.util.SparseArray;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import m5.g0;
import m5.p;
import m5.q;
import m5.s;
import m5.t;
import m5.w;
import n3.i1;
import n3.s0;
import n3.z0;
import okhttp3.internal.http.HttpStatusCodesKt;
import okhttp3.internal.ws.RealWebSocket;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import s3.h;
import s3.i;
import s3.j;
import s3.u;
import s3.x;
import u6.v;

/* JADX INFO: compiled from: MatroskaExtractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements h {

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final byte[] f18525c0;
    public static final byte[] d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final byte[] f18526e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final byte[] f18527f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final UUID f18528g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final Map<String, Integer> f18529h0;
    public long A;
    public long B;
    public q C;
    public q D;
    public boolean E;
    public boolean F;
    public int G;
    public long H;
    public long I;
    public int J;
    public int K;
    public int[] L;
    public int M;
    public int N;
    public int O;
    public int P;
    public boolean Q;
    public long R;
    public int S;
    public int T;
    public int U;
    public boolean V;
    public boolean W;
    public boolean X;
    public int Y;
    public byte Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f18530a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f18531a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f f18532b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public j f18533b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseArray<b> f18534c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f18535d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final w f18536e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final w f18537f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final w f18538g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final w f18539h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final w f18540i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final w f18541j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final w f18542k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final w f18543l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final w f18544m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final w f18545n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ByteBuffer f18546o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f18547p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f18548q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f18549r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f18550s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f18551t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public b f18552u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f18553v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f18554w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f18555x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f18556y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f18557z;

    /* JADX INFO: compiled from: MatroskaExtractor.java */
    public final class a implements y3.b {
        public a() {
        }
    }

    /* JADX INFO: compiled from: MatroskaExtractor.java */
    public static final class b {
        public byte[] N;
        public x T;
        public boolean U;
        public s3.w X;
        public int Y;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f18559a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f18560b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f18561c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f18562d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f18563e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f18564f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f18565g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f18566h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public byte[] f18567i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public s3.w.a f18568j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public byte[] f18569k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public r3.d f18570l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f18571m = -1;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f18572n = -1;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f18573o = -1;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f18574p = -1;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f18575q = 0;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f18576r = -1;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public float f18577s = 0.0f;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public float f18578t = 0.0f;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public float f18579u = 0.0f;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public byte[] f18580v = null;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public int f18581w = -1;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public boolean f18582x = false;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f18583y = -1;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public int f18584z = -1;
        public int A = -1;
        public int B = 1000;
        public int C = HttpStatusCodesKt.HTTP_OK;
        public float D = -1.0f;
        public float E = -1.0f;
        public float F = -1.0f;
        public float G = -1.0f;
        public float H = -1.0f;
        public float I = -1.0f;
        public float J = -1.0f;
        public float K = -1.0f;
        public float L = -1.0f;
        public float M = -1.0f;
        public int O = 1;
        public int P = -1;
        public int Q = 8000;
        public long R = 0;
        public long S = 0;
        public boolean V = true;
        public String W = "eng";

        public static void a(b bVar) {
            Objects.requireNonNull(bVar.X);
        }

        @EnsuresNonNull({"codecPrivate"})
        public final byte[] b(String str) throws i1 {
            byte[] bArr = this.f18569k;
            if (bArr != null) {
                return bArr;
            }
            throw i1.a("Missing CodecPrivate for codec " + str, null);
        }
    }

    static {
        z0 z0Var = z0.f11842f;
        f18525c0 = new byte[]{49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
        d0 = g0.F("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
        f18526e0 = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        f18527f0 = new byte[]{87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
        f18528g0 = new UUID(72057594037932032L, -9223371306706625679L);
        HashMap map = new HashMap();
        ca.a.e(0, map, "htc_video_rotA-000", 90, "htc_video_rotA-090", 180, "htc_video_rotA-180", 270, "htc_video_rotA-270");
        f18529h0 = Collections.unmodifiableMap(map);
    }

    public d(int i10) {
        y3.a aVar = new y3.a();
        this.f18548q = -1L;
        this.f18549r = -9223372036854775807L;
        this.f18550s = -9223372036854775807L;
        this.f18551t = -9223372036854775807L;
        this.f18557z = -1L;
        this.A = -1L;
        this.B = -9223372036854775807L;
        this.f18530a = aVar;
        aVar.f18519d = new a();
        this.f18535d = (i10 & 1) == 0;
        this.f18532b = new f();
        this.f18534c = new SparseArray<>();
        this.f18538g = new w(4);
        this.f18539h = new w(ByteBuffer.allocate(4).putInt(-1).array());
        this.f18540i = new w(4);
        this.f18536e = new w(t.f10435a);
        this.f18537f = new w(4);
        this.f18541j = new w();
        this.f18542k = new w();
        this.f18543l = new w(8);
        this.f18544m = new w();
        this.f18545n = new w();
        this.L = new int[1];
    }

    public static byte[] i(long j10, String str, long j11) {
        m5.a.a(j10 != -9223372036854775807L);
        int i10 = (int) (j10 / 3600000000L);
        long j12 = j10 - ((((long) i10) * 3600) * 1000000);
        int i11 = (int) (j12 / 60000000);
        long j13 = j12 - ((((long) i11) * 60) * 1000000);
        int i12 = (int) (j13 / 1000000);
        return g0.F(String.format(Locale.US, str, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf((int) ((j13 - (((long) i12) * 1000000)) / j11))));
    }

    @Override // s3.h
    public final void a() {
    }

    @Override // s3.h
    public final void b(long j10, long j11) {
        this.B = -9223372036854775807L;
        this.G = 0;
        y3.a aVar = (y3.a) this.f18530a;
        aVar.f18520e = 0;
        aVar.f18517b.clear();
        f fVar = aVar.f18518c;
        fVar.f18589b = 0;
        fVar.f18590c = 0;
        f fVar2 = this.f18532b;
        fVar2.f18589b = 0;
        fVar2.f18590c = 0;
        l();
        for (int i10 = 0; i10 < this.f18534c.size(); i10++) {
            x xVar = this.f18534c.valueAt(i10).T;
            if (xVar != null) {
                xVar.f15089b = false;
                xVar.f15090c = 0;
            }
        }
    }

    @EnsuresNonNull({"cueTimesUs", "cueClusterPositions"})
    public final void c(int i10) throws i1 {
        if (this.C == null || this.D == null) {
            throw i1.a("Element " + i10 + " must be in a Cues", null);
        }
    }

    @EnsuresNonNull({"currentTrack"})
    public final void d(int i10) throws i1 {
        if (this.f18552u != null) {
            return;
        }
        throw i1.a("Element " + i10 + " must be in a TrackEntry", null);
    }

    /* JADX WARN: Code duplicated, block: B:134:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:136:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:139:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:140:0x0308  */
    /* JADX WARN: Code duplicated, block: B:142:0x0311  */
    /* JADX WARN: Code duplicated, block: B:144:0x0321  */
    /* JADX WARN: Code duplicated, block: B:146:0x0327  */
    /* JADX WARN: Code duplicated, block: B:147:0x032a  */
    /* JADX WARN: Code duplicated, block: B:150:0x032e  */
    /* JADX WARN: Code duplicated, block: B:152:0x0340  */
    /* JADX WARN: Code duplicated, block: B:154:0x0352  */
    /* JADX WARN: Code duplicated, block: B:155:0x0355  */
    /* JADX WARN: Code duplicated, block: B:158:0x0359  */
    /* JADX WARN: Code duplicated, block: B:161:0x0365  */
    /* JADX WARN: Code duplicated, block: B:162:0x0372  */
    /* JADX WARN: Code duplicated, block: B:164:0x0375  */
    /* JADX WARN: Code duplicated, block: B:167:0x037d  */
    /* JADX WARN: Code duplicated, block: B:171:0x03a6 A[LOOP:4: B:168:0x0381->B:171:0x03a6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:173:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:175:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:178:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:180:0x03db  */
    /* JADX WARN: Code duplicated, block: B:182:0x03df  */
    /* JADX WARN: Code duplicated, block: B:187:0x0403 A[LOOP:7: B:185:0x03ff->B:187:0x0403, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:190:0x0419  */
    /* JADX WARN: Code duplicated, block: B:192:0x0425 A[LOOP:6: B:181:0x03dd->B:192:0x0425, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:196:0x0437  */
    /* JADX WARN: Code duplicated, block: B:210:0x048d  */
    /* JADX WARN: Code duplicated, block: B:216:0x049f  */
    /* JADX WARN: Code duplicated, block: B:222:0x04c3 A[LOOP:8: B:222:0x04c3->B:224:0x04c9, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:224:0x04c9 A[LOOP:8: B:222:0x04c3->B:224:0x04c9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:226:0x04f6 A[LOOP:9: B:226:0x04f6->B:228:0x04fd, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:228:0x04fd A[LOOP:9: B:226:0x04f6->B:228:0x04fd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:232:0x0513  */
    /* JADX WARN: Code duplicated, block: B:234:0x0519  */
    /* JADX WARN: Code duplicated, block: B:236:0x0520  */
    /* JADX WARN: Code duplicated, block: B:237:0x0523  */
    /* JADX WARN: Code duplicated, block: B:239:0x052b  */
    /* JADX WARN: Code duplicated, block: B:241:0x0531 A[LOOP:10: B:238:0x0529->B:241:0x0531, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:245:0x0544  */
    /* JADX WARN: Code duplicated, block: B:247:0x0548  */
    /* JADX WARN: Code duplicated, block: B:249:0x054c  */
    /* JADX WARN: Code duplicated, block: B:252:0x0552  */
    /* JADX WARN: Code duplicated, block: B:253:0x055a  */
    /* JADX WARN: Code duplicated, block: B:254:0x0562  */
    /* JADX WARN: Code duplicated, block: B:261:0x058d  */
    /* JADX WARN: Code duplicated, block: B:265:0x05ae  */
    /* JADX WARN: Code duplicated, block: B:267:0x05b4  */
    /* JADX WARN: Code duplicated, block: B:269:0x05c8  */
    /* JADX WARN: Code duplicated, block: B:271:0x05cc  */
    /* JADX WARN: Code duplicated, block: B:272:0x05cf  */
    /* JADX WARN: Code duplicated, block: B:274:0x05d4  */
    /* JADX WARN: Code duplicated, block: B:275:0x05d8  */
    /* JADX WARN: Code duplicated, block: B:276:0x05e2  */
    /* JADX WARN: Code duplicated, block: B:278:0x05e8  */
    /* JADX WARN: Code duplicated, block: B:280:0x05eb  */
    /* JADX WARN: Code duplicated, block: B:282:0x05ee  */
    /* JADX WARN: Code duplicated, block: B:285:0x05f3  */
    /* JADX WARN: Code duplicated, block: B:286:0x05f9  */
    /* JADX WARN: Code duplicated, block: B:287:0x05ff  */
    /* JADX WARN: Code duplicated, block: B:288:0x0605  */
    /* JADX WARN: Code duplicated, block: B:289:0x060c  */
    /* JADX WARN: Code duplicated, block: B:290:0x0610  */
    /* JADX WARN: Code duplicated, block: B:291:0x061a  */
    /* JADX WARN: Code duplicated, block: B:292:0x0623  */
    /* JADX WARN: Code duplicated, block: B:293:0x062c  */
    /* JADX WARN: Code duplicated, block: B:294:0x0636  */
    /* JADX WARN: Code duplicated, block: B:296:0x0641  */
    /* JADX WARN: Code duplicated, block: B:297:0x0643  */
    /* JADX WARN: Code duplicated, block: B:299:0x0648  */
    /* JADX WARN: Code duplicated, block: B:300:0x0652  */
    /* JADX WARN: Code duplicated, block: B:301:0x065c  */
    /* JADX WARN: Code duplicated, block: B:302:0x0666  */
    /* JADX WARN: Code duplicated, block: B:304:0x066c  */
    /* JADX WARN: Code duplicated, block: B:306:0x066f  */
    /* JADX WARN: Code duplicated, block: B:308:0x0672  */
    /* JADX WARN: Code duplicated, block: B:311:0x0678  */
    /* JADX WARN: Code duplicated, block: B:312:0x067e  */
    /* JADX WARN: Code duplicated, block: B:313:0x0684  */
    /* JADX WARN: Code duplicated, block: B:314:0x068b  */
    /* JADX WARN: Code duplicated, block: B:315:0x0692  */
    /* JADX WARN: Code duplicated, block: B:316:0x0699  */
    /* JADX WARN: Code duplicated, block: B:321:0x06bb  */
    /* JADX WARN: Code duplicated, block: B:326:0x06dd  */
    /* JADX WARN: Code duplicated, block: B:331:0x06ff  */
    /* JADX WARN: Code duplicated, block: B:338:0x0727  */
    /* JADX WARN: Code duplicated, block: B:343:0x0749  */
    /* JADX WARN: Code duplicated, block: B:344:0x0753  */
    /* JADX WARN: Code duplicated, block: B:345:0x0758  */
    /* JADX WARN: Code duplicated, block: B:347:0x075d  */
    /* JADX WARN: Code duplicated, block: B:348:0x0769  */
    /* JADX WARN: Code duplicated, block: B:349:0x076e  */
    /* JADX WARN: Code duplicated, block: B:350:0x0776  */
    /* JADX WARN: Code duplicated, block: B:351:0x0780  */
    /* JADX WARN: Code duplicated, block: B:352:0x078a  */
    /* JADX WARN: Code duplicated, block: B:353:0x0798  */
    /* JADX WARN: Code duplicated, block: B:354:0x07a2  */
    /* JADX WARN: Code duplicated, block: B:355:0x07ac  */
    /* JADX WARN: Code duplicated, block: B:356:0x07b4  */
    /* JADX WARN: Code duplicated, block: B:358:0x07bf  */
    /* JADX WARN: Code duplicated, block: B:359:0x07c1  */
    /* JADX WARN: Code duplicated, block: B:361:0x07c6  */
    /* JADX WARN: Code duplicated, block: B:362:0x07d0  */
    /* JADX WARN: Code duplicated, block: B:363:0x07da  */
    /* JADX WARN: Code duplicated, block: B:364:0x07e3  */
    /* JADX WARN: Code duplicated, block: B:366:0x07f3  */
    /* JADX WARN: Code duplicated, block: B:367:0x07f8  */
    /* JADX WARN: Code duplicated, block: B:369:0x0803  */
    /* JADX WARN: Code duplicated, block: B:370:0x0808  */
    /* JADX WARN: Code duplicated, block: B:372:0x080f  */
    /* JADX WARN: Code duplicated, block: B:375:0x0813  */
    /* JADX WARN: Code duplicated, block: B:376:0x0818  */
    /* JADX WARN: Code duplicated, block: B:377:0x081e  */
    /* JADX WARN: Code duplicated, block: B:382:0x083f  */
    /* JADX WARN: Code duplicated, block: B:389:0x0879  */
    /* JADX WARN: Code duplicated, block: B:391:0x089f  */
    /* JADX WARN: Code duplicated, block: B:393:0x08a3  */
    /* JADX WARN: Code duplicated, block: B:395:0x08a7  */
    /* JADX WARN: Code duplicated, block: B:397:0x08ab  */
    /* JADX WARN: Code duplicated, block: B:399:0x08af  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:401:0x08b3  */
    /* JADX WARN: Code duplicated, block: B:403:0x08b8  */
    /* JADX WARN: Code duplicated, block: B:405:0x08bd  */
    /* JADX WARN: Code duplicated, block: B:415:0x08d7  */
    /* JADX WARN: Code duplicated, block: B:416:0x08e7  */
    /* JADX WARN: Code duplicated, block: B:417:0x08f6  */
    /* JADX WARN: Code duplicated, block: B:425:0x0910  */
    /* JADX WARN: Code duplicated, block: B:426:0x0919  */
    /* JADX WARN: Code duplicated, block: B:427:0x0922  */
    /* JADX WARN: Code duplicated, block: B:429:0x092b  */
    /* JADX WARN: Code duplicated, block: B:42:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:430:0x092f  */
    /* JADX WARN: Code duplicated, block: B:431:0x0938  */
    /* JADX WARN: Code duplicated, block: B:43:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:449:0x0970 A[LOOP:1: B:8:0x001d->B:449:0x0970, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:44:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:464:0x01c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:467:0x04a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:468:0x045d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:469:0x0455 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:471:0x0599 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:473:0x0864 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:474:0x06a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:475:0x06c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:476:0x06e5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:479:0x072f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:480:0x0825 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:481:0x084a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:483:0x096a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:485:0x096c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:488:0x00da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:493:0x03a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:495:0x0465 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:498:0x042e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:499:0x03eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:500:0x0416 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:501:0x04f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:502:0x050d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:503:0x0533 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:53:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:55:0x00e8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x00ea A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:66:0x0118  */
    /* JADX WARN: Code duplicated, block: B:67:0x011f  */
    /* JADX WARN: Code duplicated, block: B:70:0x012e  */
    /* JADX WARN: Code duplicated, block: B:72:0x0132  */
    /* JADX WARN: Code duplicated, block: B:73:0x0135  */
    /* JADX WARN: Code duplicated, block: B:75:0x013a  */
    /* JADX WARN: Code duplicated, block: B:76:0x0144  */
    /* JADX WARN: Code duplicated, block: B:77:0x014e  */
    /* JADX WARN: Code duplicated, block: B:78:0x0157  */
    /* JADX WARN: Code duplicated, block: B:79:0x0160  */
    /* JADX WARN: Code duplicated, block: B:80:0x0169  */
    /* JADX WARN: Code duplicated, block: B:81:0x0172  */
    /* JADX WARN: Code duplicated, block: B:82:0x017b  */
    /* JADX WARN: Code duplicated, block: B:83:0x0184  */
    /* JADX WARN: Code duplicated, block: B:84:0x018d  */
    /* JADX WARN: Code duplicated, block: B:85:0x0196  */
    /* JADX WARN: Code duplicated, block: B:86:0x019f  */
    /* JADX WARN: Code duplicated, block: B:87:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:88:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:89:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:94:0x01d8  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v10, types: [int] */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v18 */
    /* JADX WARN: Type inference failed for: r1v48, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v74 */
    /* JADX WARN: Type inference failed for: r4v80 */
    /* JADX WARN: Type inference failed for: r4v81 */
    /* JADX WARN: Type inference failed for: r4v86 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v100 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v30 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [int] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v49 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9, types: [int] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // s3.h
    public final int e(i iVar, s3.t tVar) throws IOException {
        int i10;
        ?? r10;
        long jU;
        int i11;
        long j10;
        d dVar;
        long j11;
        ?? r11;
        long j12;
        int i12;
        long jA;
        d dVar2;
        boolean z10;
        int i13;
        boolean z11;
        int i14;
        int i15;
        int iC;
        int iB;
        long j13;
        int i16;
        int i17;
        byte[] bArr;
        String str;
        int i18;
        d dVar3;
        int i19;
        int i20;
        d dVar4;
        b bVar;
        int i21;
        int i22;
        ?? r13;
        int i23;
        int[] iArr;
        int i24;
        int i25;
        byte b10;
        int i26;
        int i27;
        i iVar2;
        ?? r12;
        int i28;
        int i29;
        int i30;
        char c10;
        ?? r14;
        long j14;
        int i31;
        int i32;
        int i33;
        byte b11;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int[] iArr2;
        boolean z12;
        int i39;
        int[] iArr3;
        long j15;
        int i40;
        int i41;
        long jA2;
        double dLongBitsToDouble;
        d dVar5;
        boolean z13;
        boolean z14 = false;
        this.F = false;
        ?? r15 = 1;
        i iVar3 = iVar;
        int i42 = 1;
        while (true) {
            int i43 = -1;
            if (r15 != 0 && !this.F) {
                y3.a aVar = (y3.a) this.f18530a;
                m5.a.f(aVar.f18519d);
                while (true) {
                    y3.a.C0319a c0319aPeek = aVar.f18517b.peek();
                    if (c0319aPeek != null && iVar.u() >= c0319aPeek.f18524b) {
                        d.this.h(aVar.f18517b.pop().f18523a);
                    } else if (aVar.f18520e == 0) {
                        long jC = aVar.f18518c.c(iVar3, i42, z14, 4);
                        if (jC == -2) {
                            iVar.i();
                            while (true) {
                                iVar3.s(aVar.f18516a, z14 ? 1 : 0, 4);
                                int iB2 = f.b(aVar.f18516a[z14 ? 1 : 0]);
                                if (iB2 != i43 && iB2 <= 4) {
                                    int iA = (int) f.a(aVar.f18516a, iB2, z14);
                                    Objects.requireNonNull(d.this);
                                    if (((iA == 357149030 || iA == 524531317 || iA == 475249515 || iA == 374648427) ? i42 : z14 ? 1 : 0) != 0) {
                                        iVar3.k(iB2);
                                        jC = iA;
                                    }
                                }
                                iVar3.k(i42);
                            }
                        }
                        if (jC == -1) {
                            r11 = z14 ? 1 : 0;
                        } else {
                            aVar.f18521f = (int) jC;
                            aVar.f18520e = i42;
                            if (aVar.f18520e == i42) {
                                aVar.f18522g = aVar.f18518c.c(iVar3, z14, i42, 8);
                                aVar.f18520e = 2;
                            }
                            y3.b bVar2 = aVar.f18519d;
                            i10 = aVar.f18521f;
                            Objects.requireNonNull(d.this);
                            switch (i10) {
                                case 131:
                                case 136:
                                case 155:
                                case 159:
                                case 176:
                                case 179:
                                case 186:
                                case 215:
                                case 231:
                                case 238:
                                case 241:
                                case 251:
                                case 16871:
                                case 16980:
                                case 17029:
                                case 17143:
                                case 18401:
                                case 18408:
                                case 20529:
                                case 20530:
                                case 21420:
                                case 21432:
                                case 21680:
                                case 21682:
                                case 21690:
                                case 21930:
                                case 21945:
                                case 21946:
                                case 21947:
                                case 21948:
                                case 21949:
                                case 21998:
                                case 22186:
                                case 22203:
                                case 25188:
                                case 30114:
                                case 30321:
                                case 2352003:
                                case 2807729:
                                    r10 = 2;
                                    break;
                                case 134:
                                case 17026:
                                case 21358:
                                case 2274716:
                                    r10 = 3;
                                    break;
                                case 160:
                                case 166:
                                case 174:
                                case 183:
                                case 187:
                                case 224:
                                case 225:
                                case 16868:
                                case 18407:
                                case 19899:
                                case 20532:
                                case 20533:
                                case 21936:
                                case 21968:
                                case 25152:
                                case 28032:
                                case 30113:
                                case 30320:
                                case 290298740:
                                case 357149030:
                                case 374648427:
                                case 408125543:
                                case 440786851:
                                case 475249515:
                                case 524531317:
                                    r10 = i42;
                                    break;
                                case 161:
                                case 163:
                                case 165:
                                case 16877:
                                case 16981:
                                case 18402:
                                case 21419:
                                case 25506:
                                case 30322:
                                    r10 = 4;
                                    break;
                                case 181:
                                case 17545:
                                case 21969:
                                case 21970:
                                case 21971:
                                case 21972:
                                case 21973:
                                case 21974:
                                case 21975:
                                case 21976:
                                case 21977:
                                case 21978:
                                case 30323:
                                case 30324:
                                case 30325:
                                    r10 = 5;
                                    break;
                                default:
                                    r10 = z14 ? 1 : 0;
                                    break;
                            }
                            if (r10 != 0) {
                                if (r10 != i42) {
                                    jU = iVar.u();
                                    aVar.f18517b.push(new y3.a.C0319a(aVar.f18521f, aVar.f18522g + jU));
                                    y3.b bVar3 = aVar.f18519d;
                                    i11 = aVar.f18521f;
                                    j10 = aVar.f18522g;
                                    dVar = d.this;
                                    m5.a.f(dVar.f18533b0);
                                    if (i11 != 160) {
                                        z14 = false;
                                        dVar.Q = false;
                                        dVar.R = 0L;
                                    } else if (i11 != 174) {
                                        z14 = false;
                                        dVar.f18552u = new b();
                                    } else if (i11 != 187) {
                                        if (i11 != 19899) {
                                            dVar.f18554w = -1;
                                            dVar.f18555x = -1L;
                                        } else if (i11 != 20533) {
                                            dVar.d(i11);
                                            dVar.f18552u.f18566h = true;
                                        } else if (i11 != 21968) {
                                            dVar.d(i11);
                                            dVar.f18552u.f18582x = true;
                                        } else if (i11 != 408125543) {
                                            j11 = dVar.f18548q;
                                            if (j11 == -1 && j11 != jU) {
                                                throw i1.a("Multiple Segment elements not supported", null);
                                            }
                                            dVar.f18548q = jU;
                                            dVar.f18547p = j10;
                                        } else if (i11 != 475249515) {
                                            dVar.C = new q();
                                            dVar.D = new q();
                                        } else if (i11 == 524531317 && !dVar.f18553v) {
                                            if (dVar.f18535d || dVar.f18557z == -1) {
                                                dVar.f18533b0.j(new u.b(dVar.f18551t));
                                                dVar.f18553v = true;
                                            } else {
                                                dVar.f18556y = true;
                                            }
                                        }
                                        z14 = false;
                                    } else {
                                        z14 = false;
                                        dVar.E = false;
                                    }
                                    aVar.f18520e = z14 ? 1 : 0;
                                } else if (r10 != 2) {
                                    j12 = aVar.f18522g;
                                    if (j12 <= 8) {
                                        StringBuilder sbC = a0.b.c("Invalid integer size: ");
                                        sbC.append(aVar.f18522g);
                                        throw i1.a(sbC.toString(), null);
                                    }
                                    y3.b bVar4 = aVar.f18519d;
                                    i12 = aVar.f18521f;
                                    jA = aVar.a(iVar3, (int) j12);
                                    dVar2 = d.this;
                                    Objects.requireNonNull(dVar2);
                                    if (i12 != 20529) {
                                        if (i12 != 20530) {
                                            switch (i12) {
                                                case 131:
                                                    dVar2.d(i12);
                                                    dVar2.f18552u.f18562d = (int) jA;
                                                    break;
                                                case 136:
                                                    dVar2.d(i12);
                                                    b bVar5 = dVar2.f18552u;
                                                    if (jA == 1) {
                                                        z10 = true;
                                                    } else {
                                                        z10 = false;
                                                    }
                                                    bVar5.V = z10;
                                                    break;
                                                case 155:
                                                    dVar2.I = dVar2.m(jA);
                                                    break;
                                                case 159:
                                                    dVar2.d(i12);
                                                    dVar2.f18552u.O = (int) jA;
                                                    break;
                                                case 176:
                                                    dVar2.d(i12);
                                                    dVar2.f18552u.f18571m = (int) jA;
                                                    break;
                                                case 179:
                                                    dVar2.c(i12);
                                                    dVar2.C.a(dVar2.m(jA));
                                                    break;
                                                case 186:
                                                    dVar2.d(i12);
                                                    dVar2.f18552u.f18572n = (int) jA;
                                                    break;
                                                case 215:
                                                    dVar2.d(i12);
                                                    dVar2.f18552u.f18561c = (int) jA;
                                                    break;
                                                case 231:
                                                    dVar2.B = dVar2.m(jA);
                                                    break;
                                                case 238:
                                                    dVar2.P = (int) jA;
                                                    break;
                                                case 241:
                                                    if (!dVar2.E) {
                                                        dVar2.c(i12);
                                                        dVar2.D.a(jA);
                                                        dVar2.E = true;
                                                    }
                                                    break;
                                                case 251:
                                                    dVar2.Q = true;
                                                    break;
                                                case 16871:
                                                    dVar2.d(i12);
                                                    dVar2.f18552u.f18565g = (int) jA;
                                                    break;
                                                case 16980:
                                                    if (jA != 3) {
                                                        throw i1.a("ContentCompAlgo " + jA + " not supported", null);
                                                    }
                                                    break;
                                                case 17029:
                                                    if (jA >= 1 || jA > 2) {
                                                        throw i1.a("DocTypeReadVersion " + jA + " not supported", null);
                                                    }
                                                    break;
                                                case 17143:
                                                    if (jA != 1) {
                                                        throw i1.a("EBMLReadVersion " + jA + " not supported", null);
                                                    }
                                                    break;
                                                case 18401:
                                                    if (jA != 5) {
                                                        throw i1.a("ContentEncAlgo " + jA + " not supported", null);
                                                    }
                                                    break;
                                                case 18408:
                                                    if (jA != 1) {
                                                        throw i1.a("AESSettingsCipherMode " + jA + " not supported", null);
                                                    }
                                                    break;
                                                case 21420:
                                                    dVar2.f18555x = jA + dVar2.f18548q;
                                                    break;
                                                case 21432:
                                                    i13 = (int) jA;
                                                    dVar2.d(i12);
                                                    if (i13 != 0) {
                                                        dVar2.f18552u.f18581w = 0;
                                                    } else if (i13 != 1) {
                                                        dVar2.f18552u.f18581w = 2;
                                                    } else if (i13 != 3) {
                                                        dVar2.f18552u.f18581w = 1;
                                                    } else if (i13 == 15) {
                                                        dVar2.f18552u.f18581w = 3;
                                                    }
                                                    break;
                                                case 21680:
                                                    dVar2.d(i12);
                                                    dVar2.f18552u.f18573o = (int) jA;
                                                    break;
                                                case 21682:
                                                    dVar2.d(i12);
                                                    dVar2.f18552u.f18575q = (int) jA;
                                                    break;
                                                case 21690:
                                                    dVar2.d(i12);
                                                    dVar2.f18552u.f18574p = (int) jA;
                                                    break;
                                                case 21930:
                                                    dVar2.d(i12);
                                                    b bVar6 = dVar2.f18552u;
                                                    if (jA == 1) {
                                                        z11 = true;
                                                    } else {
                                                        z11 = false;
                                                    }
                                                    bVar6.U = z11;
                                                    break;
                                                case 21998:
                                                    dVar2.d(i12);
                                                    dVar2.f18552u.f18564f = (int) jA;
                                                    break;
                                                case 22186:
                                                    dVar2.d(i12);
                                                    dVar2.f18552u.R = jA;
                                                    break;
                                                case 22203:
                                                    dVar2.d(i12);
                                                    dVar2.f18552u.S = jA;
                                                    break;
                                                case 25188:
                                                    dVar2.d(i12);
                                                    dVar2.f18552u.P = (int) jA;
                                                    break;
                                                case 30114:
                                                    dVar2.R = jA;
                                                    break;
                                                case 30321:
                                                    dVar2.d(i12);
                                                    i14 = (int) jA;
                                                    if (i14 != 0) {
                                                        dVar2.f18552u.f18576r = 0;
                                                    } else if (i14 != 1) {
                                                        dVar2.f18552u.f18576r = 1;
                                                    } else if (i14 != 2) {
                                                        dVar2.f18552u.f18576r = 2;
                                                    } else if (i14 == 3) {
                                                        dVar2.f18552u.f18576r = 3;
                                                    }
                                                    break;
                                                case 2352003:
                                                    dVar2.d(i12);
                                                    dVar2.f18552u.f18563e = (int) jA;
                                                    break;
                                                case 2807729:
                                                    dVar2.f18549r = jA;
                                                    break;
                                                default:
                                                    switch (i12) {
                                                        case 21945:
                                                            dVar2.d(i12);
                                                            i15 = (int) jA;
                                                            if (i15 != 1) {
                                                                dVar2.f18552u.A = 2;
                                                            } else if (i15 == 2) {
                                                                dVar2.f18552u.A = 1;
                                                            }
                                                            break;
                                                        case 21946:
                                                            dVar2.d(i12);
                                                            iC = n5.b.c((int) jA);
                                                            if (iC != -1) {
                                                                dVar2.f18552u.f18584z = iC;
                                                            }
                                                            break;
                                                        case 21947:
                                                            dVar2.d(i12);
                                                            dVar2.f18552u.f18582x = true;
                                                            iB = n5.b.b((int) jA);
                                                            if (iB != -1) {
                                                                dVar2.f18552u.f18583y = iB;
                                                            }
                                                            break;
                                                        case 21948:
                                                            dVar2.d(i12);
                                                            dVar2.f18552u.B = (int) jA;
                                                            break;
                                                        case 21949:
                                                            dVar2.d(i12);
                                                            dVar2.f18552u.C = (int) jA;
                                                            break;
                                                    }
                                                    break;
                                            }
                                        } else if (jA != 1) {
                                            throw i1.a("ContentEncodingScope " + jA + " not supported", null);
                                        }
                                    } else if (jA != 0) {
                                        throw i1.a("ContentEncodingOrder " + jA + " not supported", null);
                                    }
                                    z14 = false;
                                    aVar.f18520e = 0;
                                } else if (r10 != 3) {
                                    j13 = aVar.f18522g;
                                    if (j13 <= 2147483647L) {
                                        StringBuilder sbC2 = a0.b.c("String element size: ");
                                        sbC2.append(aVar.f18522g);
                                        throw i1.a(sbC2.toString(), null);
                                    }
                                    y3.b bVar7 = aVar.f18519d;
                                    i16 = aVar.f18521f;
                                    i17 = (int) j13;
                                    if (i17 == 0) {
                                        str = "";
                                    } else {
                                        bArr = new byte[i17];
                                        iVar3.readFully(bArr, 0, i17);
                                        while (i17 > 0) {
                                            i18 = i17 - 1;
                                            if (bArr[i18] == 0) {
                                                i17 = i18;
                                            } else {
                                                str = new String(bArr, 0, i17);
                                            }
                                        }
                                        str = new String(bArr, 0, i17);
                                    }
                                    dVar3 = d.this;
                                    Objects.requireNonNull(dVar3);
                                    if (i16 != 134) {
                                        dVar3.d(i16);
                                        dVar3.f18552u.f18560b = str;
                                    } else if (i16 != 17026) {
                                        if (i16 != 21358) {
                                            dVar3.d(i16);
                                            dVar3.f18552u.f18559a = str;
                                        } else if (i16 == 2274716) {
                                            dVar3.d(i16);
                                            dVar3.f18552u.W = str;
                                        }
                                    } else if (!"webm".equals(str) && !"matroska".equals(str)) {
                                        throw i1.a("DocType " + str + " not supported", null);
                                    }
                                    z14 = false;
                                    aVar.f18520e = 0;
                                } else if (r10 != 4) {
                                    y3.b bVar8 = aVar.f18519d;
                                    i19 = aVar.f18521f;
                                    i20 = (int) aVar.f18522g;
                                    dVar4 = d.this;
                                    Objects.requireNonNull(dVar4);
                                    if (i19 != 161 || i19 == 163) {
                                        if (dVar4.G == 0) {
                                            dVar4.M = (int) dVar4.f18532b.c(iVar3, z14, i42, 8);
                                            dVar4.N = dVar4.f18532b.f18590c;
                                            dVar4.I = -9223372036854775807L;
                                            dVar4.G = i42;
                                            dVar4.f18538g.A(z14 ? 1 : 0);
                                        }
                                        bVar = dVar4.f18534c.get(dVar4.M);
                                        if (bVar == null) {
                                            iVar3.k(i20 - dVar4.N);
                                            dVar4.G = z14 ? 1 : 0;
                                        } else {
                                            Objects.requireNonNull(bVar.X);
                                            if (dVar4.G == i42) {
                                                dVar4.k(iVar3, 3);
                                                r13 = (dVar4.f18538g.f10475a[2] & 6) >> i42;
                                                if (r13 == 0) {
                                                    dVar4.K = i42;
                                                    iArr3 = dVar4.L;
                                                    if (iArr3 == null) {
                                                        iArr3 = new int[i42];
                                                    } else if (iArr3.length < i42) {
                                                        iArr3 = new int[Math.max(iArr3.length * 2, (int) i42)];
                                                    }
                                                    dVar4.L = iArr3;
                                                    iArr3[z14 ? 1 : 0] = (i20 - dVar4.N) - 3;
                                                } else {
                                                    dVar4.k(iVar3, 4);
                                                    i23 = (dVar4.f18538g.f10475a[3] & 255) + i42;
                                                    dVar4.K = i23;
                                                    iArr = dVar4.L;
                                                    if (iArr == null) {
                                                        iArr = new int[i23];
                                                    } else if (iArr.length < i23) {
                                                        iArr = new int[Math.max(iArr.length * 2, i23)];
                                                    }
                                                    dVar4.L = iArr;
                                                    if (r13 == 2) {
                                                        int i44 = (i20 - dVar4.N) - 4;
                                                        int i45 = dVar4.K;
                                                        Arrays.fill(iArr, z14 ? 1 : 0, i45, i44 / i45);
                                                    } else {
                                                        i24 = 4;
                                                        if (r13 == i42) {
                                                            i35 = z14 ? 1 : 0;
                                                            i36 = i35;
                                                            while (true) {
                                                                i37 = dVar4.K - 1;
                                                                if (i35 < i37) {
                                                                    dVar4.L[i35] = z14 ? 1 : 0;
                                                                    while (true) {
                                                                        i24 += i42;
                                                                        dVar4.k(iVar3, i24);
                                                                        i38 = dVar4.f18538g.f10475a[i24 - 1] & 255;
                                                                        iArr2 = dVar4.L;
                                                                        iArr2[i35] = iArr2[i35] + i38;
                                                                        z12 = z14;
                                                                        if (i38 != 255) {
                                                                            break;
                                                                        }
                                                                        z14 = z12 ? 1 : 0;
                                                                    }
                                                                    i36 += iArr2[i35];
                                                                    i35++;
                                                                    z14 = z12 ? 1 : 0;
                                                                } else {
                                                                    dVar4.L[i37] = ((i20 - dVar4.N) - i24) - i36;
                                                                }
                                                            }
                                                        } else {
                                                            i25 = z14 ? 1 : 0;
                                                            if (r13 != 3) {
                                                                throw i1.a("Unexpected lacing value: " + ((int) r13), null);
                                                            }
                                                            b10 = 255;
                                                            i26 = 4;
                                                            i27 = i25;
                                                            iVar2 = iVar3;
                                                            r12 = i42;
                                                            i28 = i27;
                                                            while (true) {
                                                                i29 = dVar4.K - 1;
                                                                if (i27 < i29) {
                                                                    dVar4.L[i27] = i28;
                                                                    i26++;
                                                                    dVar4.k(iVar2, i26);
                                                                    i30 = i26 - 1;
                                                                    if (dVar4.f18538g.f10475a[i30] == 0) {
                                                                        throw i1.a("No valid varint length mask found", null);
                                                                    }
                                                                    c10 = '\b';
                                                                    while (true) {
                                                                        if (i28 < c10) {
                                                                            i31 = r14 << (7 - i28);
                                                                            if ((dVar4.f18538g.f10475a[i30] & i31) != 0) {
                                                                                r14 = r12;
                                                                                i32 = i26 + i28;
                                                                                dVar4.k(iVar2, i32);
                                                                                i33 = i30 + 1;
                                                                                b11 = b10;
                                                                                j14 = (~i31) & dVar4.f18538g.f10475a[i30] & b10;
                                                                                while (true) {
                                                                                    i34 = i33;
                                                                                    if (i34 < i32) {
                                                                                        i33 = i34 + 1;
                                                                                        j14 = (j14 << 8) | ((long) (dVar4.f18538g.f10475a[i34] & b11));
                                                                                        b11 = 255;
                                                                                        i32 = i32;
                                                                                    } else {
                                                                                        int i46 = i32;
                                                                                        if (i27 > 0) {
                                                                                            j14 -= (1 << ((i28 * 7) + 6)) - 1;
                                                                                        }
                                                                                        i26 = i46;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                r14 = r12;
                                                                                i28++;
                                                                                c10 = '\b';
                                                                                r14 = 1;
                                                                                b10 = 255;
                                                                                iVar2 = iVar;
                                                                            }
                                                                        } else {
                                                                            r14 = r12;
                                                                            j14 = 0;
                                                                        }
                                                                    }
                                                                    if (j14 >= -2147483648L || j14 > 2147483647L) {
                                                                        throw i1.a("EBML lacing sample size out of range.", null);
                                                                    }
                                                                    int i47 = (int) j14;
                                                                    int[] iArr4 = dVar4.L;
                                                                    if (i27 != 0) {
                                                                        i47 += iArr4[i27 - 1];
                                                                    }
                                                                    iArr4[i27] = i47;
                                                                    i25 += iArr4[i27];
                                                                    i27++;
                                                                    i28 = 0;
                                                                    r12 = 1;
                                                                    b10 = 255;
                                                                    iVar2 = iVar;
                                                                } else {
                                                                    dVar4.L[i29] = ((i20 - dVar4.N) - i26) - i25;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                byte[] bArr2 = dVar4.f18538g.f10475a;
                                                dVar4.H = dVar4.m((bArr2[1] & 255) | (bArr2[0] << 8)) + dVar4.B;
                                                if (bVar.f18562d != 2 || (i19 == 163 && (dVar4.f18538g.f10475a[2] & 128) == 128)) {
                                                    i39 = 1;
                                                } else {
                                                    i39 = 0;
                                                }
                                                dVar4.O = i39;
                                                dVar4.G = 2;
                                                dVar4.J = 0;
                                            }
                                            if (i19 == 163) {
                                                while (true) {
                                                    i22 = dVar4.J;
                                                    if (i22 < dVar4.K) {
                                                        dVar4.f(bVar, ((long) ((dVar4.J * bVar.f18563e) / 1000)) + dVar4.H, dVar4.O, dVar4.n(iVar, bVar, dVar4.L[i22], false), 0);
                                                        dVar4.J++;
                                                    } else {
                                                        z14 = false;
                                                        dVar4.G = 0;
                                                    }
                                                }
                                            } else {
                                                while (true) {
                                                    i21 = dVar4.J;
                                                    if (i21 < dVar4.K) {
                                                        int[] iArr5 = dVar4.L;
                                                        iArr5[i21] = dVar4.n(iVar, bVar, iArr5[i21], true);
                                                        dVar4.J++;
                                                    } else {
                                                        z14 = false;
                                                    }
                                                }
                                            }
                                            iVar3 = iVar;
                                        }
                                    } else if (i19 != 165) {
                                        if (i19 == 16877) {
                                            dVar4.d(i19);
                                            b bVar9 = dVar4.f18552u;
                                            int i48 = bVar9.f18565g;
                                            if (i48 == 1685485123 || i48 == 1685480259) {
                                                byte[] bArr3 = new byte[i20];
                                                bVar9.N = bArr3;
                                                iVar3.readFully(bArr3, z14 ? 1 : 0, i20);
                                            } else {
                                                iVar3.k(i20);
                                            }
                                        } else if (i19 == 16981) {
                                            dVar4.d(i19);
                                            byte[] bArr4 = new byte[i20];
                                            dVar4.f18552u.f18567i = bArr4;
                                            iVar3.readFully(bArr4, z14 ? 1 : 0, i20);
                                        } else if (i19 == 18402) {
                                            byte[] bArr5 = new byte[i20];
                                            iVar3.readFully(bArr5, z14 ? 1 : 0, i20);
                                            dVar4.d(i19);
                                            dVar4.f18552u.f18568j = new s3.w.a(i42, bArr5, z14 ? 1 : 0, z14 ? 1 : 0);
                                        } else if (i19 == 21419) {
                                            Arrays.fill(dVar4.f18540i.f10475a, z14 ? (byte) 1 : (byte) 0);
                                            iVar3.readFully(dVar4.f18540i.f10475a, 4 - i20, i20);
                                            dVar4.f18540i.D(z14 ? 1 : 0);
                                            dVar4.f18554w = (int) dVar4.f18540i.u();
                                        } else if (i19 == 25506) {
                                            dVar4.d(i19);
                                            byte[] bArr6 = new byte[i20];
                                            dVar4.f18552u.f18569k = bArr6;
                                            iVar3.readFully(bArr6, z14 ? 1 : 0, i20);
                                        } else {
                                            if (i19 != 30322) {
                                                throw i1.a("Unexpected id: " + i19, null);
                                            }
                                            dVar4.d(i19);
                                            byte[] bArr7 = new byte[i20];
                                            dVar4.f18552u.f18580v = bArr7;
                                            iVar3.readFully(bArr7, z14 ? 1 : 0, i20);
                                        }
                                    } else if (dVar4.G == 2) {
                                        b bVar10 = dVar4.f18534c.get(dVar4.M);
                                        if (dVar4.P == 4 && "V_VP9".equals(bVar10.f18560b)) {
                                            dVar4.f18545n.A(i20);
                                            iVar3.readFully(dVar4.f18545n.f10475a, z14 ? 1 : 0, i20);
                                        } else {
                                            iVar3.k(i20);
                                        }
                                    }
                                    aVar.f18520e = z14 ? 1 : 0;
                                } else {
                                    if (r10 == 5) {
                                        throw i1.a("Invalid element type " + r10, null);
                                    }
                                    j15 = aVar.f18522g;
                                    if (j15 == 4 && j15 != 8) {
                                        StringBuilder sbC3 = a0.b.c("Invalid float size: ");
                                        sbC3.append(aVar.f18522g);
                                        throw i1.a(sbC3.toString(), null);
                                    }
                                    y3.b bVar11 = aVar.f18519d;
                                    i40 = aVar.f18521f;
                                    i41 = (int) j15;
                                    jA2 = aVar.a(iVar3, i41);
                                    if (i41 == 4) {
                                        dLongBitsToDouble = Float.intBitsToFloat((int) jA2);
                                    } else {
                                        dLongBitsToDouble = Double.longBitsToDouble(jA2);
                                    }
                                    dVar5 = d.this;
                                    Objects.requireNonNull(dVar5);
                                    if (i40 != 181) {
                                        dVar5.d(i40);
                                        dVar5.f18552u.Q = (int) dLongBitsToDouble;
                                    } else if (i40 != 17545) {
                                        switch (i40) {
                                            case 21969:
                                                dVar5.d(i40);
                                                dVar5.f18552u.D = (float) dLongBitsToDouble;
                                                break;
                                            case 21970:
                                                dVar5.d(i40);
                                                dVar5.f18552u.E = (float) dLongBitsToDouble;
                                                break;
                                            case 21971:
                                                dVar5.d(i40);
                                                dVar5.f18552u.F = (float) dLongBitsToDouble;
                                                break;
                                            case 21972:
                                                dVar5.d(i40);
                                                dVar5.f18552u.G = (float) dLongBitsToDouble;
                                                break;
                                            case 21973:
                                                dVar5.d(i40);
                                                dVar5.f18552u.H = (float) dLongBitsToDouble;
                                                break;
                                            case 21974:
                                                dVar5.d(i40);
                                                dVar5.f18552u.I = (float) dLongBitsToDouble;
                                                break;
                                            case 21975:
                                                dVar5.d(i40);
                                                dVar5.f18552u.J = (float) dLongBitsToDouble;
                                                break;
                                            case 21976:
                                                dVar5.d(i40);
                                                dVar5.f18552u.K = (float) dLongBitsToDouble;
                                                break;
                                            case 21977:
                                                dVar5.d(i40);
                                                dVar5.f18552u.L = (float) dLongBitsToDouble;
                                                break;
                                            case 21978:
                                                dVar5.d(i40);
                                                dVar5.f18552u.M = (float) dLongBitsToDouble;
                                                break;
                                            default:
                                                switch (i40) {
                                                    case 30323:
                                                        dVar5.d(i40);
                                                        dVar5.f18552u.f18577s = (float) dLongBitsToDouble;
                                                        break;
                                                    case 30324:
                                                        dVar5.d(i40);
                                                        dVar5.f18552u.f18578t = (float) dLongBitsToDouble;
                                                        break;
                                                    case 30325:
                                                        dVar5.d(i40);
                                                        dVar5.f18552u.f18579u = (float) dLongBitsToDouble;
                                                        break;
                                                }
                                                break;
                                        }
                                    } else {
                                        dVar5.f18550s = (long) dLongBitsToDouble;
                                    }
                                    aVar.f18520e = z14 ? 1 : 0;
                                }
                                r11 = 1;
                            } else {
                                iVar3.k((int) aVar.f18522g);
                                z14 = false;
                                aVar.f18520e = 0;
                                i43 = -1;
                            }
                        }
                    } else {
                        if (aVar.f18520e == i42) {
                            aVar.f18522g = aVar.f18518c.c(iVar3, z14, i42, 8);
                            aVar.f18520e = 2;
                        }
                        y3.b bVar12 = aVar.f18519d;
                        i10 = aVar.f18521f;
                        Objects.requireNonNull(d.this);
                        switch (i10) {
                            case 131:
                            case 136:
                            case 155:
                            case 159:
                            case 176:
                            case 179:
                            case 186:
                            case 215:
                            case 231:
                            case 238:
                            case 241:
                            case 251:
                            case 16871:
                            case 16980:
                            case 17029:
                            case 17143:
                            case 18401:
                            case 18408:
                            case 20529:
                            case 20530:
                            case 21420:
                            case 21432:
                            case 21680:
                            case 21682:
                            case 21690:
                            case 21930:
                            case 21945:
                            case 21946:
                            case 21947:
                            case 21948:
                            case 21949:
                            case 21998:
                            case 22186:
                            case 22203:
                            case 25188:
                            case 30114:
                            case 30321:
                            case 2352003:
                            case 2807729:
                                r10 = 2;
                                break;
                            case 134:
                            case 17026:
                            case 21358:
                            case 2274716:
                                r10 = 3;
                                break;
                            case 160:
                            case 166:
                            case 174:
                            case 183:
                            case 187:
                            case 224:
                            case 225:
                            case 16868:
                            case 18407:
                            case 19899:
                            case 20532:
                            case 20533:
                            case 21936:
                            case 21968:
                            case 25152:
                            case 28032:
                            case 30113:
                            case 30320:
                            case 290298740:
                            case 357149030:
                            case 374648427:
                            case 408125543:
                            case 440786851:
                            case 475249515:
                            case 524531317:
                                r10 = i42;
                                break;
                            case 161:
                            case 163:
                            case 165:
                            case 16877:
                            case 16981:
                            case 18402:
                            case 21419:
                            case 25506:
                            case 30322:
                                r10 = 4;
                                break;
                            case 181:
                            case 17545:
                            case 21969:
                            case 21970:
                            case 21971:
                            case 21972:
                            case 21973:
                            case 21974:
                            case 21975:
                            case 21976:
                            case 21977:
                            case 21978:
                            case 30323:
                            case 30324:
                            case 30325:
                                r10 = 5;
                                break;
                            default:
                                r10 = z14 ? 1 : 0;
                                break;
                        }
                        if (r10 != 0) {
                            if (r10 != i42) {
                                jU = iVar.u();
                                aVar.f18517b.push(new y3.a.C0319a(aVar.f18521f, aVar.f18522g + jU));
                                y3.b bVar13 = aVar.f18519d;
                                i11 = aVar.f18521f;
                                j10 = aVar.f18522g;
                                dVar = d.this;
                                m5.a.f(dVar.f18533b0);
                                if (i11 != 160) {
                                    z14 = false;
                                    dVar.Q = false;
                                    dVar.R = 0L;
                                } else if (i11 != 174) {
                                    z14 = false;
                                    dVar.f18552u = new b();
                                } else if (i11 != 187) {
                                    if (i11 != 19899) {
                                        dVar.f18554w = -1;
                                        dVar.f18555x = -1L;
                                    } else if (i11 != 20533) {
                                        dVar.d(i11);
                                        dVar.f18552u.f18566h = true;
                                    } else if (i11 != 21968) {
                                        dVar.d(i11);
                                        dVar.f18552u.f18582x = true;
                                    } else if (i11 != 408125543) {
                                        j11 = dVar.f18548q;
                                        if (j11 == -1) {
                                        }
                                        dVar.f18548q = jU;
                                        dVar.f18547p = j10;
                                    } else if (i11 != 475249515) {
                                        dVar.C = new q();
                                        dVar.D = new q();
                                    } else if (i11 == 524531317) {
                                        if (dVar.f18535d) {
                                            dVar.f18533b0.j(new u.b(dVar.f18551t));
                                            dVar.f18553v = true;
                                        } else {
                                            dVar.f18533b0.j(new u.b(dVar.f18551t));
                                            dVar.f18553v = true;
                                        }
                                    }
                                    z14 = false;
                                } else {
                                    z14 = false;
                                    dVar.E = false;
                                }
                                aVar.f18520e = z14 ? 1 : 0;
                            } else if (r10 != 2) {
                                j12 = aVar.f18522g;
                                if (j12 <= 8) {
                                    StringBuilder sbC4 = a0.b.c("Invalid integer size: ");
                                    sbC4.append(aVar.f18522g);
                                    throw i1.a(sbC4.toString(), null);
                                }
                                y3.b bVar14 = aVar.f18519d;
                                i12 = aVar.f18521f;
                                jA = aVar.a(iVar3, (int) j12);
                                dVar2 = d.this;
                                Objects.requireNonNull(dVar2);
                                if (i12 != 20529) {
                                    if (i12 != 20530) {
                                        switch (i12) {
                                            case 131:
                                                dVar2.d(i12);
                                                dVar2.f18552u.f18562d = (int) jA;
                                                break;
                                            case 136:
                                                dVar2.d(i12);
                                                b bVar15 = dVar2.f18552u;
                                                if (jA == 1) {
                                                    z10 = true;
                                                } else {
                                                    z10 = false;
                                                }
                                                bVar15.V = z10;
                                                break;
                                            case 155:
                                                dVar2.I = dVar2.m(jA);
                                                break;
                                            case 159:
                                                dVar2.d(i12);
                                                dVar2.f18552u.O = (int) jA;
                                                break;
                                            case 176:
                                                dVar2.d(i12);
                                                dVar2.f18552u.f18571m = (int) jA;
                                                break;
                                            case 179:
                                                dVar2.c(i12);
                                                dVar2.C.a(dVar2.m(jA));
                                                break;
                                            case 186:
                                                dVar2.d(i12);
                                                dVar2.f18552u.f18572n = (int) jA;
                                                break;
                                            case 215:
                                                dVar2.d(i12);
                                                dVar2.f18552u.f18561c = (int) jA;
                                                break;
                                            case 231:
                                                dVar2.B = dVar2.m(jA);
                                                break;
                                            case 238:
                                                dVar2.P = (int) jA;
                                                break;
                                            case 241:
                                                if (!dVar2.E) {
                                                    dVar2.c(i12);
                                                    dVar2.D.a(jA);
                                                    dVar2.E = true;
                                                }
                                                break;
                                            case 251:
                                                dVar2.Q = true;
                                                break;
                                            case 16871:
                                                dVar2.d(i12);
                                                dVar2.f18552u.f18565g = (int) jA;
                                                break;
                                            case 16980:
                                                if (jA != 3) {
                                                    throw i1.a("ContentCompAlgo " + jA + " not supported", null);
                                                }
                                                break;
                                            case 17029:
                                                if (jA >= 1) {
                                                }
                                                throw i1.a("DocTypeReadVersion " + jA + " not supported", null);
                                            case 17143:
                                                if (jA != 1) {
                                                    throw i1.a("EBMLReadVersion " + jA + " not supported", null);
                                                }
                                                break;
                                            case 18401:
                                                if (jA != 5) {
                                                    throw i1.a("ContentEncAlgo " + jA + " not supported", null);
                                                }
                                                break;
                                            case 18408:
                                                if (jA != 1) {
                                                    throw i1.a("AESSettingsCipherMode " + jA + " not supported", null);
                                                }
                                                break;
                                            case 21420:
                                                dVar2.f18555x = jA + dVar2.f18548q;
                                                break;
                                            case 21432:
                                                i13 = (int) jA;
                                                dVar2.d(i12);
                                                if (i13 != 0) {
                                                    dVar2.f18552u.f18581w = 0;
                                                } else if (i13 != 1) {
                                                    dVar2.f18552u.f18581w = 2;
                                                } else if (i13 != 3) {
                                                    dVar2.f18552u.f18581w = 1;
                                                } else if (i13 == 15) {
                                                    dVar2.f18552u.f18581w = 3;
                                                }
                                                break;
                                            case 21680:
                                                dVar2.d(i12);
                                                dVar2.f18552u.f18573o = (int) jA;
                                                break;
                                            case 21682:
                                                dVar2.d(i12);
                                                dVar2.f18552u.f18575q = (int) jA;
                                                break;
                                            case 21690:
                                                dVar2.d(i12);
                                                dVar2.f18552u.f18574p = (int) jA;
                                                break;
                                            case 21930:
                                                dVar2.d(i12);
                                                b bVar16 = dVar2.f18552u;
                                                if (jA == 1) {
                                                    z11 = true;
                                                } else {
                                                    z11 = false;
                                                }
                                                bVar16.U = z11;
                                                break;
                                            case 21998:
                                                dVar2.d(i12);
                                                dVar2.f18552u.f18564f = (int) jA;
                                                break;
                                            case 22186:
                                                dVar2.d(i12);
                                                dVar2.f18552u.R = jA;
                                                break;
                                            case 22203:
                                                dVar2.d(i12);
                                                dVar2.f18552u.S = jA;
                                                break;
                                            case 25188:
                                                dVar2.d(i12);
                                                dVar2.f18552u.P = (int) jA;
                                                break;
                                            case 30114:
                                                dVar2.R = jA;
                                                break;
                                            case 30321:
                                                dVar2.d(i12);
                                                i14 = (int) jA;
                                                if (i14 != 0) {
                                                    dVar2.f18552u.f18576r = 0;
                                                } else if (i14 != 1) {
                                                    dVar2.f18552u.f18576r = 1;
                                                } else if (i14 != 2) {
                                                    dVar2.f18552u.f18576r = 2;
                                                } else if (i14 == 3) {
                                                    dVar2.f18552u.f18576r = 3;
                                                }
                                                break;
                                            case 2352003:
                                                dVar2.d(i12);
                                                dVar2.f18552u.f18563e = (int) jA;
                                                break;
                                            case 2807729:
                                                dVar2.f18549r = jA;
                                                break;
                                            default:
                                                switch (i12) {
                                                    case 21945:
                                                        dVar2.d(i12);
                                                        i15 = (int) jA;
                                                        if (i15 != 1) {
                                                            dVar2.f18552u.A = 2;
                                                        } else if (i15 == 2) {
                                                            dVar2.f18552u.A = 1;
                                                        }
                                                        break;
                                                    case 21946:
                                                        dVar2.d(i12);
                                                        iC = n5.b.c((int) jA);
                                                        if (iC != -1) {
                                                            dVar2.f18552u.f18584z = iC;
                                                        }
                                                        break;
                                                    case 21947:
                                                        dVar2.d(i12);
                                                        dVar2.f18552u.f18582x = true;
                                                        iB = n5.b.b((int) jA);
                                                        if (iB != -1) {
                                                            dVar2.f18552u.f18583y = iB;
                                                        }
                                                        break;
                                                    case 21948:
                                                        dVar2.d(i12);
                                                        dVar2.f18552u.B = (int) jA;
                                                        break;
                                                    case 21949:
                                                        dVar2.d(i12);
                                                        dVar2.f18552u.C = (int) jA;
                                                        break;
                                                }
                                                break;
                                        }
                                    } else if (jA != 1) {
                                        throw i1.a("ContentEncodingScope " + jA + " not supported", null);
                                    }
                                } else if (jA != 0) {
                                    throw i1.a("ContentEncodingOrder " + jA + " not supported", null);
                                }
                                z14 = false;
                                aVar.f18520e = 0;
                            } else if (r10 != 3) {
                                j13 = aVar.f18522g;
                                if (j13 <= 2147483647L) {
                                    StringBuilder sbC5 = a0.b.c("String element size: ");
                                    sbC5.append(aVar.f18522g);
                                    throw i1.a(sbC5.toString(), null);
                                }
                                y3.b bVar17 = aVar.f18519d;
                                i16 = aVar.f18521f;
                                i17 = (int) j13;
                                if (i17 == 0) {
                                    str = "";
                                } else {
                                    bArr = new byte[i17];
                                    iVar3.readFully(bArr, 0, i17);
                                    while (i17 > 0) {
                                        i18 = i17 - 1;
                                        if (bArr[i18] == 0) {
                                            i17 = i18;
                                        } else {
                                            str = new String(bArr, 0, i17);
                                        }
                                    }
                                    str = new String(bArr, 0, i17);
                                }
                                dVar3 = d.this;
                                Objects.requireNonNull(dVar3);
                                if (i16 != 134) {
                                    dVar3.d(i16);
                                    dVar3.f18552u.f18560b = str;
                                } else if (i16 != 17026) {
                                    if (i16 != 21358) {
                                        dVar3.d(i16);
                                        dVar3.f18552u.f18559a = str;
                                    } else if (i16 == 2274716) {
                                        dVar3.d(i16);
                                        dVar3.f18552u.W = str;
                                    }
                                } else if (!"webm".equals(str)) {
                                    throw i1.a("DocType " + str + " not supported", null);
                                }
                                z14 = false;
                                aVar.f18520e = 0;
                            } else if (r10 != 4) {
                                y3.b bVar18 = aVar.f18519d;
                                i19 = aVar.f18521f;
                                i20 = (int) aVar.f18522g;
                                dVar4 = d.this;
                                Objects.requireNonNull(dVar4);
                                if (i19 != 161) {
                                    if (dVar4.G == 0) {
                                        dVar4.M = (int) dVar4.f18532b.c(iVar3, z14, i42, 8);
                                        dVar4.N = dVar4.f18532b.f18590c;
                                        dVar4.I = -9223372036854775807L;
                                        dVar4.G = i42;
                                        dVar4.f18538g.A(z14 ? 1 : 0);
                                    }
                                    bVar = dVar4.f18534c.get(dVar4.M);
                                    if (bVar == null) {
                                        iVar3.k(i20 - dVar4.N);
                                        dVar4.G = z14 ? 1 : 0;
                                    } else {
                                        Objects.requireNonNull(bVar.X);
                                        if (dVar4.G == i42) {
                                            dVar4.k(iVar3, 3);
                                            r13 = (dVar4.f18538g.f10475a[2] & 6) >> i42;
                                            if (r13 == 0) {
                                                dVar4.K = i42;
                                                iArr3 = dVar4.L;
                                                if (iArr3 == null) {
                                                    iArr3 = new int[i42];
                                                } else if (iArr3.length < i42) {
                                                    iArr3 = new int[Math.max(iArr3.length * 2, (int) i42)];
                                                }
                                                dVar4.L = iArr3;
                                                iArr3[z14 ? 1 : 0] = (i20 - dVar4.N) - 3;
                                            } else {
                                                dVar4.k(iVar3, 4);
                                                i23 = (dVar4.f18538g.f10475a[3] & 255) + i42;
                                                dVar4.K = i23;
                                                iArr = dVar4.L;
                                                if (iArr == null) {
                                                    iArr = new int[i23];
                                                } else if (iArr.length < i23) {
                                                    iArr = new int[Math.max(iArr.length * 2, i23)];
                                                }
                                                dVar4.L = iArr;
                                                if (r13 == 2) {
                                                    int i49 = (i20 - dVar4.N) - 4;
                                                    int i410 = dVar4.K;
                                                    Arrays.fill(iArr, z14 ? 1 : 0, i410, i49 / i410);
                                                } else {
                                                    i24 = 4;
                                                    if (r13 == i42) {
                                                        i35 = z14 ? 1 : 0;
                                                        i36 = i35;
                                                        while (true) {
                                                            i37 = dVar4.K - 1;
                                                            if (i35 < i37) {
                                                                dVar4.L[i35] = z14 ? 1 : 0;
                                                                while (true) {
                                                                    i24 += i42;
                                                                    dVar4.k(iVar3, i24);
                                                                    i38 = dVar4.f18538g.f10475a[i24 - 1] & 255;
                                                                    iArr2 = dVar4.L;
                                                                    iArr2[i35] = iArr2[i35] + i38;
                                                                    z12 = z14;
                                                                    if (i38 != 255) {
                                                                        break;
                                                                    }
                                                                    z14 = z12 ? 1 : 0;
                                                                }
                                                                i36 += iArr2[i35];
                                                                i35++;
                                                                z14 = z12 ? 1 : 0;
                                                            } else {
                                                                dVar4.L[i37] = ((i20 - dVar4.N) - i24) - i36;
                                                            }
                                                        }
                                                    } else {
                                                        i25 = z14 ? 1 : 0;
                                                        if (r13 != 3) {
                                                            throw i1.a("Unexpected lacing value: " + ((int) r13), null);
                                                        }
                                                        b10 = 255;
                                                        i26 = 4;
                                                        i27 = i25;
                                                        iVar2 = iVar3;
                                                        r12 = i42;
                                                        i28 = i27;
                                                        while (true) {
                                                            i29 = dVar4.K - 1;
                                                            if (i27 < i29) {
                                                                dVar4.L[i27] = i28;
                                                                i26++;
                                                                dVar4.k(iVar2, i26);
                                                                i30 = i26 - 1;
                                                                if (dVar4.f18538g.f10475a[i30] == 0) {
                                                                    throw i1.a("No valid varint length mask found", null);
                                                                }
                                                                c10 = '\b';
                                                                while (true) {
                                                                    if (i28 < c10) {
                                                                        i31 = r14 << (7 - i28);
                                                                        if ((dVar4.f18538g.f10475a[i30] & i31) != 0) {
                                                                            r14 = r12;
                                                                            i32 = i26 + i28;
                                                                            dVar4.k(iVar2, i32);
                                                                            i33 = i30 + 1;
                                                                            b11 = b10;
                                                                            j14 = (~i31) & dVar4.f18538g.f10475a[i30] & b10;
                                                                            while (true) {
                                                                                i34 = i33;
                                                                                if (i34 < i32) {
                                                                                    i33 = i34 + 1;
                                                                                    j14 = (j14 << 8) | ((long) (dVar4.f18538g.f10475a[i34] & b11));
                                                                                    b11 = 255;
                                                                                    i32 = i32;
                                                                                } else {
                                                                                    int i411 = i32;
                                                                                    if (i27 > 0) {
                                                                                        j14 -= (1 << ((i28 * 7) + 6)) - 1;
                                                                                    }
                                                                                    i26 = i411;
                                                                                }
                                                                            }
                                                                        } else {
                                                                            r14 = r12;
                                                                            i28++;
                                                                            c10 = '\b';
                                                                            r14 = 1;
                                                                            b10 = 255;
                                                                            iVar2 = iVar;
                                                                        }
                                                                    } else {
                                                                        r14 = r12;
                                                                        j14 = 0;
                                                                    }
                                                                }
                                                                if (j14 >= -2147483648L) {
                                                                }
                                                                throw i1.a("EBML lacing sample size out of range.", null);
                                                            }
                                                            dVar4.L[i29] = ((i20 - dVar4.N) - i26) - i25;
                                                            iArr4[i27] = i47;
                                                            i25 += iArr4[i27];
                                                            i27++;
                                                            i28 = 0;
                                                            r12 = 1;
                                                            b10 = 255;
                                                            iVar2 = iVar;
                                                        }
                                                    }
                                                }
                                            }
                                            byte[] bArr8 = dVar4.f18538g.f10475a;
                                            dVar4.H = dVar4.m((bArr8[1] & 255) | (bArr8[0] << 8)) + dVar4.B;
                                            if (bVar.f18562d != 2) {
                                                i39 = 1;
                                            } else {
                                                i39 = 1;
                                            }
                                            dVar4.O = i39;
                                            dVar4.G = 2;
                                            dVar4.J = 0;
                                        }
                                        if (i19 == 163) {
                                            while (true) {
                                                i22 = dVar4.J;
                                                if (i22 < dVar4.K) {
                                                    dVar4.f(bVar, ((long) ((dVar4.J * bVar.f18563e) / 1000)) + dVar4.H, dVar4.O, dVar4.n(iVar, bVar, dVar4.L[i22], false), 0);
                                                    dVar4.J++;
                                                } else {
                                                    z14 = false;
                                                    dVar4.G = 0;
                                                }
                                            }
                                        } else {
                                            while (true) {
                                                i21 = dVar4.J;
                                                if (i21 < dVar4.K) {
                                                    int[] iArr6 = dVar4.L;
                                                    iArr6[i21] = dVar4.n(iVar, bVar, iArr6[i21], true);
                                                    dVar4.J++;
                                                } else {
                                                    z14 = false;
                                                }
                                            }
                                        }
                                        iVar3 = iVar;
                                    }
                                } else {
                                    if (dVar4.G == 0) {
                                        dVar4.M = (int) dVar4.f18532b.c(iVar3, z14, i42, 8);
                                        dVar4.N = dVar4.f18532b.f18590c;
                                        dVar4.I = -9223372036854775807L;
                                        dVar4.G = i42;
                                        dVar4.f18538g.A(z14 ? 1 : 0);
                                    }
                                    bVar = dVar4.f18534c.get(dVar4.M);
                                    if (bVar == null) {
                                        iVar3.k(i20 - dVar4.N);
                                        dVar4.G = z14 ? 1 : 0;
                                    } else {
                                        Objects.requireNonNull(bVar.X);
                                        if (dVar4.G == i42) {
                                            dVar4.k(iVar3, 3);
                                            r13 = (dVar4.f18538g.f10475a[2] & 6) >> i42;
                                            if (r13 == 0) {
                                                dVar4.K = i42;
                                                iArr3 = dVar4.L;
                                                if (iArr3 == null) {
                                                    iArr3 = new int[i42];
                                                } else if (iArr3.length < i42) {
                                                    iArr3 = new int[Math.max(iArr3.length * 2, (int) i42)];
                                                }
                                                dVar4.L = iArr3;
                                                iArr3[z14 ? 1 : 0] = (i20 - dVar4.N) - 3;
                                            } else {
                                                dVar4.k(iVar3, 4);
                                                i23 = (dVar4.f18538g.f10475a[3] & 255) + i42;
                                                dVar4.K = i23;
                                                iArr = dVar4.L;
                                                if (iArr == null) {
                                                    iArr = new int[i23];
                                                } else if (iArr.length < i23) {
                                                    iArr = new int[Math.max(iArr.length * 2, i23)];
                                                }
                                                dVar4.L = iArr;
                                                if (r13 == 2) {
                                                    int i412 = (i20 - dVar4.N) - 4;
                                                    int i413 = dVar4.K;
                                                    Arrays.fill(iArr, z14 ? 1 : 0, i413, i412 / i413);
                                                } else {
                                                    i24 = 4;
                                                    if (r13 == i42) {
                                                        i35 = z14 ? 1 : 0;
                                                        i36 = i35;
                                                        while (true) {
                                                            i37 = dVar4.K - 1;
                                                            if (i35 < i37) {
                                                                dVar4.L[i35] = z14 ? 1 : 0;
                                                                while (true) {
                                                                    i24 += i42;
                                                                    dVar4.k(iVar3, i24);
                                                                    i38 = dVar4.f18538g.f10475a[i24 - 1] & 255;
                                                                    iArr2 = dVar4.L;
                                                                    iArr2[i35] = iArr2[i35] + i38;
                                                                    z12 = z14;
                                                                    if (i38 != 255) {
                                                                        break;
                                                                    }
                                                                    z14 = z12 ? 1 : 0;
                                                                }
                                                                i36 += iArr2[i35];
                                                                i35++;
                                                                z14 = z12 ? 1 : 0;
                                                            } else {
                                                                dVar4.L[i37] = ((i20 - dVar4.N) - i24) - i36;
                                                            }
                                                        }
                                                    } else {
                                                        i25 = z14 ? 1 : 0;
                                                        if (r13 != 3) {
                                                            throw i1.a("Unexpected lacing value: " + ((int) r13), null);
                                                        }
                                                        b10 = 255;
                                                        i26 = 4;
                                                        i27 = i25;
                                                        iVar2 = iVar3;
                                                        r12 = i42;
                                                        i28 = i27;
                                                        while (true) {
                                                            i29 = dVar4.K - 1;
                                                            if (i27 < i29) {
                                                                dVar4.L[i27] = i28;
                                                                i26++;
                                                                dVar4.k(iVar2, i26);
                                                                i30 = i26 - 1;
                                                                if (dVar4.f18538g.f10475a[i30] == 0) {
                                                                    throw i1.a("No valid varint length mask found", null);
                                                                }
                                                                c10 = '\b';
                                                                while (true) {
                                                                    if (i28 < c10) {
                                                                        i31 = r14 << (7 - i28);
                                                                        if ((dVar4.f18538g.f10475a[i30] & i31) != 0) {
                                                                            r14 = r12;
                                                                            i32 = i26 + i28;
                                                                            dVar4.k(iVar2, i32);
                                                                            i33 = i30 + 1;
                                                                            b11 = b10;
                                                                            j14 = (~i31) & dVar4.f18538g.f10475a[i30] & b10;
                                                                            while (true) {
                                                                                i34 = i33;
                                                                                if (i34 < i32) {
                                                                                    i33 = i34 + 1;
                                                                                    j14 = (j14 << 8) | ((long) (dVar4.f18538g.f10475a[i34] & b11));
                                                                                    b11 = 255;
                                                                                    i32 = i32;
                                                                                } else {
                                                                                    int i414 = i32;
                                                                                    if (i27 > 0) {
                                                                                        j14 -= (1 << ((i28 * 7) + 6)) - 1;
                                                                                    }
                                                                                    i26 = i414;
                                                                                }
                                                                            }
                                                                        } else {
                                                                            r14 = r12;
                                                                            i28++;
                                                                            c10 = '\b';
                                                                            r14 = 1;
                                                                            b10 = 255;
                                                                            iVar2 = iVar;
                                                                        }
                                                                    } else {
                                                                        r14 = r12;
                                                                        j14 = 0;
                                                                    }
                                                                }
                                                                if (j14 >= -2147483648L) {
                                                                }
                                                                throw i1.a("EBML lacing sample size out of range.", null);
                                                            }
                                                            dVar4.L[i29] = ((i20 - dVar4.N) - i26) - i25;
                                                            iArr4[i27] = i47;
                                                            i25 += iArr4[i27];
                                                            i27++;
                                                            i28 = 0;
                                                            r12 = 1;
                                                            b10 = 255;
                                                            iVar2 = iVar;
                                                        }
                                                    }
                                                }
                                            }
                                            byte[] bArr9 = dVar4.f18538g.f10475a;
                                            dVar4.H = dVar4.m((bArr9[1] & 255) | (bArr9[0] << 8)) + dVar4.B;
                                            if (bVar.f18562d != 2) {
                                                i39 = 1;
                                            } else {
                                                i39 = 1;
                                            }
                                            dVar4.O = i39;
                                            dVar4.G = 2;
                                            dVar4.J = 0;
                                        }
                                        if (i19 == 163) {
                                            while (true) {
                                                i22 = dVar4.J;
                                                if (i22 < dVar4.K) {
                                                    dVar4.f(bVar, ((long) ((dVar4.J * bVar.f18563e) / 1000)) + dVar4.H, dVar4.O, dVar4.n(iVar, bVar, dVar4.L[i22], false), 0);
                                                    dVar4.J++;
                                                } else {
                                                    z14 = false;
                                                    dVar4.G = 0;
                                                }
                                            }
                                        } else {
                                            while (true) {
                                                i21 = dVar4.J;
                                                if (i21 < dVar4.K) {
                                                    int[] iArr7 = dVar4.L;
                                                    iArr7[i21] = dVar4.n(iVar, bVar, iArr7[i21], true);
                                                    dVar4.J++;
                                                } else {
                                                    z14 = false;
                                                }
                                            }
                                        }
                                        iVar3 = iVar;
                                    }
                                }
                                aVar.f18520e = z14 ? 1 : 0;
                            } else {
                                if (r10 == 5) {
                                    throw i1.a("Invalid element type " + r10, null);
                                }
                                j15 = aVar.f18522g;
                                if (j15 == 4) {
                                }
                                y3.b bVar19 = aVar.f18519d;
                                i40 = aVar.f18521f;
                                i41 = (int) j15;
                                jA2 = aVar.a(iVar3, i41);
                                if (i41 == 4) {
                                    dLongBitsToDouble = Float.intBitsToFloat((int) jA2);
                                } else {
                                    dLongBitsToDouble = Double.longBitsToDouble(jA2);
                                }
                                dVar5 = d.this;
                                Objects.requireNonNull(dVar5);
                                if (i40 != 181) {
                                    dVar5.d(i40);
                                    dVar5.f18552u.Q = (int) dLongBitsToDouble;
                                } else if (i40 != 17545) {
                                    switch (i40) {
                                        case 21969:
                                            dVar5.d(i40);
                                            dVar5.f18552u.D = (float) dLongBitsToDouble;
                                            break;
                                        case 21970:
                                            dVar5.d(i40);
                                            dVar5.f18552u.E = (float) dLongBitsToDouble;
                                            break;
                                        case 21971:
                                            dVar5.d(i40);
                                            dVar5.f18552u.F = (float) dLongBitsToDouble;
                                            break;
                                        case 21972:
                                            dVar5.d(i40);
                                            dVar5.f18552u.G = (float) dLongBitsToDouble;
                                            break;
                                        case 21973:
                                            dVar5.d(i40);
                                            dVar5.f18552u.H = (float) dLongBitsToDouble;
                                            break;
                                        case 21974:
                                            dVar5.d(i40);
                                            dVar5.f18552u.I = (float) dLongBitsToDouble;
                                            break;
                                        case 21975:
                                            dVar5.d(i40);
                                            dVar5.f18552u.J = (float) dLongBitsToDouble;
                                            break;
                                        case 21976:
                                            dVar5.d(i40);
                                            dVar5.f18552u.K = (float) dLongBitsToDouble;
                                            break;
                                        case 21977:
                                            dVar5.d(i40);
                                            dVar5.f18552u.L = (float) dLongBitsToDouble;
                                            break;
                                        case 21978:
                                            dVar5.d(i40);
                                            dVar5.f18552u.M = (float) dLongBitsToDouble;
                                            break;
                                        default:
                                            switch (i40) {
                                                case 30323:
                                                    dVar5.d(i40);
                                                    dVar5.f18552u.f18577s = (float) dLongBitsToDouble;
                                                    break;
                                                case 30324:
                                                    dVar5.d(i40);
                                                    dVar5.f18552u.f18578t = (float) dLongBitsToDouble;
                                                    break;
                                                case 30325:
                                                    dVar5.d(i40);
                                                    dVar5.f18552u.f18579u = (float) dLongBitsToDouble;
                                                    break;
                                            }
                                            break;
                                    }
                                } else {
                                    dVar5.f18550s = (long) dLongBitsToDouble;
                                }
                                aVar.f18520e = z14 ? 1 : 0;
                            }
                            r11 = 1;
                        } else {
                            iVar3.k((int) aVar.f18522g);
                            z14 = false;
                            aVar.f18520e = 0;
                            i43 = -1;
                        }
                    }
                    r11 = i42;
                }
                if (r11 != 0) {
                    long jU2 = iVar.u();
                    if (this.f18556y) {
                        this.A = jU2;
                        tVar.f15076a = this.f18557z;
                        this.f18556y = z14;
                    } else {
                        if (this.f18553v) {
                            long j16 = this.A;
                            if (j16 != -1) {
                                tVar.f15076a = j16;
                                this.A = -1L;
                            }
                            if (z13) {
                                return 1;
                            }
                        }
                        z13 = false;
                        if (z13) {
                            return 1;
                        }
                    }
                    z13 = true;
                    if (z13) {
                        return 1;
                    }
                }
                i42 = 1;
                z14 = false;
                r15 = r11;
            }
        }
        if (r15 != 0) {
            return 0;
        }
        for (int i50 = 0; i50 < this.f18534c.size(); i50++) {
            b bVarValueAt = this.f18534c.valueAt(i50);
            b.a(bVarValueAt);
            x xVar = bVarValueAt.T;
            if (xVar != null) {
                xVar.a(bVarValueAt.X, bVarValueAt.f18568j);
            }
        }
        return -1;
    }

    @RequiresNonNull({"#1.output"})
    public final void f(b bVar, long j10, int i10, int i11, int i12) {
        byte[] bArrI;
        int i13;
        int i14;
        x xVar = bVar.T;
        if (xVar != null) {
            xVar.b(bVar.X, j10, i10, i11, i12, bVar.f18568j);
        } else {
            if ("S_TEXT/UTF8".equals(bVar.f18560b) || "S_TEXT/ASS".equals(bVar.f18560b) || "S_TEXT/WEBVTT".equals(bVar.f18560b)) {
                if (this.K > 1) {
                    p.g("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j11 = this.I;
                    if (j11 == -9223372036854775807L) {
                        p.g("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        String str = bVar.f18560b;
                        byte[] bArr = this.f18542k.f10475a;
                        Objects.requireNonNull(str);
                        int iHashCode = str.hashCode();
                        byte b10 = -1;
                        if (iHashCode != 738597099) {
                            if (iHashCode != 1045209816) {
                                if (iHashCode == 1422270023 && str.equals("S_TEXT/UTF8")) {
                                    b10 = 2;
                                }
                            } else if (str.equals("S_TEXT/WEBVTT")) {
                                b10 = 1;
                            }
                        } else if (str.equals("S_TEXT/ASS")) {
                            b10 = 0;
                        }
                        if (b10 == 0) {
                            bArrI = i(j11, "%01d:%02d:%02d:%02d", 10000L);
                            i13 = 21;
                        } else if (b10 == 1) {
                            bArrI = i(j11, "%02d:%02d:%02d.%03d", 1000L);
                            i13 = 25;
                        } else {
                            if (b10 != 2) {
                                throw new IllegalArgumentException();
                            }
                            bArrI = i(j11, "%02d:%02d:%02d,%03d", 1000L);
                            i13 = 19;
                        }
                        System.arraycopy(bArrI, 0, bArr, i13, bArrI.length);
                        int i15 = this.f18542k.f10476b;
                        while (true) {
                            w wVar = this.f18542k;
                            if (i15 >= wVar.f10477c) {
                                break;
                            }
                            if (wVar.f10475a[i15] == 0) {
                                wVar.C(i15);
                                break;
                            }
                            i15++;
                        }
                        s3.w wVar2 = bVar.X;
                        w wVar3 = this.f18542k;
                        wVar2.f(wVar3, wVar3.f10477c);
                        i14 = i11 + this.f18542k.f10477c;
                    }
                }
                i14 = i11;
            } else {
                i14 = i11;
            }
            if ((i10 & 268435456) != 0) {
                if (this.K > 1) {
                    this.f18545n.A(0);
                } else {
                    w wVar4 = this.f18545n;
                    int i16 = wVar4.f10477c;
                    bVar.X.a(wVar4, i16);
                    i14 += i16;
                }
            }
            bVar.X.c(j10, i10, i14, i12, bVar.f18568j);
        }
        this.F = true;
    }

    @Override // s3.h
    public final void g(j jVar) {
        this.f18533b0 = jVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:214:0x0345  */
    /* JADX WARN: Code duplicated, block: B:354:0x0501  */
    /* JADX WARN: Code duplicated, block: B:379:0x05f5 A[PHI: r7
      0x05f5: PHI (r7v21 int) = (r7v3 int), (r7v19 int), (r7v20 int), (r7v22 int) binds: [B:378:0x05f3, B:375:0x05d3, B:372:0x05cd, B:368:0x05ab] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:483:0x0835  */
    /* JADX WARN: Code duplicated, block: B:485:0x083d  */
    /* JADX WARN: Code duplicated, block: B:486:0x0856  */
    /* JADX WARN: Code duplicated, block: B:488:0x0862  */
    /* JADX WARN: Code duplicated, block: B:502:0x0893  */
    /* JADX WARN: Code duplicated, block: B:507:0x08aa  */
    /* JADX WARN: Code duplicated, block: B:508:0x08ac  */
    /* JADX WARN: Code duplicated, block: B:511:0x08b9  */
    /* JADX WARN: Code duplicated, block: B:512:0x08c5  */
    /* JADX WARN: Code duplicated, block: B:514:0x08cb  */
    /* JADX WARN: Code duplicated, block: B:516:0x08cf  */
    /* JADX WARN: Code duplicated, block: B:518:0x08d4  */
    /* JADX WARN: Code duplicated, block: B:521:0x08dc  */
    /* JADX WARN: Code duplicated, block: B:523:0x08e1  */
    /* JADX WARN: Code duplicated, block: B:526:0x08e8  */
    /* JADX WARN: Code duplicated, block: B:531:0x08f9  */
    /* JADX WARN: Code duplicated, block: B:533:0x0901  */
    /* JADX WARN: Code duplicated, block: B:553:0x09b5  */
    /* JADX WARN: Code duplicated, block: B:555:0x09c2  */
    /* JADX WARN: Code duplicated, block: B:558:0x09c7  */
    /* JADX WARN: Code duplicated, block: B:560:0x09cf  */
    /* JADX WARN: Code duplicated, block: B:563:0x09df  */
    /* JADX WARN: Code duplicated, block: B:569:0x09f8  */
    /* JADX WARN: Code duplicated, block: B:570:0x09fa  */
    /* JADX WARN: Code duplicated, block: B:572:0x0a04  */
    /* JADX WARN: Code duplicated, block: B:573:0x0a07  */
    /* JADX WARN: Code duplicated, block: B:575:0x0a11  */
    /* JADX WARN: Code duplicated, block: B:581:0x0a29  */
    /* JADX WARN: Code duplicated, block: B:583:0x0a43  */
    /* JADX WARN: Code duplicated, block: B:585:0x0a4b  */
    /* JADX WARN: Code duplicated, block: B:601:0x0a81  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v116 */
    /* JADX WARN: Type inference failed for: r0v117 */
    /* JADX WARN: Type inference failed for: r0v118, types: [java.lang.Throwable] */
    public final void h(int i10) throws i1 {
        boolean z10;
        byte b10;
        int i11;
        int i12;
        List<byte[]> listSingletonList;
        int i13;
        byte b11;
        List<byte[]> list;
        int i14;
        boolean z11;
        int iY;
        int i15;
        String str;
        int i16;
        List<byte[]> list2;
        int i17;
        String str2;
        List<byte[]> list3;
        String str3;
        String str4;
        byte b12;
        List<byte[]> list4;
        Pair pair;
        String str5;
        List<byte[]> list5;
        String str6;
        String str7;
        List<byte[]> list6;
        List<byte[]> list7;
        byte b13;
        List<byte[]> list8;
        List<byte[]> listV;
        List<byte[]> list9;
        byte[] bArr;
        int i18;
        s0.a aVar;
        int iIntValue;
        float f10;
        int i19;
        n5.b bVar;
        String str8;
        Map<String, Integer> map;
        byte[] bArr2;
        int i20;
        int i21;
        int i22;
        String str9;
        n5.c cVarA;
        List<byte[]> list10;
        u bVar2;
        int i23;
        int i24;
        d dVar = this;
        m5.a.f(dVar.f18533b0);
        int i25 = 0;
        if (i10 == 160) {
            if (dVar.G != 2) {
                return;
            }
            b bVar3 = dVar.f18534c.get(dVar.M);
            b.a(bVar3);
            if (dVar.R > 0 && "A_OPUS".equals(bVar3.f18560b)) {
                w wVar = dVar.f18545n;
                byte[] bArrArray = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(dVar.R).array();
                Objects.requireNonNull(wVar);
                wVar.B(bArrArray, bArrArray.length);
            }
            int i26 = 0;
            for (int i27 = 0; i27 < dVar.K; i27++) {
                i26 += dVar.L[i27];
            }
            int i28 = 0;
            while (i28 < dVar.K) {
                long j10 = dVar.H + ((long) ((bVar3.f18563e * i28) / 1000));
                int i29 = dVar.O;
                if (i28 == 0 && !dVar.Q) {
                    i29 |= 1;
                }
                int i30 = dVar.L[i28];
                int i31 = i26 - i30;
                f(bVar3, j10, i29, i30, i31);
                i28++;
                i26 = i31;
            }
            dVar.G = 0;
            return;
        }
        if (i10 != 174) {
            if (i10 == 19899) {
                int i32 = dVar.f18554w;
                if (i32 != -1) {
                    long j11 = dVar.f18555x;
                    if (j11 != -1) {
                        if (i32 == 475249515) {
                            dVar.f18557z = j11;
                            return;
                        }
                        return;
                    }
                }
                throw i1.a("Mandatory element SeekID or SeekPosition not found", null);
            }
            if (i10 == 25152) {
                d(i10);
                b bVar4 = dVar.f18552u;
                if (bVar4.f18566h) {
                    s3.w.a aVar2 = bVar4.f18568j;
                    if (aVar2 == null) {
                        throw i1.a("Encrypted Track found but ContentEncKeyID was not found", null);
                    }
                    bVar4.f18570l = new r3.d(null, true, new r3.d.b(n3.i.f11425a, null, "video/webm", aVar2.f15085b));
                    return;
                }
                return;
            }
            if (i10 == 28032) {
                d(i10);
                b bVar5 = dVar.f18552u;
                if (bVar5.f18566h && bVar5.f18567i != null) {
                    throw i1.a("Combining encryption and compression is not supported", null);
                }
                return;
            }
            if (i10 == 357149030) {
                if (dVar.f18549r == -9223372036854775807L) {
                    dVar.f18549r = 1000000L;
                }
                long j12 = dVar.f18550s;
                if (j12 != -9223372036854775807L) {
                    dVar.f18551t = dVar.m(j12);
                    return;
                }
                return;
            }
            if (i10 == 374648427) {
                if (dVar.f18534c.size() == 0) {
                    throw i1.a("No valid tracks were found", null);
                }
                dVar.f18533b0.b();
                return;
            }
            if (i10 != 475249515) {
                return;
            }
            if (!dVar.f18553v) {
                j jVar = dVar.f18533b0;
                q qVar = dVar.C;
                q qVar2 = dVar.D;
                if (dVar.f18548q == -1 || dVar.f18551t == -9223372036854775807L || qVar == null || (i23 = qVar.f10429a) == 0 || qVar2 == null || qVar2.f10429a != i23) {
                    bVar2 = new u.b(dVar.f18551t);
                } else {
                    int[] iArrCopyOf = new int[i23];
                    long[] jArrCopyOf = new long[i23];
                    long[] jArrCopyOf2 = new long[i23];
                    long[] jArrCopyOf3 = new long[i23];
                    for (int i33 = 0; i33 < i23; i33++) {
                        jArrCopyOf3[i33] = qVar.b(i33);
                        jArrCopyOf[i33] = qVar2.b(i33) + dVar.f18548q;
                    }
                    while (true) {
                        i24 = i23 - 1;
                        if (i25 >= i24) {
                            break;
                        }
                        int i34 = i25 + 1;
                        iArrCopyOf[i25] = (int) (jArrCopyOf[i34] - jArrCopyOf[i25]);
                        jArrCopyOf2[i25] = jArrCopyOf3[i34] - jArrCopyOf3[i25];
                        i25 = i34;
                    }
                    iArrCopyOf[i24] = (int) ((dVar.f18548q + dVar.f18547p) - jArrCopyOf[i24]);
                    jArrCopyOf2[i24] = dVar.f18551t - jArrCopyOf3[i24];
                    long j13 = jArrCopyOf2[i24];
                    if (j13 <= 0) {
                        p.g("MatroskaExtractor", "Discarding last cue point with unexpected duration: " + j13);
                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i24);
                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i24);
                        jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i24);
                        jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i24);
                    }
                    bVar2 = new s3.c(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
                }
                jVar.j(bVar2);
                dVar.f18553v = true;
            }
            dVar.C = null;
            dVar.D = null;
            return;
        }
        b bVar6 = dVar.f18552u;
        m5.a.f(bVar6);
        String str10 = bVar6.f18560b;
        if (str10 == null) {
            throw i1.a("CodecId is missing in TrackEntry element", null);
        }
        switch (str10) {
            case "V_MPEG4/ISO/AP":
            case "V_MPEG4/ISO/SP":
            case "A_MS/ACM":
            case "A_TRUEHD":
            case "A_VORBIS":
            case "A_MPEG/L2":
            case "A_MPEG/L3":
            case "V_MS/VFW/FOURCC":
            case "S_DVBSUB":
            case "V_MPEG4/ISO/ASP":
            case "V_MPEG4/ISO/AVC":
            case "S_VOBSUB":
            case "A_DTS/LOSSLESS":
            case "A_AAC":
            case "A_AC3":
            case "A_DTS":
            case "V_AV1":
            case "V_VP8":
            case "V_VP9":
            case "S_HDMV/PGS":
            case "V_THEORA":
            case "A_DTS/EXPRESS":
            case "A_PCM/FLOAT/IEEE":
            case "A_PCM/INT/BIG":
            case "A_PCM/INT/LIT":
            case "S_TEXT/ASS":
            case "V_MPEGH/ISO/HEVC":
            case "S_TEXT/WEBVTT":
            case "S_TEXT/UTF8":
            case "V_MPEG2":
            case "A_EAC3":
            case "A_FLAC":
            case "A_OPUS":
                z10 = true;
                break;
            default:
                z10 = false;
                break;
        }
        if (z10) {
            j jVar2 = dVar.f18533b0;
            int i35 = bVar6.f18561c;
            String str11 = bVar6.f18560b;
            Objects.requireNonNull(str11);
            int iY2 = 4;
            switch (str11) {
                case "V_MPEG4/ISO/AP":
                    b10 = 0;
                    break;
                case "V_MPEG4/ISO/SP":
                    b10 = 1;
                    break;
                case "A_MS/ACM":
                    b10 = 2;
                    break;
                case "A_TRUEHD":
                    b10 = 3;
                    break;
                case "A_VORBIS":
                    b10 = 4;
                    break;
                case "A_MPEG/L2":
                    b10 = 5;
                    break;
                case "A_MPEG/L3":
                    b10 = 6;
                    break;
                case "V_MS/VFW/FOURCC":
                    b10 = 7;
                    break;
                case "S_DVBSUB":
                    b10 = 8;
                    break;
                case "V_MPEG4/ISO/ASP":
                    b10 = 9;
                    break;
                case "V_MPEG4/ISO/AVC":
                    b10 = 10;
                    break;
                case "S_VOBSUB":
                    b10 = 11;
                    break;
                case "A_DTS/LOSSLESS":
                    b10 = 12;
                    break;
                case "A_AAC":
                    b10 = 13;
                    break;
                case "A_AC3":
                    b10 = 14;
                    break;
                case "A_DTS":
                    b10 = 15;
                    break;
                case "V_AV1":
                    b10 = 16;
                    break;
                case "V_VP8":
                    b10 = 17;
                    break;
                case "V_VP9":
                    b10 = 18;
                    break;
                case "S_HDMV/PGS":
                    b10 = 19;
                    break;
                case "V_THEORA":
                    b10 = 20;
                    break;
                case "A_DTS/EXPRESS":
                    b10 = 21;
                    break;
                case "A_PCM/FLOAT/IEEE":
                    b10 = 22;
                    break;
                case "A_PCM/INT/BIG":
                    b10 = 23;
                    break;
                case "A_PCM/INT/LIT":
                    b10 = 24;
                    break;
                case "S_TEXT/ASS":
                    b10 = 25;
                    break;
                case "V_MPEGH/ISO/HEVC":
                    b10 = 26;
                    break;
                case "S_TEXT/WEBVTT":
                    b10 = 27;
                    break;
                case "S_TEXT/UTF8":
                    b10 = 28;
                    break;
                case "V_MPEG2":
                    b10 = 29;
                    break;
                case "A_EAC3":
                    b10 = 30;
                    break;
                case "A_FLAC":
                    b10 = 31;
                    break;
                case "A_OPUS":
                    b10 = 32;
                    break;
                default:
                    b10 = -1;
                    break;
            }
            String str12 = "video/x-unknown";
            String str13 = "audio/raw";
            String str14 = "audio/x-unknown";
            switch (b10) {
                case 0:
                case 1:
                case 9:
                    i11 = 1;
                    i12 = 3;
                    byte[] bArr3 = bVar6.f18569k;
                    listSingletonList = bArr3 == null ? null : Collections.singletonList(bArr3);
                    str14 = "video/mp4v-es";
                    str13 = str14;
                    i13 = i12;
                    b11 = -1;
                    list = listSingletonList;
                    i14 = i11;
                    iY2 = -1;
                    list6 = list;
                    int i36 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i36;
                    bArr = bVar6.N;
                    if (bArr != null && (cVarA = n5.c.a(new w(bArr))) != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i37 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i38 = i37 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue && (i20 = bVar6.f18574p) != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f || bVar6.E == -1.0f || bVar6.F == -1.0f || bVar6.G == -1.0f || bVar6.H == -1.0f || bVar6.I == -1.0f || bVar6.J == -1.0f || bVar6.K == -1.0f || bVar6.L == -1.0f || bVar6.M == -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = new byte[25];
                                ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr2).order(ByteOrder.LITTLE_ENDIAN);
                                byteBufferOrder.put((byte) 0);
                                byteBufferOrder.putShort((short) ((bVar6.D * 50000.0f) + 0.5f));
                                byteBufferOrder.putShort((short) ((bVar6.E * 50000.0f) + 0.5f));
                                byteBufferOrder.putShort((short) ((bVar6.F * 50000.0f) + 0.5f));
                                byteBufferOrder.putShort((short) ((bVar6.G * 50000.0f) + 0.5f));
                                byteBufferOrder.putShort((short) ((bVar6.H * 50000.0f) + 0.5f));
                                byteBufferOrder.putShort((short) ((bVar6.I * 50000.0f) + 0.5f));
                                byteBufferOrder.putShort((short) ((bVar6.J * 50000.0f) + 0.5f));
                                byteBufferOrder.putShort((short) ((bVar6.K * 50000.0f) + 0.5f));
                                byteBufferOrder.putShort((short) (bVar6.L + 0.5f));
                                byteBufferOrder.putShort((short) (bVar6.M + 0.5f));
                                byteBufferOrder.putShort((short) bVar6.B);
                                byteBufferOrder.putShort((short) bVar6.C);
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0 && Float.compare(bVar6.f18577s, 0.0f) == 0 && Float.compare(bVar6.f18578t, 0.0f) == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0 || Float.compare(bVar6.f18578t, 180.0f) == 0) {
                                iIntValue = 180;
                            } else if (Float.compare(bVar6.f18578t, -90.0f) == 0) {
                                iIntValue = 270;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13) && !"text/x-ssa".equals(str13) && !"text/vtt".equals(str13) && !"application/vobsub".equals(str13) && !"application/pgs".equals(str13) && !"application/dvbsubs".equals(str13)) {
                            throw i1.a("Unexpected MIME type.", null);
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null && !f18529h0.containsKey(str9)) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i38;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA = aVar.a();
                    s3.w wVarP = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP;
                    wVarP.b(s0VarA);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 2:
                    i12 = 3;
                    w wVar2 = new w(bVar6.b(bVar6.f18560b));
                    try {
                        int iL = wVar2.l();
                        i11 = 1;
                        if (iL != 1) {
                            if (iL == 65534) {
                                wVar2.D(24);
                                long jM = wVar2.m();
                                UUID uuid = f18528g0;
                                if (jM != uuid.getMostSignificantBits() || wVar2.m() != uuid.getLeastSignificantBits()) {
                                }
                                if (z11) {
                                    iY = g0.y(bVar6.P);
                                    if (iY != 0) {
                                        i15 = iY;
                                        str = null;
                                        i16 = 1;
                                        i13 = 3;
                                        list2 = null;
                                        b13 = -1;
                                        list9 = list2;
                                        bArr = bVar6.N;
                                        if (bArr != null) {
                                            str = cVarA.f11869a;
                                            str13 = "video/dolby-vision";
                                        }
                                        int i39 = (bVar6.V ? 1 : 0) | 0;
                                        if (bVar6.U) {
                                            i18 = 2;
                                        } else {
                                            i18 = 0;
                                        }
                                        int i310 = i39 | i18;
                                        aVar = new s0.a();
                                        if (s.k(str13)) {
                                            aVar.f11718x = bVar6.O;
                                            aVar.f11719y = bVar6.Q;
                                            aVar.f11720z = i15;
                                        } else if (s.n(str13)) {
                                            if (bVar6.f18575q == 0) {
                                                i21 = bVar6.f18573o;
                                                iIntValue = -1;
                                                if (i21 == -1) {
                                                    i21 = bVar6.f18571m;
                                                }
                                                bVar6.f18573o = i21;
                                                i22 = bVar6.f18574p;
                                                if (i22 == -1) {
                                                    i22 = bVar6.f18572n;
                                                }
                                                bVar6.f18574p = i22;
                                            } else {
                                                iIntValue = -1;
                                            }
                                            f10 = -1.0f;
                                            i19 = bVar6.f18573o;
                                            if (i19 != iIntValue) {
                                                f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                                            }
                                            if (bVar6.f18582x) {
                                                if (bVar6.D != -1.0f) {
                                                    bArr2 = null;
                                                } else {
                                                    bArr2 = null;
                                                }
                                                bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                                            } else {
                                                bVar = null;
                                            }
                                            str8 = bVar6.f18559a;
                                            if (str8 != null) {
                                                map = f18529h0;
                                                if (map.containsKey(str8)) {
                                                    iIntValue = map.get(bVar6.f18559a).intValue();
                                                }
                                            }
                                            if (bVar6.f18576r == 0) {
                                                if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            aVar.f11710p = bVar6.f18571m;
                                            aVar.f11711q = bVar6.f18572n;
                                            aVar.f11714t = f10;
                                            aVar.f11713s = iIntValue;
                                            aVar.f11715u = bVar6.f18580v;
                                            aVar.f11716v = bVar6.f18581w;
                                            aVar.f11717w = bVar;
                                            i16 = 2;
                                        } else {
                                            if ("application/x-subrip".equals(str13)) {
                                            }
                                            i16 = i13;
                                        }
                                        str9 = bVar6.f18559a;
                                        if (str9 != null) {
                                            aVar.f11696b = bVar6.f18559a;
                                        }
                                        aVar.b(i35);
                                        aVar.f11705k = str13;
                                        aVar.f11706l = b13;
                                        aVar.f11697c = bVar6.W;
                                        aVar.f11698d = i310;
                                        aVar.f11707m = list9;
                                        aVar.f11702h = str;
                                        aVar.f11708n = bVar6.f18570l;
                                        s0 s0VarA2 = aVar.a();
                                        s3.w wVarP2 = jVar2.p(bVar6.f18561c, i16);
                                        bVar6.X = wVarP2;
                                        wVarP2.b(s0VarA2);
                                        dVar = this;
                                        dVar.f18534c.put(bVar6.f18561c, bVar6);
                                    } else {
                                        StringBuilder sbC = a0.b.c("Unsupported PCM bit depth: ");
                                        sbC.append(bVar6.P);
                                        sbC.append(". Setting mimeType to ");
                                        sbC.append("audio/x-unknown");
                                        p.g("MatroskaExtractor", sbC.toString());
                                    }
                                } else {
                                    p.g("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                                }
                                listSingletonList = null;
                                str13 = str14;
                                i13 = i12;
                                b11 = -1;
                                list = listSingletonList;
                                i14 = i11;
                                iY2 = -1;
                                list6 = list;
                                int i311 = iY2;
                                b13 = b11;
                                list9 = list6;
                                i16 = i14;
                                str = null;
                                i15 = i311;
                                bArr = bVar6.N;
                                if (bArr != null) {
                                    str = cVarA.f11869a;
                                    str13 = "video/dolby-vision";
                                }
                                int i312 = (bVar6.V ? 1 : 0) | 0;
                                if (bVar6.U) {
                                    i18 = 2;
                                } else {
                                    i18 = 0;
                                }
                                int i313 = i312 | i18;
                                aVar = new s0.a();
                                if (s.k(str13)) {
                                    aVar.f11718x = bVar6.O;
                                    aVar.f11719y = bVar6.Q;
                                    aVar.f11720z = i15;
                                } else if (s.n(str13)) {
                                    if (bVar6.f18575q == 0) {
                                        i21 = bVar6.f18573o;
                                        iIntValue = -1;
                                        if (i21 == -1) {
                                            i21 = bVar6.f18571m;
                                        }
                                        bVar6.f18573o = i21;
                                        i22 = bVar6.f18574p;
                                        if (i22 == -1) {
                                            i22 = bVar6.f18572n;
                                        }
                                        bVar6.f18574p = i22;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    f10 = -1.0f;
                                    i19 = bVar6.f18573o;
                                    if (i19 != iIntValue) {
                                        f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                                    }
                                    if (bVar6.f18582x) {
                                        if (bVar6.D != -1.0f) {
                                            bArr2 = null;
                                        } else {
                                            bArr2 = null;
                                        }
                                        bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                                    } else {
                                        bVar = null;
                                    }
                                    str8 = bVar6.f18559a;
                                    if (str8 != null) {
                                        map = f18529h0;
                                        if (map.containsKey(str8)) {
                                            iIntValue = map.get(bVar6.f18559a).intValue();
                                        }
                                    }
                                    if (bVar6.f18576r == 0) {
                                        if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                    aVar.f11710p = bVar6.f18571m;
                                    aVar.f11711q = bVar6.f18572n;
                                    aVar.f11714t = f10;
                                    aVar.f11713s = iIntValue;
                                    aVar.f11715u = bVar6.f18580v;
                                    aVar.f11716v = bVar6.f18581w;
                                    aVar.f11717w = bVar;
                                    i16 = 2;
                                } else {
                                    if ("application/x-subrip".equals(str13)) {
                                    }
                                    i16 = i13;
                                }
                                str9 = bVar6.f18559a;
                                if (str9 != null) {
                                    aVar.f11696b = bVar6.f18559a;
                                }
                                aVar.b(i35);
                                aVar.f11705k = str13;
                                aVar.f11706l = b13;
                                aVar.f11697c = bVar6.W;
                                aVar.f11698d = i313;
                                aVar.f11707m = list9;
                                aVar.f11702h = str;
                                aVar.f11708n = bVar6.f18570l;
                                s0 s0VarA3 = aVar.a();
                                s3.w wVarP3 = jVar2.p(bVar6.f18561c, i16);
                                bVar6.X = wVarP3;
                                wVarP3.b(s0VarA3);
                                dVar = this;
                                dVar.f18534c.put(bVar6.f18561c, bVar6);
                            }
                            z11 = false;
                            if (z11) {
                                iY = g0.y(bVar6.P);
                                if (iY != 0) {
                                    i15 = iY;
                                    str = null;
                                    i16 = 1;
                                    i13 = 3;
                                    list2 = null;
                                    b13 = -1;
                                    list9 = list2;
                                    bArr = bVar6.N;
                                    if (bArr != null) {
                                        str = cVarA.f11869a;
                                        str13 = "video/dolby-vision";
                                    }
                                    int i314 = (bVar6.V ? 1 : 0) | 0;
                                    if (bVar6.U) {
                                        i18 = 2;
                                    } else {
                                        i18 = 0;
                                    }
                                    int i315 = i314 | i18;
                                    aVar = new s0.a();
                                    if (s.k(str13)) {
                                        aVar.f11718x = bVar6.O;
                                        aVar.f11719y = bVar6.Q;
                                        aVar.f11720z = i15;
                                    } else if (s.n(str13)) {
                                        if (bVar6.f18575q == 0) {
                                            i21 = bVar6.f18573o;
                                            iIntValue = -1;
                                            if (i21 == -1) {
                                                i21 = bVar6.f18571m;
                                            }
                                            bVar6.f18573o = i21;
                                            i22 = bVar6.f18574p;
                                            if (i22 == -1) {
                                                i22 = bVar6.f18572n;
                                            }
                                            bVar6.f18574p = i22;
                                        } else {
                                            iIntValue = -1;
                                        }
                                        f10 = -1.0f;
                                        i19 = bVar6.f18573o;
                                        if (i19 != iIntValue) {
                                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                                        }
                                        if (bVar6.f18582x) {
                                            if (bVar6.D != -1.0f) {
                                                bArr2 = null;
                                            } else {
                                                bArr2 = null;
                                            }
                                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                                        } else {
                                            bVar = null;
                                        }
                                        str8 = bVar6.f18559a;
                                        if (str8 != null) {
                                            map = f18529h0;
                                            if (map.containsKey(str8)) {
                                                iIntValue = map.get(bVar6.f18559a).intValue();
                                            }
                                        }
                                        if (bVar6.f18576r == 0) {
                                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                                iIntValue = 0;
                                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                                iIntValue = 90;
                                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                                iIntValue = 180;
                                            } else {
                                                iIntValue = 180;
                                            }
                                        }
                                        aVar.f11710p = bVar6.f18571m;
                                        aVar.f11711q = bVar6.f18572n;
                                        aVar.f11714t = f10;
                                        aVar.f11713s = iIntValue;
                                        aVar.f11715u = bVar6.f18580v;
                                        aVar.f11716v = bVar6.f18581w;
                                        aVar.f11717w = bVar;
                                        i16 = 2;
                                    } else {
                                        if ("application/x-subrip".equals(str13)) {
                                        }
                                        i16 = i13;
                                    }
                                    str9 = bVar6.f18559a;
                                    if (str9 != null) {
                                        aVar.f11696b = bVar6.f18559a;
                                    }
                                    aVar.b(i35);
                                    aVar.f11705k = str13;
                                    aVar.f11706l = b13;
                                    aVar.f11697c = bVar6.W;
                                    aVar.f11698d = i315;
                                    aVar.f11707m = list9;
                                    aVar.f11702h = str;
                                    aVar.f11708n = bVar6.f18570l;
                                    s0 s0VarA4 = aVar.a();
                                    s3.w wVarP4 = jVar2.p(bVar6.f18561c, i16);
                                    bVar6.X = wVarP4;
                                    wVarP4.b(s0VarA4);
                                    dVar = this;
                                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                                } else {
                                    StringBuilder sbC2 = a0.b.c("Unsupported PCM bit depth: ");
                                    sbC2.append(bVar6.P);
                                    sbC2.append(". Setting mimeType to ");
                                    sbC2.append("audio/x-unknown");
                                    p.g("MatroskaExtractor", sbC2.toString());
                                }
                            } else {
                                p.g("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                            }
                            listSingletonList = null;
                            str13 = str14;
                            i13 = i12;
                            b11 = -1;
                            list = listSingletonList;
                            i14 = i11;
                            iY2 = -1;
                            list6 = list;
                            int i316 = iY2;
                            b13 = b11;
                            list9 = list6;
                            i16 = i14;
                            str = null;
                            i15 = i316;
                            bArr = bVar6.N;
                            if (bArr != null) {
                                str = cVarA.f11869a;
                                str13 = "video/dolby-vision";
                            }
                            int i317 = (bVar6.V ? 1 : 0) | 0;
                            if (bVar6.U) {
                                i18 = 2;
                            } else {
                                i18 = 0;
                            }
                            int i318 = i317 | i18;
                            aVar = new s0.a();
                            if (s.k(str13)) {
                                aVar.f11718x = bVar6.O;
                                aVar.f11719y = bVar6.Q;
                                aVar.f11720z = i15;
                            } else if (s.n(str13)) {
                                if (bVar6.f18575q == 0) {
                                    i21 = bVar6.f18573o;
                                    iIntValue = -1;
                                    if (i21 == -1) {
                                        i21 = bVar6.f18571m;
                                    }
                                    bVar6.f18573o = i21;
                                    i22 = bVar6.f18574p;
                                    if (i22 == -1) {
                                        i22 = bVar6.f18572n;
                                    }
                                    bVar6.f18574p = i22;
                                } else {
                                    iIntValue = -1;
                                }
                                f10 = -1.0f;
                                i19 = bVar6.f18573o;
                                if (i19 != iIntValue) {
                                    f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                                }
                                if (bVar6.f18582x) {
                                    if (bVar6.D != -1.0f) {
                                        bArr2 = null;
                                    } else {
                                        bArr2 = null;
                                    }
                                    bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                                } else {
                                    bVar = null;
                                }
                                str8 = bVar6.f18559a;
                                if (str8 != null) {
                                    map = f18529h0;
                                    if (map.containsKey(str8)) {
                                        iIntValue = map.get(bVar6.f18559a).intValue();
                                    }
                                }
                                if (bVar6.f18576r == 0) {
                                    if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                        iIntValue = 0;
                                    } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                        iIntValue = 90;
                                    } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                        iIntValue = 180;
                                    } else {
                                        iIntValue = 180;
                                    }
                                }
                                aVar.f11710p = bVar6.f18571m;
                                aVar.f11711q = bVar6.f18572n;
                                aVar.f11714t = f10;
                                aVar.f11713s = iIntValue;
                                aVar.f11715u = bVar6.f18580v;
                                aVar.f11716v = bVar6.f18581w;
                                aVar.f11717w = bVar;
                                i16 = 2;
                            } else {
                                if ("application/x-subrip".equals(str13)) {
                                }
                                i16 = i13;
                            }
                            str9 = bVar6.f18559a;
                            if (str9 != null) {
                                aVar.f11696b = bVar6.f18559a;
                            }
                            aVar.b(i35);
                            aVar.f11705k = str13;
                            aVar.f11706l = b13;
                            aVar.f11697c = bVar6.W;
                            aVar.f11698d = i318;
                            aVar.f11707m = list9;
                            aVar.f11702h = str;
                            aVar.f11708n = bVar6.f18570l;
                            s0 s0VarA5 = aVar.a();
                            s3.w wVarP5 = jVar2.p(bVar6.f18561c, i16);
                            bVar6.X = wVarP5;
                            wVarP5.b(s0VarA5);
                            dVar = this;
                            dVar.f18534c.put(bVar6.f18561c, bVar6);
                            break;
                        }
                        z11 = true;
                        if (z11) {
                            iY = g0.y(bVar6.P);
                            if (iY != 0) {
                                i15 = iY;
                                str = null;
                                i16 = 1;
                                i13 = 3;
                                list2 = null;
                                b13 = -1;
                                list9 = list2;
                                bArr = bVar6.N;
                                if (bArr != null) {
                                    str = cVarA.f11869a;
                                    str13 = "video/dolby-vision";
                                }
                                int i319 = (bVar6.V ? 1 : 0) | 0;
                                if (bVar6.U) {
                                    i18 = 2;
                                } else {
                                    i18 = 0;
                                }
                                int i3110 = i319 | i18;
                                aVar = new s0.a();
                                if (s.k(str13)) {
                                    aVar.f11718x = bVar6.O;
                                    aVar.f11719y = bVar6.Q;
                                    aVar.f11720z = i15;
                                } else if (s.n(str13)) {
                                    if (bVar6.f18575q == 0) {
                                        i21 = bVar6.f18573o;
                                        iIntValue = -1;
                                        if (i21 == -1) {
                                            i21 = bVar6.f18571m;
                                        }
                                        bVar6.f18573o = i21;
                                        i22 = bVar6.f18574p;
                                        if (i22 == -1) {
                                            i22 = bVar6.f18572n;
                                        }
                                        bVar6.f18574p = i22;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    f10 = -1.0f;
                                    i19 = bVar6.f18573o;
                                    if (i19 != iIntValue) {
                                        f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                                    }
                                    if (bVar6.f18582x) {
                                        if (bVar6.D != -1.0f) {
                                            bArr2 = null;
                                        } else {
                                            bArr2 = null;
                                        }
                                        bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                                    } else {
                                        bVar = null;
                                    }
                                    str8 = bVar6.f18559a;
                                    if (str8 != null) {
                                        map = f18529h0;
                                        if (map.containsKey(str8)) {
                                            iIntValue = map.get(bVar6.f18559a).intValue();
                                        }
                                    }
                                    if (bVar6.f18576r == 0) {
                                        if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                            iIntValue = 0;
                                        } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                            iIntValue = 90;
                                        } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                            iIntValue = 180;
                                        } else {
                                            iIntValue = 180;
                                        }
                                    }
                                    aVar.f11710p = bVar6.f18571m;
                                    aVar.f11711q = bVar6.f18572n;
                                    aVar.f11714t = f10;
                                    aVar.f11713s = iIntValue;
                                    aVar.f11715u = bVar6.f18580v;
                                    aVar.f11716v = bVar6.f18581w;
                                    aVar.f11717w = bVar;
                                    i16 = 2;
                                } else {
                                    if ("application/x-subrip".equals(str13)) {
                                    }
                                    i16 = i13;
                                }
                                str9 = bVar6.f18559a;
                                if (str9 != null) {
                                    aVar.f11696b = bVar6.f18559a;
                                }
                                aVar.b(i35);
                                aVar.f11705k = str13;
                                aVar.f11706l = b13;
                                aVar.f11697c = bVar6.W;
                                aVar.f11698d = i3110;
                                aVar.f11707m = list9;
                                aVar.f11702h = str;
                                aVar.f11708n = bVar6.f18570l;
                                s0 s0VarA6 = aVar.a();
                                s3.w wVarP6 = jVar2.p(bVar6.f18561c, i16);
                                bVar6.X = wVarP6;
                                wVarP6.b(s0VarA6);
                                dVar = this;
                                dVar.f18534c.put(bVar6.f18561c, bVar6);
                            } else {
                                StringBuilder sbC3 = a0.b.c("Unsupported PCM bit depth: ");
                                sbC3.append(bVar6.P);
                                sbC3.append(". Setting mimeType to ");
                                sbC3.append("audio/x-unknown");
                                p.g("MatroskaExtractor", sbC3.toString());
                            }
                        } else {
                            p.g("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                        }
                        listSingletonList = null;
                        str13 = str14;
                        i13 = i12;
                        b11 = -1;
                        list = listSingletonList;
                        i14 = i11;
                        iY2 = -1;
                        list6 = list;
                        int i3111 = iY2;
                        b13 = b11;
                        list9 = list6;
                        i16 = i14;
                        str = null;
                        i15 = i3111;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str = cVarA.f11869a;
                            str13 = "video/dolby-vision";
                        }
                        int i3112 = (bVar6.V ? 1 : 0) | 0;
                        if (bVar6.U) {
                            i18 = 2;
                        } else {
                            i18 = 0;
                        }
                        int i3113 = i3112 | i18;
                        aVar = new s0.a();
                        if (s.k(str13)) {
                            aVar.f11718x = bVar6.O;
                            aVar.f11719y = bVar6.Q;
                            aVar.f11720z = i15;
                        } else if (s.n(str13)) {
                            if (bVar6.f18575q == 0) {
                                i21 = bVar6.f18573o;
                                iIntValue = -1;
                                if (i21 == -1) {
                                    i21 = bVar6.f18571m;
                                }
                                bVar6.f18573o = i21;
                                i22 = bVar6.f18574p;
                                if (i22 == -1) {
                                    i22 = bVar6.f18572n;
                                }
                                bVar6.f18574p = i22;
                            } else {
                                iIntValue = -1;
                            }
                            f10 = -1.0f;
                            i19 = bVar6.f18573o;
                            if (i19 != iIntValue) {
                                f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                            }
                            if (bVar6.f18582x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                            } else {
                                bVar = null;
                            }
                            str8 = bVar6.f18559a;
                            if (str8 != null) {
                                map = f18529h0;
                                if (map.containsKey(str8)) {
                                    iIntValue = map.get(bVar6.f18559a).intValue();
                                }
                            }
                            if (bVar6.f18576r == 0) {
                                if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            aVar.f11710p = bVar6.f18571m;
                            aVar.f11711q = bVar6.f18572n;
                            aVar.f11714t = f10;
                            aVar.f11713s = iIntValue;
                            aVar.f11715u = bVar6.f18580v;
                            aVar.f11716v = bVar6.f18581w;
                            aVar.f11717w = bVar;
                            i16 = 2;
                        } else {
                            if ("application/x-subrip".equals(str13)) {
                            }
                            i16 = i13;
                        }
                        str9 = bVar6.f18559a;
                        if (str9 != null) {
                            aVar.f11696b = bVar6.f18559a;
                        }
                        aVar.b(i35);
                        aVar.f11705k = str13;
                        aVar.f11706l = b13;
                        aVar.f11697c = bVar6.W;
                        aVar.f11698d = i3113;
                        aVar.f11707m = list9;
                        aVar.f11702h = str;
                        aVar.f11708n = bVar6.f18570l;
                        s0 s0VarA7 = aVar.a();
                        s3.w wVarP7 = jVar2.p(bVar6.f18561c, i16);
                        bVar6.X = wVarP7;
                        wVarP7.b(s0VarA7);
                        dVar = this;
                        dVar.f18534c.put(bVar6.f18561c, bVar6);
                    } catch (ArrayIndexOutOfBoundsException unused) {
                        throw i1.a("Error parsing MS/ACM codec private", null);
                    }
                    break;
                case 3:
                    i17 = 3;
                    bVar6.T = new x();
                    str2 = "audio/true-hd";
                    b11 = -1;
                    list3 = null;
                    String str15 = str2;
                    list = list3;
                    i14 = 1;
                    i13 = i17;
                    str13 = str15;
                    iY2 = -1;
                    list6 = list;
                    int i3114 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i3114;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i3115 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i3116 = i3115 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i3116;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA8 = aVar.a();
                    s3.w wVarP8 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP8;
                    wVarP8.b(s0VarA8);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 4:
                    ?? r10 = 8192;
                    b11 = 8192;
                    byte[] bArrB = bVar6.b(bVar6.f18560b);
                    try {
                        try {
                            if (bArrB[0] != 2) {
                                throw i1.a("Error parsing vorbis codec private", null);
                            }
                            int i40 = 1;
                            int i41 = 0;
                            while ((bArrB[i40] & 255) == 255) {
                                i41 += 255;
                                i40++;
                            }
                            int i42 = i40 + 1;
                            int i43 = i41 + (bArrB[i40] & 255);
                            int i44 = 0;
                            while ((bArrB[i42] & 255) == 255) {
                                i44 += 255;
                                i42++;
                            }
                            int i45 = i42 + 1;
                            int i46 = i44 + (bArrB[i42] & 255);
                            if (bArrB[i45] != 1) {
                                throw i1.a("Error parsing vorbis codec private", null);
                            }
                            byte[] bArr4 = new byte[i43];
                            System.arraycopy(bArrB, i45, bArr4, 0, i43);
                            int i47 = i45 + i43;
                            if (bArrB[i47] != 3) {
                                throw i1.a("Error parsing vorbis codec private", null);
                            }
                            int i48 = i47 + i46;
                            if (bArrB[i48] != 5) {
                                throw i1.a("Error parsing vorbis codec private", null);
                            }
                            byte[] bArr5 = new byte[bArrB.length - i48];
                            System.arraycopy(bArrB, i48, bArr5, 0, bArrB.length - i48);
                            ArrayList arrayList = new ArrayList(2);
                            arrayList.add(bArr4);
                            arrayList.add(bArr5);
                            str2 = "audio/vorbis";
                            i17 = 3;
                            list3 = arrayList;
                            String str16 = str2;
                            list = list3;
                            i14 = 1;
                            i13 = i17;
                            str13 = str16;
                            iY2 = -1;
                            list6 = list;
                            int i3117 = iY2;
                            b13 = b11;
                            list9 = list6;
                            i16 = i14;
                            str = null;
                            i15 = i3117;
                            bArr = bVar6.N;
                            if (bArr != null) {
                                str = cVarA.f11869a;
                                str13 = "video/dolby-vision";
                            }
                            int i3118 = (bVar6.V ? 1 : 0) | 0;
                            if (bVar6.U) {
                                i18 = 2;
                            } else {
                                i18 = 0;
                            }
                            int i3119 = i3118 | i18;
                            aVar = new s0.a();
                            if (s.k(str13)) {
                                aVar.f11718x = bVar6.O;
                                aVar.f11719y = bVar6.Q;
                                aVar.f11720z = i15;
                            } else if (s.n(str13)) {
                                if (bVar6.f18575q == 0) {
                                    i21 = bVar6.f18573o;
                                    iIntValue = -1;
                                    if (i21 == -1) {
                                        i21 = bVar6.f18571m;
                                    }
                                    bVar6.f18573o = i21;
                                    i22 = bVar6.f18574p;
                                    if (i22 == -1) {
                                        i22 = bVar6.f18572n;
                                    }
                                    bVar6.f18574p = i22;
                                } else {
                                    iIntValue = -1;
                                }
                                f10 = -1.0f;
                                i19 = bVar6.f18573o;
                                if (i19 != iIntValue) {
                                    f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                                }
                                if (bVar6.f18582x) {
                                    if (bVar6.D != -1.0f) {
                                        bArr2 = null;
                                    } else {
                                        bArr2 = null;
                                    }
                                    bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                                } else {
                                    bVar = null;
                                }
                                str8 = bVar6.f18559a;
                                if (str8 != null) {
                                    map = f18529h0;
                                    if (map.containsKey(str8)) {
                                        iIntValue = map.get(bVar6.f18559a).intValue();
                                    }
                                }
                                if (bVar6.f18576r == 0) {
                                    if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                        iIntValue = 0;
                                    } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                        iIntValue = 90;
                                    } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                        iIntValue = 180;
                                    } else {
                                        iIntValue = 180;
                                    }
                                }
                                aVar.f11710p = bVar6.f18571m;
                                aVar.f11711q = bVar6.f18572n;
                                aVar.f11714t = f10;
                                aVar.f11713s = iIntValue;
                                aVar.f11715u = bVar6.f18580v;
                                aVar.f11716v = bVar6.f18581w;
                                aVar.f11717w = bVar;
                                i16 = 2;
                            } else {
                                if ("application/x-subrip".equals(str13)) {
                                }
                                i16 = i13;
                            }
                            str9 = bVar6.f18559a;
                            if (str9 != null) {
                                aVar.f11696b = bVar6.f18559a;
                            }
                            aVar.b(i35);
                            aVar.f11705k = str13;
                            aVar.f11706l = b13;
                            aVar.f11697c = bVar6.W;
                            aVar.f11698d = i3119;
                            aVar.f11707m = list9;
                            aVar.f11702h = str;
                            aVar.f11708n = bVar6.f18570l;
                            s0 s0VarA9 = aVar.a();
                            s3.w wVarP9 = jVar2.p(bVar6.f18561c, i16);
                            bVar6.X = wVarP9;
                            wVarP9.b(s0VarA9);
                            dVar = this;
                            dVar.f18534c.put(bVar6.f18561c, bVar6);
                        } catch (ArrayIndexOutOfBoundsException unused2) {
                            throw i1.a("Error parsing vorbis codec private", r10);
                        }
                    } catch (ArrayIndexOutOfBoundsException unused3) {
                        r10 = 0;
                    }
                    break;
                case 5:
                    str3 = "audio/mpeg-L2";
                    str4 = str3;
                    b12 = 4096;
                    list4 = null;
                    i13 = 3;
                    byte b14 = b12;
                    list = list4;
                    b11 = b14;
                    str13 = str4;
                    i14 = 1;
                    iY2 = -1;
                    list6 = list;
                    int i31110 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i31110;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i31111 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i31112 = i31111 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i31112;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA10 = aVar.a();
                    s3.w wVarP10 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP10;
                    wVarP10.b(s0VarA10);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 6:
                    str3 = "audio/mpeg";
                    str4 = str3;
                    b12 = 4096;
                    list4 = null;
                    i13 = 3;
                    byte b15 = b12;
                    list = list4;
                    b11 = b15;
                    str13 = str4;
                    i14 = 1;
                    iY2 = -1;
                    list6 = list;
                    int i31113 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i31113;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i31114 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i31115 = i31114 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i31115;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA11 = aVar.a();
                    s3.w wVarP11 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP11;
                    wVarP11.b(s0VarA11);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 7:
                    byte[] bArrB2 = bVar6.b(bVar6.f18560b);
                    try {
                        m5.a.a(16 <= bArrB2.length);
                        long j14 = (((long) bArrB2[16]) & 255) | ((((long) bArrB2[17]) & 255) << 8) | ((((long) bArrB2[18]) & 255) << 16) | ((255 & ((long) bArrB2[19])) << 24);
                        if (j14 == 1482049860) {
                            pair = new Pair("video/divx", null);
                        } else if (j14 == 859189832) {
                            pair = new Pair("video/3gpp", null);
                        } else if (j14 == 826496599) {
                            int i49 = 40;
                            while (true) {
                                if (i49 >= bArrB2.length - 4) {
                                    throw i1.a("Failed to find FourCC VC1 initialization data", null);
                                }
                                if (bArrB2[i49] == 0 && bArrB2[i49 + 1] == 0 && bArrB2[i49 + 2] == 1 && bArrB2[i49 + 3] == 15) {
                                    pair = new Pair("video/wvc1", Collections.singletonList(Arrays.copyOfRange(bArrB2, i49, bArrB2.length)));
                                } else {
                                    i49++;
                                }
                            }
                        } else {
                            p.g("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                            pair = new Pair("video/x-unknown", null);
                        }
                        str4 = (String) pair.first;
                        list4 = (List) pair.second;
                        b12 = -1;
                        i13 = 3;
                        byte b16 = b12;
                        list = list4;
                        b11 = b16;
                        str13 = str4;
                        i14 = 1;
                        iY2 = -1;
                        list6 = list;
                        int i31116 = iY2;
                        b13 = b11;
                        list9 = list6;
                        i16 = i14;
                        str = null;
                        i15 = i31116;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str = cVarA.f11869a;
                            str13 = "video/dolby-vision";
                        }
                        int i31117 = (bVar6.V ? 1 : 0) | 0;
                        if (bVar6.U) {
                            i18 = 2;
                        } else {
                            i18 = 0;
                        }
                        int i31118 = i31117 | i18;
                        aVar = new s0.a();
                        if (s.k(str13)) {
                            aVar.f11718x = bVar6.O;
                            aVar.f11719y = bVar6.Q;
                            aVar.f11720z = i15;
                        } else if (s.n(str13)) {
                            if (bVar6.f18575q == 0) {
                                i21 = bVar6.f18573o;
                                iIntValue = -1;
                                if (i21 == -1) {
                                    i21 = bVar6.f18571m;
                                }
                                bVar6.f18573o = i21;
                                i22 = bVar6.f18574p;
                                if (i22 == -1) {
                                    i22 = bVar6.f18572n;
                                }
                                bVar6.f18574p = i22;
                            } else {
                                iIntValue = -1;
                            }
                            f10 = -1.0f;
                            i19 = bVar6.f18573o;
                            if (i19 != iIntValue) {
                                f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                            }
                            if (bVar6.f18582x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                            } else {
                                bVar = null;
                            }
                            str8 = bVar6.f18559a;
                            if (str8 != null) {
                                map = f18529h0;
                                if (map.containsKey(str8)) {
                                    iIntValue = map.get(bVar6.f18559a).intValue();
                                }
                            }
                            if (bVar6.f18576r == 0) {
                                if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            aVar.f11710p = bVar6.f18571m;
                            aVar.f11711q = bVar6.f18572n;
                            aVar.f11714t = f10;
                            aVar.f11713s = iIntValue;
                            aVar.f11715u = bVar6.f18580v;
                            aVar.f11716v = bVar6.f18581w;
                            aVar.f11717w = bVar;
                            i16 = 2;
                        } else {
                            if ("application/x-subrip".equals(str13)) {
                            }
                            i16 = i13;
                        }
                        str9 = bVar6.f18559a;
                        if (str9 != null) {
                            aVar.f11696b = bVar6.f18559a;
                        }
                        aVar.b(i35);
                        aVar.f11705k = str13;
                        aVar.f11706l = b13;
                        aVar.f11697c = bVar6.W;
                        aVar.f11698d = i31118;
                        aVar.f11707m = list9;
                        aVar.f11702h = str;
                        aVar.f11708n = bVar6.f18570l;
                        s0 s0VarA12 = aVar.a();
                        s3.w wVarP12 = jVar2.p(bVar6.f18561c, i16);
                        bVar6.X = wVarP12;
                        wVarP12.b(s0VarA12);
                        dVar = this;
                        dVar.f18534c.put(bVar6.f18561c, bVar6);
                    } catch (ArrayIndexOutOfBoundsException unused4) {
                        throw i1.a("Error parsing FourCC private data", null);
                    }
                    break;
                case 8:
                    byte[] bArr6 = new byte[4];
                    System.arraycopy(bVar6.b(bVar6.f18560b), 0, bArr6, 0, 4);
                    str5 = "application/dvbsubs";
                    listV = v.v(bArr6);
                    str2 = str5;
                    list7 = listV;
                    b11 = -1;
                    list10 = list7;
                    i17 = 3;
                    list3 = list10;
                    String str17 = str2;
                    list = list3;
                    i14 = 1;
                    i13 = i17;
                    str13 = str17;
                    iY2 = -1;
                    list6 = list;
                    int i31119 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i31119;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i311110 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i311111 = i311110 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i311111;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA13 = aVar.a();
                    s3.w wVarP13 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP13;
                    wVarP13.b(s0VarA13);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 10:
                    n5.a aVarB = n5.a.b(new w(bVar6.b(bVar6.f18560b)));
                    list5 = aVarB.f11857a;
                    bVar6.Y = aVarB.f11858b;
                    str6 = aVarB.f11862f;
                    str7 = "video/avc";
                    str13 = str7;
                    List<byte[]> list11 = list5;
                    str = str6;
                    list8 = list11;
                    i16 = 1;
                    i13 = 3;
                    i15 = -1;
                    list2 = list8;
                    b13 = -1;
                    list9 = list2;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i311112 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i311113 = i311112 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i311113;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA14 = aVar.a();
                    s3.w wVarP14 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP14;
                    wVarP14.b(s0VarA14);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 11:
                    str5 = "application/vobsub";
                    listV = v.v(bVar6.b(bVar6.f18560b));
                    str2 = str5;
                    list7 = listV;
                    b11 = -1;
                    list10 = list7;
                    i17 = 3;
                    list3 = list10;
                    String str18 = str2;
                    list = list3;
                    i14 = 1;
                    i13 = i17;
                    str13 = str18;
                    iY2 = -1;
                    list6 = list;
                    int i311114 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i311114;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i311115 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i311116 = i311115 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i311116;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA15 = aVar.a();
                    s3.w wVarP15 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP15;
                    wVarP15.b(s0VarA15);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 12:
                    str12 = "audio/vnd.dts.hd";
                    str14 = str12;
                    list7 = null;
                    str2 = str14;
                    b11 = -1;
                    list10 = list7;
                    i17 = 3;
                    list3 = list10;
                    String str19 = str2;
                    list = list3;
                    i14 = 1;
                    i13 = i17;
                    str13 = str19;
                    iY2 = -1;
                    list6 = list;
                    int i311117 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i311117;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i311118 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i311119 = i311118 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i311119;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA16 = aVar.a();
                    s3.w wVarP16 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP16;
                    wVarP16.b(s0VarA16);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 13:
                    List<byte[]> listSingletonList2 = Collections.singletonList(bVar6.b(bVar6.f18560b));
                    p3.a.C0228a c0228aE = p3.a.e(bVar6.f18569k);
                    bVar6.Q = c0228aE.f12653a;
                    bVar6.O = c0228aE.f12654b;
                    str = c0228aE.f12655c;
                    str13 = "audio/mp4a-latm";
                    list8 = listSingletonList2;
                    i16 = 1;
                    i13 = 3;
                    i15 = -1;
                    list2 = list8;
                    b13 = -1;
                    list9 = list2;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i3111110 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i3111111 = i3111110 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i3111111;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA17 = aVar.a();
                    s3.w wVarP17 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP17;
                    wVarP17.b(s0VarA17);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 14:
                    str12 = "audio/ac3";
                    str14 = str12;
                    list7 = null;
                    str2 = str14;
                    b11 = -1;
                    list10 = list7;
                    i17 = 3;
                    list3 = list10;
                    String str110 = str2;
                    list = list3;
                    i14 = 1;
                    i13 = i17;
                    str13 = str110;
                    iY2 = -1;
                    list6 = list;
                    int i3111112 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i3111112;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i3111113 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i3111114 = i3111113 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i3111114;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA18 = aVar.a();
                    s3.w wVarP18 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP18;
                    wVarP18.b(s0VarA18);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 15:
                case 21:
                    str12 = "audio/vnd.dts";
                    str14 = str12;
                    list7 = null;
                    str2 = str14;
                    b11 = -1;
                    list10 = list7;
                    i17 = 3;
                    list3 = list10;
                    String str111 = str2;
                    list = list3;
                    i14 = 1;
                    i13 = i17;
                    str13 = str111;
                    iY2 = -1;
                    list6 = list;
                    int i3111115 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i3111115;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i3111116 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i3111117 = i3111116 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i3111117;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA19 = aVar.a();
                    s3.w wVarP19 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP19;
                    wVarP19.b(s0VarA19);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 16:
                    str12 = "video/av01";
                    str14 = str12;
                    list7 = null;
                    str2 = str14;
                    b11 = -1;
                    list10 = list7;
                    i17 = 3;
                    list3 = list10;
                    String str112 = str2;
                    list = list3;
                    i14 = 1;
                    i13 = i17;
                    str13 = str112;
                    iY2 = -1;
                    list6 = list;
                    int i3111118 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i3111118;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i3111119 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i31111110 = i3111119 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i31111110;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA110 = aVar.a();
                    s3.w wVarP110 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP110;
                    wVarP110.b(s0VarA110);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 17:
                    str12 = "video/x-vnd.on2.vp8";
                    str14 = str12;
                    list7 = null;
                    str2 = str14;
                    b11 = -1;
                    list10 = list7;
                    i17 = 3;
                    list3 = list10;
                    String str113 = str2;
                    list = list3;
                    i14 = 1;
                    i13 = i17;
                    str13 = str113;
                    iY2 = -1;
                    list6 = list;
                    int i31111111 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i31111111;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i31111112 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i31111113 = i31111112 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i31111113;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA111 = aVar.a();
                    s3.w wVarP111 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP111;
                    wVarP111.b(s0VarA111);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 18:
                    str12 = "video/x-vnd.on2.vp9";
                    str14 = str12;
                    list7 = null;
                    str2 = str14;
                    b11 = -1;
                    list10 = list7;
                    i17 = 3;
                    list3 = list10;
                    String str114 = str2;
                    list = list3;
                    i14 = 1;
                    i13 = i17;
                    str13 = str114;
                    iY2 = -1;
                    list6 = list;
                    int i31111114 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i31111114;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i31111115 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i31111116 = i31111115 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i31111116;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA112 = aVar.a();
                    s3.w wVarP112 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP112;
                    wVarP112.b(s0VarA112);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 19:
                    str12 = "application/pgs";
                    str14 = str12;
                    list7 = null;
                    str2 = str14;
                    b11 = -1;
                    list10 = list7;
                    i17 = 3;
                    list3 = list10;
                    String str115 = str2;
                    list = list3;
                    i14 = 1;
                    i13 = i17;
                    str13 = str115;
                    iY2 = -1;
                    list6 = list;
                    int i31111117 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i31111117;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i31111118 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i31111119 = i31111118 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i31111119;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA113 = aVar.a();
                    s3.w wVarP113 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP113;
                    wVarP113.b(s0VarA113);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 20:
                    str14 = str12;
                    list7 = null;
                    str2 = str14;
                    b11 = -1;
                    list10 = list7;
                    i17 = 3;
                    list3 = list10;
                    String str116 = str2;
                    list = list3;
                    i14 = 1;
                    i13 = i17;
                    str13 = str116;
                    iY2 = -1;
                    list6 = list;
                    int i311111110 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i311111110;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i311111111 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i311111112 = i311111111 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i311111112;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA114 = aVar.a();
                    s3.w wVarP114 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP114;
                    wVarP114.b(s0VarA114);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 22:
                    if (bVar6.P == 32) {
                        b11 = -1;
                        i14 = 1;
                        list6 = null;
                        i13 = 3;
                    } else {
                        StringBuilder sbC4 = a0.b.c("Unsupported floating point PCM bit depth: ");
                        sbC4.append(bVar6.P);
                        sbC4.append(". Setting mimeType to ");
                        sbC4.append("audio/x-unknown");
                        p.g("MatroskaExtractor", sbC4.toString());
                        list7 = null;
                        str2 = str14;
                        b11 = -1;
                        list10 = list7;
                        i17 = 3;
                        list3 = list10;
                        String str117 = str2;
                        list = list3;
                        i14 = 1;
                        i13 = i17;
                        str13 = str117;
                        iY2 = -1;
                        list6 = list;
                    }
                    int i311111113 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i311111113;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i311111114 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i311111115 = i311111114 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i311111115;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA115 = aVar.a();
                    s3.w wVarP115 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP115;
                    wVarP115.b(s0VarA115);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 23:
                    int i50 = bVar6.P;
                    if (i50 == 8) {
                        iY2 = 3;
                    } else if (i50 != 16) {
                        StringBuilder sbC5 = a0.b.c("Unsupported big endian PCM bit depth: ");
                        sbC5.append(bVar6.P);
                        sbC5.append(". Setting mimeType to ");
                        sbC5.append("audio/x-unknown");
                        p.g("MatroskaExtractor", sbC5.toString());
                        list7 = null;
                        str2 = str14;
                        b11 = -1;
                        list10 = list7;
                        i17 = 3;
                        list3 = list10;
                        String str118 = str2;
                        list = list3;
                        i14 = 1;
                        i13 = i17;
                        str13 = str118;
                        iY2 = -1;
                        list6 = list;
                        int i311111116 = iY2;
                        b13 = b11;
                        list9 = list6;
                        i16 = i14;
                        str = null;
                        i15 = i311111116;
                        bArr = bVar6.N;
                        if (bArr != null) {
                            str = cVarA.f11869a;
                            str13 = "video/dolby-vision";
                        }
                        int i311111117 = (bVar6.V ? 1 : 0) | 0;
                        if (bVar6.U) {
                            i18 = 2;
                        } else {
                            i18 = 0;
                        }
                        int i311111118 = i311111117 | i18;
                        aVar = new s0.a();
                        if (s.k(str13)) {
                            aVar.f11718x = bVar6.O;
                            aVar.f11719y = bVar6.Q;
                            aVar.f11720z = i15;
                        } else if (s.n(str13)) {
                            if (bVar6.f18575q == 0) {
                                i21 = bVar6.f18573o;
                                iIntValue = -1;
                                if (i21 == -1) {
                                    i21 = bVar6.f18571m;
                                }
                                bVar6.f18573o = i21;
                                i22 = bVar6.f18574p;
                                if (i22 == -1) {
                                    i22 = bVar6.f18572n;
                                }
                                bVar6.f18574p = i22;
                            } else {
                                iIntValue = -1;
                            }
                            f10 = -1.0f;
                            i19 = bVar6.f18573o;
                            if (i19 != iIntValue) {
                                f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                            }
                            if (bVar6.f18582x) {
                                if (bVar6.D != -1.0f) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = null;
                                }
                                bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                            } else {
                                bVar = null;
                            }
                            str8 = bVar6.f18559a;
                            if (str8 != null) {
                                map = f18529h0;
                                if (map.containsKey(str8)) {
                                    iIntValue = map.get(bVar6.f18559a).intValue();
                                }
                            }
                            if (bVar6.f18576r == 0) {
                                if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            aVar.f11710p = bVar6.f18571m;
                            aVar.f11711q = bVar6.f18572n;
                            aVar.f11714t = f10;
                            aVar.f11713s = iIntValue;
                            aVar.f11715u = bVar6.f18580v;
                            aVar.f11716v = bVar6.f18581w;
                            aVar.f11717w = bVar;
                            i16 = 2;
                        } else {
                            if ("application/x-subrip".equals(str13)) {
                            }
                            i16 = i13;
                        }
                        str9 = bVar6.f18559a;
                        if (str9 != null) {
                            aVar.f11696b = bVar6.f18559a;
                        }
                        aVar.b(i35);
                        aVar.f11705k = str13;
                        aVar.f11706l = b13;
                        aVar.f11697c = bVar6.W;
                        aVar.f11698d = i311111118;
                        aVar.f11707m = list9;
                        aVar.f11702h = str;
                        aVar.f11708n = bVar6.f18570l;
                        s0 s0VarA116 = aVar.a();
                        s3.w wVarP116 = jVar2.p(bVar6.f18561c, i16);
                        bVar6.X = wVarP116;
                        wVarP116.b(s0VarA116);
                        dVar = this;
                        dVar.f18534c.put(bVar6.f18561c, bVar6);
                    } else {
                        iY2 = 268435456;
                    }
                    b11 = -1;
                    i14 = 1;
                    list6 = null;
                    i13 = 3;
                    int i311111119 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i311111119;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i3111111110 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i3111111111 = i3111111110 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i3111111111;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA117 = aVar.a();
                    s3.w wVarP117 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP117;
                    wVarP117.b(s0VarA117);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 24:
                    iY2 = g0.y(bVar6.P);
                    if (iY2 == 0) {
                        StringBuilder sbC6 = a0.b.c("Unsupported little endian PCM bit depth: ");
                        sbC6.append(bVar6.P);
                        sbC6.append(". Setting mimeType to ");
                        sbC6.append("audio/x-unknown");
                        p.g("MatroskaExtractor", sbC6.toString());
                        list7 = null;
                        str2 = str14;
                        b11 = -1;
                        list10 = list7;
                        i17 = 3;
                        list3 = list10;
                        String str119 = str2;
                        list = list3;
                        i14 = 1;
                        i13 = i17;
                        str13 = str119;
                        iY2 = -1;
                        list6 = list;
                    } else {
                        b11 = -1;
                        i14 = 1;
                        list6 = null;
                        i13 = 3;
                    }
                    int i3111111112 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i3111111112;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i3111111113 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i3111111114 = i3111111113 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i3111111114;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA118 = aVar.a();
                    s3.w wVarP118 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP118;
                    wVarP118.b(s0VarA118);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 25:
                    str5 = "text/x-ssa";
                    listV = v.w(d0, bVar6.b(bVar6.f18560b));
                    str2 = str5;
                    list7 = listV;
                    b11 = -1;
                    list10 = list7;
                    i17 = 3;
                    list3 = list10;
                    String str1110 = str2;
                    list = list3;
                    i14 = 1;
                    i13 = i17;
                    str13 = str1110;
                    iY2 = -1;
                    list6 = list;
                    int i3111111115 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i3111111115;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i3111111116 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i3111111117 = i3111111116 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i3111111117;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA119 = aVar.a();
                    s3.w wVarP119 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP119;
                    wVarP119.b(s0VarA119);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 26:
                    n5.e eVarA = n5.e.a(new w(bVar6.b(bVar6.f18560b)));
                    list5 = eVarA.f11883a;
                    bVar6.Y = eVarA.f11884b;
                    str6 = eVarA.f11886d;
                    str7 = "video/hevc";
                    str13 = str7;
                    List<byte[]> list12 = list5;
                    str = str6;
                    list8 = list12;
                    i16 = 1;
                    i13 = 3;
                    i15 = -1;
                    list2 = list8;
                    b13 = -1;
                    list9 = list2;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i3111111118 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i3111111119 = i3111111118 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i3111111119;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA1110 = aVar.a();
                    s3.w wVarP1110 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP1110;
                    wVarP1110.b(s0VarA1110);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 27:
                    str12 = "text/vtt";
                    str14 = str12;
                    list7 = null;
                    str2 = str14;
                    b11 = -1;
                    list10 = list7;
                    i17 = 3;
                    list3 = list10;
                    String str1111 = str2;
                    list = list3;
                    i14 = 1;
                    i13 = i17;
                    str13 = str1111;
                    iY2 = -1;
                    list6 = list;
                    int i31111111110 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i31111111110;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i31111111111 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i31111111112 = i31111111111 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i31111111112;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA1111 = aVar.a();
                    s3.w wVarP1111 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP1111;
                    wVarP1111.b(s0VarA1111);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 28:
                    str12 = "application/x-subrip";
                    str14 = str12;
                    list7 = null;
                    str2 = str14;
                    b11 = -1;
                    list10 = list7;
                    i17 = 3;
                    list3 = list10;
                    String str1112 = str2;
                    list = list3;
                    i14 = 1;
                    i13 = i17;
                    str13 = str1112;
                    iY2 = -1;
                    list6 = list;
                    int i31111111113 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i31111111113;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i31111111114 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i31111111115 = i31111111114 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i31111111115;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA1112 = aVar.a();
                    s3.w wVarP1112 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP1112;
                    wVarP1112.b(s0VarA1112);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 29:
                    str12 = "video/mpeg2";
                    str14 = str12;
                    list7 = null;
                    str2 = str14;
                    b11 = -1;
                    list10 = list7;
                    i17 = 3;
                    list3 = list10;
                    String str1113 = str2;
                    list = list3;
                    i14 = 1;
                    i13 = i17;
                    str13 = str1113;
                    iY2 = -1;
                    list6 = list;
                    int i31111111116 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i31111111116;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i31111111117 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i31111111118 = i31111111117 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i31111111118;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA1113 = aVar.a();
                    s3.w wVarP1113 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP1113;
                    wVarP1113.b(s0VarA1113);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 30:
                    str12 = "audio/eac3";
                    str14 = str12;
                    list7 = null;
                    str2 = str14;
                    b11 = -1;
                    list10 = list7;
                    i17 = 3;
                    list3 = list10;
                    String str1114 = str2;
                    list = list3;
                    i14 = 1;
                    i13 = i17;
                    str13 = str1114;
                    iY2 = -1;
                    list6 = list;
                    int i31111111119 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i31111111119;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i311111111110 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i311111111111 = i311111111110 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i311111111111;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA1114 = aVar.a();
                    s3.w wVarP1114 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP1114;
                    wVarP1114.b(s0VarA1114);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 31:
                    str5 = "audio/flac";
                    listV = Collections.singletonList(bVar6.b(bVar6.f18560b));
                    str2 = str5;
                    list7 = listV;
                    b11 = -1;
                    list10 = list7;
                    i17 = 3;
                    list3 = list10;
                    String str1115 = str2;
                    list = list3;
                    i14 = 1;
                    i13 = i17;
                    str13 = str1115;
                    iY2 = -1;
                    list6 = list;
                    int i311111111112 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i311111111112;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i311111111113 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i311111111114 = i311111111113 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i311111111114;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA1115 = aVar.a();
                    s3.w wVarP1115 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP1115;
                    wVarP1115.b(s0VarA1115);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                case 32:
                    b11 = 5760;
                    ArrayList arrayList2 = new ArrayList(3);
                    arrayList2.add(bVar6.b(bVar6.f18560b));
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    arrayList2.add(byteBufferAllocate.order(byteOrder).putLong(bVar6.R).array());
                    arrayList2.add(ByteBuffer.allocate(8).order(byteOrder).putLong(bVar6.S).array());
                    str2 = "audio/opus";
                    list10 = arrayList2;
                    i17 = 3;
                    list3 = list10;
                    String str1116 = str2;
                    list = list3;
                    i14 = 1;
                    i13 = i17;
                    str13 = str1116;
                    iY2 = -1;
                    list6 = list;
                    int i311111111115 = iY2;
                    b13 = b11;
                    list9 = list6;
                    i16 = i14;
                    str = null;
                    i15 = i311111111115;
                    bArr = bVar6.N;
                    if (bArr != null) {
                        str = cVarA.f11869a;
                        str13 = "video/dolby-vision";
                    }
                    int i311111111116 = (bVar6.V ? 1 : 0) | 0;
                    if (bVar6.U) {
                        i18 = 2;
                    } else {
                        i18 = 0;
                    }
                    int i311111111117 = i311111111116 | i18;
                    aVar = new s0.a();
                    if (s.k(str13)) {
                        aVar.f11718x = bVar6.O;
                        aVar.f11719y = bVar6.Q;
                        aVar.f11720z = i15;
                    } else if (s.n(str13)) {
                        if (bVar6.f18575q == 0) {
                            i21 = bVar6.f18573o;
                            iIntValue = -1;
                            if (i21 == -1) {
                                i21 = bVar6.f18571m;
                            }
                            bVar6.f18573o = i21;
                            i22 = bVar6.f18574p;
                            if (i22 == -1) {
                                i22 = bVar6.f18572n;
                            }
                            bVar6.f18574p = i22;
                        } else {
                            iIntValue = -1;
                        }
                        f10 = -1.0f;
                        i19 = bVar6.f18573o;
                        if (i19 != iIntValue) {
                            f10 = (bVar6.f18572n * i19) / (bVar6.f18571m * i20);
                        }
                        if (bVar6.f18582x) {
                            if (bVar6.D != -1.0f) {
                                bArr2 = null;
                            } else {
                                bArr2 = null;
                            }
                            bVar = new n5.b(bVar6.f18583y, bVar6.A, bVar6.f18584z, bArr2);
                        } else {
                            bVar = null;
                        }
                        str8 = bVar6.f18559a;
                        if (str8 != null) {
                            map = f18529h0;
                            if (map.containsKey(str8)) {
                                iIntValue = map.get(bVar6.f18559a).intValue();
                            }
                        }
                        if (bVar6.f18576r == 0) {
                            if (Float.compare(bVar6.f18579u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(bVar6.f18578t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(bVar6.f18578t, -180.0f) != 0) {
                                iIntValue = 180;
                            } else {
                                iIntValue = 180;
                            }
                        }
                        aVar.f11710p = bVar6.f18571m;
                        aVar.f11711q = bVar6.f18572n;
                        aVar.f11714t = f10;
                        aVar.f11713s = iIntValue;
                        aVar.f11715u = bVar6.f18580v;
                        aVar.f11716v = bVar6.f18581w;
                        aVar.f11717w = bVar;
                        i16 = 2;
                    } else {
                        if ("application/x-subrip".equals(str13)) {
                        }
                        i16 = i13;
                    }
                    str9 = bVar6.f18559a;
                    if (str9 != null) {
                        aVar.f11696b = bVar6.f18559a;
                    }
                    aVar.b(i35);
                    aVar.f11705k = str13;
                    aVar.f11706l = b13;
                    aVar.f11697c = bVar6.W;
                    aVar.f11698d = i311111111117;
                    aVar.f11707m = list9;
                    aVar.f11702h = str;
                    aVar.f11708n = bVar6.f18570l;
                    s0 s0VarA1116 = aVar.a();
                    s3.w wVarP1116 = jVar2.p(bVar6.f18561c, i16);
                    bVar6.X = wVarP1116;
                    wVarP1116.b(s0VarA1116);
                    dVar = this;
                    dVar.f18534c.put(bVar6.f18561c, bVar6);
                    break;
                default:
                    throw i1.a("Unrecognized codec identifier.", null);
            }
        }
        dVar.f18552u = null;
    }

    @Override // s3.h
    public final boolean j(i iVar) throws IOException {
        e eVar = new e();
        s3.e eVar2 = (s3.e) iVar;
        long j10 = eVar2.f15039c;
        long j11 = RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
        if (j10 != -1 && j10 <= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            j11 = j10;
        }
        int i10 = (int) j11;
        eVar2.p(eVar.f18585a.f10475a, 0, 4, false);
        eVar.f18586b = 4;
        for (long jU = eVar.f18585a.u(); jU != 440786851; jU = ((long) (eVar.f18585a.f10475a[0] & 255)) | ((jU << 8) & (-256))) {
            int i11 = eVar.f18586b + 1;
            eVar.f18586b = i11;
            if (i11 == i10) {
                return false;
            }
            eVar2.p(eVar.f18585a.f10475a, 0, 1, false);
        }
        long jA = eVar.a(iVar);
        long j12 = eVar.f18586b;
        if (jA == Long.MIN_VALUE) {
            return false;
        }
        if (j10 != -1 && j12 + jA >= j10) {
            return false;
        }
        while (true) {
            long j13 = eVar.f18586b;
            long j14 = j12 + jA;
            if (j13 >= j14) {
                return j13 == j14;
            }
            if (eVar.a(iVar) == Long.MIN_VALUE) {
                return false;
            }
            long jA2 = eVar.a(iVar);
            if (jA2 < 0 || jA2 > 2147483647L) {
                return false;
            }
            if (jA2 != 0) {
                int i12 = (int) jA2;
                eVar2.n(i12, false);
                eVar.f18586b += i12;
            }
        }
    }

    public final void k(i iVar, int i10) throws IOException {
        w wVar = this.f18538g;
        if (wVar.f10477c >= i10) {
            return;
        }
        byte[] bArr = wVar.f10475a;
        if (bArr.length < i10) {
            wVar.a(Math.max(bArr.length * 2, i10));
        }
        w wVar2 = this.f18538g;
        byte[] bArr2 = wVar2.f10475a;
        int i11 = wVar2.f10477c;
        iVar.readFully(bArr2, i11, i10 - i11);
        this.f18538g.C(i10);
    }

    public final void l() {
        this.S = 0;
        this.T = 0;
        this.U = 0;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = 0;
        this.Z = (byte) 0;
        this.f18531a0 = false;
        this.f18541j.A(0);
    }

    public final long m(long j10) throws i1 {
        long j11 = this.f18549r;
        if (j11 != -9223372036854775807L) {
            return g0.R(j10, j11, 1000L);
        }
        throw i1.a("Can't scale timecode prior to timecodeScale being set.", null);
    }

    @RequiresNonNull({"#2.output"})
    public final int n(i iVar, b bVar, int i10, boolean z10) throws IOException {
        int i11;
        if ("S_TEXT/UTF8".equals(bVar.f18560b)) {
            o(iVar, f18525c0, i10);
            int i12 = this.T;
            l();
            return i12;
        }
        if ("S_TEXT/ASS".equals(bVar.f18560b)) {
            o(iVar, f18526e0, i10);
            int i13 = this.T;
            l();
            return i13;
        }
        if ("S_TEXT/WEBVTT".equals(bVar.f18560b)) {
            o(iVar, f18527f0, i10);
            int i14 = this.T;
            l();
            return i14;
        }
        s3.w wVar = bVar.X;
        if (!this.V) {
            if (bVar.f18566h) {
                this.O &= -1073741825;
                if (!this.W) {
                    iVar.readFully(this.f18538g.f10475a, 0, 1);
                    this.S++;
                    byte[] bArr = this.f18538g.f10475a;
                    if ((bArr[0] & 128) == 128) {
                        throw i1.a("Extension bit is set in signal byte", null);
                    }
                    this.Z = bArr[0];
                    this.W = true;
                }
                byte b10 = this.Z;
                if ((b10 & 1) == 1) {
                    boolean z11 = (b10 & 2) == 2;
                    this.O |= 1073741824;
                    if (!this.f18531a0) {
                        iVar.readFully(this.f18543l.f10475a, 0, 8);
                        this.S += 8;
                        this.f18531a0 = true;
                        w wVar2 = this.f18538g;
                        wVar2.f10475a[0] = (byte) ((z11 ? 128 : 0) | 8);
                        wVar2.D(0);
                        wVar.a(this.f18538g, 1);
                        this.T++;
                        this.f18543l.D(0);
                        wVar.a(this.f18543l, 8);
                        this.T += 8;
                    }
                    if (z11) {
                        if (!this.X) {
                            iVar.readFully(this.f18538g.f10475a, 0, 1);
                            this.S++;
                            this.f18538g.D(0);
                            this.Y = this.f18538g.t();
                            this.X = true;
                        }
                        int i15 = this.Y * 4;
                        this.f18538g.A(i15);
                        iVar.readFully(this.f18538g.f10475a, 0, i15);
                        this.S += i15;
                        short s10 = (short) ((this.Y / 2) + 1);
                        int i16 = (s10 * 6) + 2;
                        ByteBuffer byteBuffer = this.f18546o;
                        if (byteBuffer == null || byteBuffer.capacity() < i16) {
                            this.f18546o = ByteBuffer.allocate(i16);
                        }
                        this.f18546o.position(0);
                        this.f18546o.putShort(s10);
                        int i17 = 0;
                        int i18 = 0;
                        while (true) {
                            i11 = this.Y;
                            if (i17 >= i11) {
                                break;
                            }
                            int iW = this.f18538g.w();
                            if (i17 % 2 == 0) {
                                this.f18546o.putShort((short) (iW - i18));
                            } else {
                                this.f18546o.putInt(iW - i18);
                            }
                            i17++;
                            i18 = iW;
                        }
                        int i19 = (i10 - this.S) - i18;
                        if (i11 % 2 == 1) {
                            this.f18546o.putInt(i19);
                        } else {
                            this.f18546o.putShort((short) i19);
                            this.f18546o.putInt(0);
                        }
                        this.f18544m.B(this.f18546o.array(), i16);
                        wVar.a(this.f18544m, i16);
                        this.T += i16;
                    }
                }
            } else {
                byte[] bArr2 = bVar.f18567i;
                if (bArr2 != null) {
                    this.f18541j.B(bArr2, bArr2.length);
                }
            }
            if (!"A_OPUS".equals(bVar.f18560b)) {
                z10 = bVar.f18564f > 0;
            }
            if (z10) {
                this.O |= 268435456;
                this.f18545n.A(0);
                int i20 = (this.f18541j.f10477c + i10) - this.S;
                this.f18538g.A(4);
                w wVar3 = this.f18538g;
                byte[] bArr3 = wVar3.f10475a;
                bArr3[0] = (byte) ((i20 >> 24) & 255);
                bArr3[1] = (byte) ((i20 >> 16) & 255);
                bArr3[2] = (byte) ((i20 >> 8) & 255);
                bArr3[3] = (byte) (i20 & 255);
                wVar.a(wVar3, 4);
                this.T += 4;
            }
            this.V = true;
        }
        int i21 = i10 + this.f18541j.f10477c;
        if (!"V_MPEG4/ISO/AVC".equals(bVar.f18560b) && !"V_MPEGH/ISO/HEVC".equals(bVar.f18560b)) {
            if (bVar.T != null) {
                m5.a.e(this.f18541j.f10477c == 0);
                bVar.T.c(iVar);
            }
            while (true) {
                int i22 = this.S;
                if (i22 >= i21) {
                    break;
                }
                int iP = p(iVar, wVar, i21 - i22);
                this.S += iP;
                this.T += iP;
            }
        } else {
            byte[] bArr4 = this.f18537f.f10475a;
            bArr4[0] = 0;
            bArr4[1] = 0;
            bArr4[2] = 0;
            int i23 = bVar.Y;
            int i24 = 4 - i23;
            while (this.S < i21) {
                int i25 = this.U;
                if (i25 == 0) {
                    w wVar4 = this.f18541j;
                    int iMin = Math.min(i23, wVar4.f10477c - wVar4.f10476b);
                    iVar.readFully(bArr4, i24 + iMin, i23 - iMin);
                    if (iMin > 0) {
                        this.f18541j.d(bArr4, i24, iMin);
                    }
                    this.S += i23;
                    this.f18537f.D(0);
                    this.U = this.f18537f.w();
                    this.f18536e.D(0);
                    wVar.f(this.f18536e, 4);
                    this.T += 4;
                } else {
                    int iP2 = p(iVar, wVar, i25);
                    this.S += iP2;
                    this.T += iP2;
                    this.U -= iP2;
                }
            }
        }
        if ("A_VORBIS".equals(bVar.f18560b)) {
            this.f18539h.D(0);
            wVar.f(this.f18539h, 4);
            this.T += 4;
        }
        int i26 = this.T;
        l();
        return i26;
    }

    public final void o(i iVar, byte[] bArr, int i10) throws IOException {
        int length = bArr.length + i10;
        w wVar = this.f18542k;
        byte[] bArr2 = wVar.f10475a;
        if (bArr2.length < length) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, length + i10);
            Objects.requireNonNull(wVar);
            wVar.B(bArrCopyOf, bArrCopyOf.length);
        } else {
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        }
        iVar.readFully(this.f18542k.f10475a, bArr.length, i10);
        this.f18542k.D(0);
        this.f18542k.C(length);
    }

    public final int p(i iVar, s3.w wVar, int i10) throws IOException {
        w wVar2 = this.f18541j;
        int i11 = wVar2.f10477c - wVar2.f10476b;
        if (i11 <= 0) {
            return wVar.d(iVar, i10, false);
        }
        int iMin = Math.min(i10, i11);
        wVar.f(this.f18541j, iMin);
        return iMin;
    }
}
