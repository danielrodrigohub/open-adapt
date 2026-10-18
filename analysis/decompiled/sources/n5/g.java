package n5;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import com.newrelic.agent.android.payload.PayloadController;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import m5.g0;
import n3.s0;
import n3.t1;
import n3.u1;
import p4.m0;
import p4.y;
import u6.p0;
import u6.v;
import y0.c0;

/* JADX INFO: compiled from: MediaCodecVideoRenderer.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends e4.o {

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public static final int[] f11887v1 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};

    /* JADX INFO: renamed from: w1, reason: collision with root package name */
    public static boolean f11888w1;

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    public static boolean f11889x1;
    public final Context M0;
    public final l N0;
    public final s.a O0;
    public final long P0;
    public final int Q0;
    public final boolean R0;
    public a S0;
    public boolean T0;
    public boolean U0;
    public Surface V0;
    public h W0;
    public boolean X0;
    public int Y0;
    public boolean Z0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public boolean f11890a1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public boolean f11891b1;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public long f11892c1;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public long f11893d1;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public long f11894e1;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public int f11895f1;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public int f11896g1;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public int f11897h1;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public long f11898i1;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public long f11899j1;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public long f11900k1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public int f11901l1;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public int f11902m1;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public int f11903n1;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public int f11904o1;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public float f11905p1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public t f11906q1;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public boolean f11907r1;

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    public int f11908s1;

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    public b f11909t1;

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    public k f11910u1;

    /* JADX INFO: compiled from: MediaCodecVideoRenderer.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f11911a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f11912b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f11913c;

        public a(int i10, int i11, int i12) {
            this.f11911a = i10;
            this.f11912b = i11;
            this.f11913c = i12;
        }
    }

    /* JADX INFO: compiled from: MediaCodecVideoRenderer.java */
    public final class b implements e4.l.c, Handler.Callback {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Handler f11914h;

        public b(e4.l lVar) {
            Handler handlerL = g0.l(this);
            this.f11914h = handlerL;
            lVar.m(this, handlerL);
        }

        public final void a(long j10) {
            g gVar = g.this;
            if (this != gVar.f11909t1) {
                return;
            }
            if (j10 == Long.MAX_VALUE) {
                gVar.F0 = true;
                return;
            }
            try {
                gVar.M0(j10);
            } catch (n3.q e10) {
                g.this.G0 = e10;
            }
        }

        public final void b(long j10) {
            if (g0.f10384a >= 30) {
                a(j10);
            } else {
                this.f11914h.sendMessageAtFrontOfQueue(Message.obtain(this.f11914h, 0, (int) (j10 >> 32), (int) j10));
            }
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            a((g0.W(message.arg1) << 32) | g0.W(message.arg2));
            return true;
        }
    }

    public g(Context context, e4.l.b bVar, e4.p pVar, Handler handler, s sVar) {
        super(2, bVar, pVar, 30.0f);
        this.P0 = PayloadController.PAYLOAD_COLLECTOR_TIMEOUT;
        this.Q0 = 50;
        Context applicationContext = context.getApplicationContext();
        this.M0 = applicationContext;
        this.N0 = new l(applicationContext);
        this.O0 = new s.a(handler, sVar);
        this.R0 = "NVIDIA".equals(g0.f10386c);
        this.f11893d1 = -9223372036854775807L;
        this.f11902m1 = -1;
        this.f11903n1 = -1;
        this.f11905p1 = -1.0f;
        this.Y0 = 1;
        this.f11908s1 = 0;
        this.f11906q1 = null;
    }

    public static int E0(e4.n nVar, s0 s0Var) {
        int i10;
        int iIntValue;
        int i11 = s0Var.f11692x;
        int i12 = s0Var.f11693y;
        if (i11 == -1 || i12 == -1) {
            return -1;
        }
        String str = s0Var.f11687s;
        if ("video/dolby-vision".equals(str)) {
            Pair<Integer, Integer> pairD = e4.r.d(s0Var);
            str = (pairD == null || !((iIntValue = ((Integer) pairD.first).intValue()) == 512 || iIntValue == 1 || iIntValue == 2)) ? "video/hevc" : "video/avc";
        }
        Objects.requireNonNull(str);
        int i13 = 4;
        switch (str) {
            case "video/3gpp":
            case "video/av01":
            case "video/mp4v-es":
            case "video/x-vnd.on2.vp8":
                i10 = i12 * i11;
                i13 = 2;
                return (i10 * 3) / (i13 * 2);
            case "video/hevc":
            case "video/x-vnd.on2.vp9":
                i10 = i12 * i11;
                return (i10 * 3) / (i13 * 2);
            case "video/avc":
                String str2 = g0.f10387d;
                if ("BRAVIA 4K 2015".equals(str2) || ("Amazon".equals(g0.f10386c) && ("KFSOWI".equals(str2) || ("AFTS".equals(str2) && nVar.f6420f)))) {
                    return -1;
                }
                i10 = (((i12 + 16) - 1) / 16) * (((i11 + 16) - 1) / 16) * 16 * 16;
                i13 = 2;
                return (i10 * 3) / (i13 * 2);
            default:
                return -1;
        }
    }

    public static List<e4.n> F0(e4.p pVar, s0 s0Var, boolean z10, boolean z11) throws e4.r.b {
        String str = s0Var.f11687s;
        if (str == null) {
            u6.a aVar = v.f16002i;
            return p0.f15967l;
        }
        List<e4.n> listA = pVar.a(str, z10, z11);
        String strB = e4.r.b(s0Var);
        if (strB == null) {
            return v.s(listA);
        }
        List<e4.n> listA2 = pVar.a(strB, z10, z11);
        u6.a aVar2 = v.f16002i;
        v.a aVar3 = new v.a();
        aVar3.d(listA);
        aVar3.d(listA2);
        return aVar3.e();
    }

    public static int G0(e4.n nVar, s0 s0Var) {
        if (s0Var.f11688t == -1) {
            return E0(nVar, s0Var);
        }
        int size = s0Var.f11689u.size();
        int length = 0;
        for (int i10 = 0; i10 < size; i10++) {
            length += s0Var.f11689u.get(i10).length;
        }
        return s0Var.f11688t + length;
    }

    public static boolean H0(long j10) {
        return j10 < -30000;
    }

    @Override // e4.o, n3.f
    public final void B() {
        s.a aVar;
        q3.e eVar;
        this.f11906q1 = null;
        C0();
        this.X0 = false;
        this.f11909t1 = null;
        int i10 = 4;
        try {
            super.B();
            aVar = this.O0;
            eVar = this.H0;
            Objects.requireNonNull(aVar);
            synchronized (eVar) {
            }
        } finally {
            aVar = this.O0;
            eVar = this.H0;
            Objects.requireNonNull(aVar);
            synchronized (eVar) {
                Handler handler = aVar.f11983a;
                if (handler != null) {
                    handler.post(new androidx.lifecycle.c(aVar, eVar, i10));
                }
            }
        }
    }

    @Override // n3.f
    public final void C(boolean z10) throws n3.q {
        this.H0 = new q3.e();
        u1 u1Var = this.f11383j;
        Objects.requireNonNull(u1Var);
        boolean z11 = u1Var.f11733a;
        m5.a.e((z11 && this.f11908s1 == 0) ? false : true);
        if (this.f11907r1 != z11) {
            this.f11907r1 = z11;
            o0();
        }
        s.a aVar = this.O0;
        q3.e eVar = this.H0;
        Handler handler = aVar.f11983a;
        if (handler != null) {
            handler.post(new p3.j(aVar, eVar, 1));
        }
        this.f11890a1 = z10;
        this.f11891b1 = false;
    }

    public final void C0() {
        e4.l lVar;
        this.Z0 = false;
        if (g0.f10384a < 23 || !this.f11907r1 || (lVar = this.Q) == null) {
            return;
        }
        this.f11909t1 = new b(lVar);
    }

    @Override // e4.o, n3.f
    public final void D(long j10, boolean z10) throws n3.q {
        super.D(j10, z10);
        C0();
        this.N0.b();
        this.f11898i1 = -9223372036854775807L;
        this.f11892c1 = -9223372036854775807L;
        this.f11896g1 = 0;
        if (z10) {
            Q0();
        } else {
            this.f11893d1 = -9223372036854775807L;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x013f  */
    /* JADX WARN: Code duplicated, block: B:103:0x0143  */
    /* JADX WARN: Code duplicated, block: B:106:0x014d  */
    /* JADX WARN: Code duplicated, block: B:107:0x0151  */
    /* JADX WARN: Code duplicated, block: B:110:0x015b  */
    /* JADX WARN: Code duplicated, block: B:111:0x015f  */
    /* JADX WARN: Code duplicated, block: B:114:0x0169  */
    /* JADX WARN: Code duplicated, block: B:115:0x016d  */
    /* JADX WARN: Code duplicated, block: B:118:0x0177  */
    /* JADX WARN: Code duplicated, block: B:119:0x017b  */
    /* JADX WARN: Code duplicated, block: B:122:0x0185  */
    /* JADX WARN: Code duplicated, block: B:123:0x0189  */
    /* JADX WARN: Code duplicated, block: B:126:0x0193  */
    /* JADX WARN: Code duplicated, block: B:127:0x0197  */
    /* JADX WARN: Code duplicated, block: B:130:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:131:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:134:0x01af  */
    /* JADX WARN: Code duplicated, block: B:135:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:138:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:139:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:142:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:143:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:146:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:147:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:150:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:151:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:154:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:155:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:158:0x0203  */
    /* JADX WARN: Code duplicated, block: B:159:0x0207  */
    /* JADX WARN: Code duplicated, block: B:162:0x0211  */
    /* JADX WARN: Code duplicated, block: B:163:0x0215  */
    /* JADX WARN: Code duplicated, block: B:166:0x021f  */
    /* JADX WARN: Code duplicated, block: B:167:0x0223  */
    /* JADX WARN: Code duplicated, block: B:170:0x022d  */
    /* JADX WARN: Code duplicated, block: B:171:0x0231  */
    /* JADX WARN: Code duplicated, block: B:174:0x023b  */
    /* JADX WARN: Code duplicated, block: B:175:0x023f  */
    /* JADX WARN: Code duplicated, block: B:178:0x0249  */
    /* JADX WARN: Code duplicated, block: B:179:0x024d  */
    /* JADX WARN: Code duplicated, block: B:182:0x0257  */
    /* JADX WARN: Code duplicated, block: B:183:0x025b  */
    /* JADX WARN: Code duplicated, block: B:186:0x0265  */
    /* JADX WARN: Code duplicated, block: B:187:0x0269  */
    /* JADX WARN: Code duplicated, block: B:190:0x0273  */
    /* JADX WARN: Code duplicated, block: B:191:0x0277  */
    /* JADX WARN: Code duplicated, block: B:194:0x0281  */
    /* JADX WARN: Code duplicated, block: B:195:0x0285  */
    /* JADX WARN: Code duplicated, block: B:198:0x028f  */
    /* JADX WARN: Code duplicated, block: B:199:0x0293  */
    /* JADX WARN: Code duplicated, block: B:202:0x029d  */
    /* JADX WARN: Code duplicated, block: B:203:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:206:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:207:0x02af  */
    /* JADX WARN: Code duplicated, block: B:210:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:211:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:214:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:215:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:218:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:219:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:222:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:223:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:226:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:227:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:230:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:231:0x0303  */
    /* JADX WARN: Code duplicated, block: B:234:0x030d  */
    /* JADX WARN: Code duplicated, block: B:235:0x0311  */
    /* JADX WARN: Code duplicated, block: B:238:0x031b  */
    /* JADX WARN: Code duplicated, block: B:239:0x031f  */
    /* JADX WARN: Code duplicated, block: B:242:0x0329  */
    /* JADX WARN: Code duplicated, block: B:243:0x032d  */
    /* JADX WARN: Code duplicated, block: B:246:0x0337  */
    /* JADX WARN: Code duplicated, block: B:247:0x033b  */
    /* JADX WARN: Code duplicated, block: B:250:0x0345  */
    /* JADX WARN: Code duplicated, block: B:251:0x0349  */
    /* JADX WARN: Code duplicated, block: B:254:0x0353  */
    /* JADX WARN: Code duplicated, block: B:255:0x0357  */
    /* JADX WARN: Code duplicated, block: B:258:0x0361  */
    /* JADX WARN: Code duplicated, block: B:259:0x0365  */
    /* JADX WARN: Code duplicated, block: B:262:0x036f  */
    /* JADX WARN: Code duplicated, block: B:263:0x0373  */
    /* JADX WARN: Code duplicated, block: B:266:0x037d  */
    /* JADX WARN: Code duplicated, block: B:267:0x0381  */
    /* JADX WARN: Code duplicated, block: B:270:0x038b  */
    /* JADX WARN: Code duplicated, block: B:271:0x038f  */
    /* JADX WARN: Code duplicated, block: B:274:0x0399  */
    /* JADX WARN: Code duplicated, block: B:275:0x039d  */
    /* JADX WARN: Code duplicated, block: B:278:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:279:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:282:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:283:0x03b9  */
    /* JADX WARN: Code duplicated, block: B:286:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:287:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:290:0x03d1  */
    /* JADX WARN: Code duplicated, block: B:291:0x03d5  */
    /* JADX WARN: Code duplicated, block: B:294:0x03df  */
    /* JADX WARN: Code duplicated, block: B:295:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:298:0x03ed  */
    /* JADX WARN: Code duplicated, block: B:299:0x03f1  */
    /* JADX WARN: Code duplicated, block: B:302:0x03fb  */
    /* JADX WARN: Code duplicated, block: B:303:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:306:0x0409  */
    /* JADX WARN: Code duplicated, block: B:307:0x040d  */
    /* JADX WARN: Code duplicated, block: B:310:0x0417  */
    /* JADX WARN: Code duplicated, block: B:311:0x041b  */
    /* JADX WARN: Code duplicated, block: B:314:0x0425  */
    /* JADX WARN: Code duplicated, block: B:315:0x0429  */
    /* JADX WARN: Code duplicated, block: B:318:0x0433  */
    /* JADX WARN: Code duplicated, block: B:319:0x0437  */
    /* JADX WARN: Code duplicated, block: B:322:0x0441  */
    /* JADX WARN: Code duplicated, block: B:323:0x0445  */
    /* JADX WARN: Code duplicated, block: B:326:0x044f  */
    /* JADX WARN: Code duplicated, block: B:327:0x0453  */
    /* JADX WARN: Code duplicated, block: B:330:0x045d  */
    /* JADX WARN: Code duplicated, block: B:331:0x0461  */
    /* JADX WARN: Code duplicated, block: B:334:0x046b  */
    /* JADX WARN: Code duplicated, block: B:335:0x046f  */
    /* JADX WARN: Code duplicated, block: B:338:0x0479  */
    /* JADX WARN: Code duplicated, block: B:339:0x047d  */
    /* JADX WARN: Code duplicated, block: B:342:0x0487  */
    /* JADX WARN: Code duplicated, block: B:343:0x048b  */
    /* JADX WARN: Code duplicated, block: B:346:0x0495  */
    /* JADX WARN: Code duplicated, block: B:347:0x0499  */
    /* JADX WARN: Code duplicated, block: B:350:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:351:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:354:0x04b1  */
    /* JADX WARN: Code duplicated, block: B:355:0x04b5  */
    /* JADX WARN: Code duplicated, block: B:358:0x04bf  */
    /* JADX WARN: Code duplicated, block: B:359:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:362:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:363:0x04d1  */
    /* JADX WARN: Code duplicated, block: B:366:0x04db  */
    /* JADX WARN: Code duplicated, block: B:367:0x04df  */
    /* JADX WARN: Code duplicated, block: B:370:0x04e9  */
    /* JADX WARN: Code duplicated, block: B:371:0x04ed  */
    /* JADX WARN: Code duplicated, block: B:374:0x04f7  */
    /* JADX WARN: Code duplicated, block: B:375:0x04fb  */
    /* JADX WARN: Code duplicated, block: B:378:0x0505  */
    /* JADX WARN: Code duplicated, block: B:379:0x0509  */
    /* JADX WARN: Code duplicated, block: B:382:0x0513  */
    /* JADX WARN: Code duplicated, block: B:383:0x0517  */
    /* JADX WARN: Code duplicated, block: B:386:0x0521  */
    /* JADX WARN: Code duplicated, block: B:387:0x0525  */
    /* JADX WARN: Code duplicated, block: B:390:0x052f  */
    /* JADX WARN: Code duplicated, block: B:391:0x0533  */
    /* JADX WARN: Code duplicated, block: B:394:0x053d  */
    /* JADX WARN: Code duplicated, block: B:395:0x0541  */
    /* JADX WARN: Code duplicated, block: B:398:0x054b  */
    /* JADX WARN: Code duplicated, block: B:399:0x054f  */
    /* JADX WARN: Code duplicated, block: B:402:0x0559  */
    /* JADX WARN: Code duplicated, block: B:403:0x055d  */
    /* JADX WARN: Code duplicated, block: B:406:0x0567  */
    /* JADX WARN: Code duplicated, block: B:407:0x056b  */
    /* JADX WARN: Code duplicated, block: B:410:0x0575  */
    /* JADX WARN: Code duplicated, block: B:411:0x0579  */
    /* JADX WARN: Code duplicated, block: B:414:0x0583  */
    /* JADX WARN: Code duplicated, block: B:415:0x0587  */
    /* JADX WARN: Code duplicated, block: B:418:0x0591  */
    /* JADX WARN: Code duplicated, block: B:419:0x0595  */
    /* JADX WARN: Code duplicated, block: B:422:0x059f  */
    /* JADX WARN: Code duplicated, block: B:423:0x05a3  */
    /* JADX WARN: Code duplicated, block: B:426:0x05ad  */
    /* JADX WARN: Code duplicated, block: B:427:0x05b1  */
    /* JADX WARN: Code duplicated, block: B:430:0x05bb  */
    /* JADX WARN: Code duplicated, block: B:431:0x05bf  */
    /* JADX WARN: Code duplicated, block: B:434:0x05c9  */
    /* JADX WARN: Code duplicated, block: B:435:0x05cd  */
    /* JADX WARN: Code duplicated, block: B:438:0x05d7  */
    /* JADX WARN: Code duplicated, block: B:439:0x05db  */
    /* JADX WARN: Code duplicated, block: B:442:0x05e5  */
    /* JADX WARN: Code duplicated, block: B:443:0x05e9  */
    /* JADX WARN: Code duplicated, block: B:446:0x05f3  */
    /* JADX WARN: Code duplicated, block: B:447:0x05f7  */
    /* JADX WARN: Code duplicated, block: B:450:0x0601  */
    /* JADX WARN: Code duplicated, block: B:451:0x0605  */
    /* JADX WARN: Code duplicated, block: B:454:0x060f  */
    /* JADX WARN: Code duplicated, block: B:455:0x0613  */
    /* JADX WARN: Code duplicated, block: B:458:0x061d  */
    /* JADX WARN: Code duplicated, block: B:459:0x0621  */
    /* JADX WARN: Code duplicated, block: B:462:0x062b  */
    /* JADX WARN: Code duplicated, block: B:463:0x062f  */
    /* JADX WARN: Code duplicated, block: B:466:0x0639  */
    /* JADX WARN: Code duplicated, block: B:467:0x063d  */
    /* JADX WARN: Code duplicated, block: B:470:0x0647  */
    /* JADX WARN: Code duplicated, block: B:471:0x064b  */
    /* JADX WARN: Code duplicated, block: B:474:0x0655  */
    /* JADX WARN: Code duplicated, block: B:475:0x0659  */
    /* JADX WARN: Code duplicated, block: B:478:0x0663  */
    /* JADX WARN: Code duplicated, block: B:479:0x0667  */
    /* JADX WARN: Code duplicated, block: B:482:0x0671  */
    /* JADX WARN: Code duplicated, block: B:483:0x0675  */
    /* JADX WARN: Code duplicated, block: B:486:0x067f  */
    /* JADX WARN: Code duplicated, block: B:487:0x0683  */
    /* JADX WARN: Code duplicated, block: B:48:0x008b  */
    /* JADX WARN: Code duplicated, block: B:490:0x068d  */
    /* JADX WARN: Code duplicated, block: B:491:0x0691  */
    /* JADX WARN: Code duplicated, block: B:494:0x069b  */
    /* JADX WARN: Code duplicated, block: B:495:0x069f  */
    /* JADX WARN: Code duplicated, block: B:498:0x06a9  */
    /* JADX WARN: Code duplicated, block: B:499:0x06ad  */
    /* JADX WARN: Code duplicated, block: B:502:0x06b7  */
    /* JADX WARN: Code duplicated, block: B:503:0x06bb  */
    /* JADX WARN: Code duplicated, block: B:506:0x06c5  */
    /* JADX WARN: Code duplicated, block: B:507:0x06c8  */
    /* JADX WARN: Code duplicated, block: B:510:0x06d2  */
    /* JADX WARN: Code duplicated, block: B:511:0x06d5  */
    /* JADX WARN: Code duplicated, block: B:514:0x06df  */
    /* JADX WARN: Code duplicated, block: B:515:0x06e2  */
    /* JADX WARN: Code duplicated, block: B:518:0x06ec  */
    /* JADX WARN: Code duplicated, block: B:519:0x06f0  */
    /* JADX WARN: Code duplicated, block: B:522:0x06fa  */
    /* JADX WARN: Code duplicated, block: B:523:0x06fe  */
    /* JADX WARN: Code duplicated, block: B:526:0x0708  */
    /* JADX WARN: Code duplicated, block: B:527:0x070c  */
    /* JADX WARN: Code duplicated, block: B:52:0x0099 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:530:0x0716  */
    /* JADX WARN: Code duplicated, block: B:531:0x071a  */
    /* JADX WARN: Code duplicated, block: B:534:0x0724  */
    /* JADX WARN: Code duplicated, block: B:535:0x0728  */
    /* JADX WARN: Code duplicated, block: B:538:0x0732  */
    /* JADX WARN: Code duplicated, block: B:539:0x0736  */
    /* JADX WARN: Code duplicated, block: B:53:0x009c  */
    /* JADX WARN: Code duplicated, block: B:542:0x0740  */
    /* JADX WARN: Code duplicated, block: B:543:0x0744  */
    /* JADX WARN: Code duplicated, block: B:546:0x074e  */
    /* JADX WARN: Code duplicated, block: B:547:0x0752  */
    /* JADX WARN: Code duplicated, block: B:550:0x075c  */
    /* JADX WARN: Code duplicated, block: B:551:0x0760  */
    /* JADX WARN: Code duplicated, block: B:554:0x076a  */
    /* JADX WARN: Code duplicated, block: B:555:0x076e  */
    /* JADX WARN: Code duplicated, block: B:558:0x0778  */
    /* JADX WARN: Code duplicated, block: B:559:0x077c  */
    /* JADX WARN: Code duplicated, block: B:55:0x00a0 A[Catch: all -> 0x0878, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x000d, B:9:0x0011, B:11:0x001f, B:635:0x0870, B:50:0x008f, B:55:0x00a0, B:619:0x083e, B:636:0x0874), top: B:642:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:562:0x0786  */
    /* JADX WARN: Code duplicated, block: B:563:0x078a  */
    /* JADX WARN: Code duplicated, block: B:566:0x0794  */
    /* JADX WARN: Code duplicated, block: B:567:0x0798  */
    /* JADX WARN: Code duplicated, block: B:570:0x07a2  */
    /* JADX WARN: Code duplicated, block: B:571:0x07a6  */
    /* JADX WARN: Code duplicated, block: B:574:0x07b0  */
    /* JADX WARN: Code duplicated, block: B:575:0x07b4  */
    /* JADX WARN: Code duplicated, block: B:578:0x07be  */
    /* JADX WARN: Code duplicated, block: B:579:0x07c2  */
    /* JADX WARN: Code duplicated, block: B:582:0x07cc  */
    /* JADX WARN: Code duplicated, block: B:583:0x07d0  */
    /* JADX WARN: Code duplicated, block: B:586:0x07da  */
    /* JADX WARN: Code duplicated, block: B:587:0x07de  */
    /* JADX WARN: Code duplicated, block: B:58:0x00af  */
    /* JADX WARN: Code duplicated, block: B:590:0x07e8  */
    /* JADX WARN: Code duplicated, block: B:593:0x07f2  */
    /* JADX WARN: Code duplicated, block: B:594:0x07f4  */
    /* JADX WARN: Code duplicated, block: B:597:0x07fe  */
    /* JADX WARN: Code duplicated, block: B:598:0x0800  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:601:0x080a  */
    /* JADX WARN: Code duplicated, block: B:602:0x080c  */
    /* JADX WARN: Code duplicated, block: B:605:0x0816  */
    /* JADX WARN: Code duplicated, block: B:606:0x0818  */
    /* JADX WARN: Code duplicated, block: B:609:0x0822  */
    /* JADX WARN: Code duplicated, block: B:610:0x0824  */
    /* JADX WARN: Code duplicated, block: B:613:0x082e  */
    /* JADX WARN: Code duplicated, block: B:614:0x0830  */
    /* JADX WARN: Code duplicated, block: B:617:0x083a  */
    /* JADX WARN: Code duplicated, block: B:619:0x083e A[Catch: all -> 0x0878, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:7:0x000d, B:9:0x0011, B:11:0x001f, B:635:0x0870, B:50:0x008f, B:55:0x00a0, B:619:0x083e, B:636:0x0874), top: B:642:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:622:0x084d  */
    /* JADX WARN: Code duplicated, block: B:623:0x084f  */
    /* JADX WARN: Code duplicated, block: B:626:0x0858  */
    /* JADX WARN: Code duplicated, block: B:629:0x0861  */
    /* JADX WARN: Code duplicated, block: B:62:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:630:0x0863  */
    /* JADX WARN: Code duplicated, block: B:633:0x086c  */
    /* JADX WARN: Code duplicated, block: B:63:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:652:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:653:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:654:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:655:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:656:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:657:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:658:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:659:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:660:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:661:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:662:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:663:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:664:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:665:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:666:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:667:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:668:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:669:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:670:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:671:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:672:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:673:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:674:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:675:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:676:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:677:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:678:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:679:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:680:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:681:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:682:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:683:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:684:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:685:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:686:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:687:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:688:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:689:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:690:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:691:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:692:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:693:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:694:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:695:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:696:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:697:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:698:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:699:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:700:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:701:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:702:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:703:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:704:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:705:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:706:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:707:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:708:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:709:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:710:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:711:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:712:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:713:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:714:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:715:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:716:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:717:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:718:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:719:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:720:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:721:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:722:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:723:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:724:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:725:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:726:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:727:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:728:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:729:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:730:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:731:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:732:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:733:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:734:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:735:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:736:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:737:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:738:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:739:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:740:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:741:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:742:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:743:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:744:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:745:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:746:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:747:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:748:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:749:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:750:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:751:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:752:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:753:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:754:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:755:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:756:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:757:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:758:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:759:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:760:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:761:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:762:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:763:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:764:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:765:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:766:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:767:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:768:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:769:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:770:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:771:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:772:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:773:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:774:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:775:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:776:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:777:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:778:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:779:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:780:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:781:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:782:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:783:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:784:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:785:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:786:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:787:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:788:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:789:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:790:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:791:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:792:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:793:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:794:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:82:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:83:0x0100  */
    /* JADX WARN: Code duplicated, block: B:86:0x0109  */
    /* JADX WARN: Code duplicated, block: B:87:0x010d  */
    /* JADX WARN: Code duplicated, block: B:90:0x0116  */
    /* JADX WARN: Code duplicated, block: B:91:0x011a  */
    /* JADX WARN: Code duplicated, block: B:94:0x0123  */
    /* JADX WARN: Code duplicated, block: B:95:0x0127  */
    /* JADX WARN: Code duplicated, block: B:98:0x0131  */
    /* JADX WARN: Code duplicated, block: B:99:0x0135  */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1092)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    public final boolean D0(java.lang.String r15) {
        /*
            Method dump skipped, instruction units count: 3096
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: n5.g.D0(java.lang.String):boolean");
    }

    @Override // n3.f
    @TargetApi(17)
    public final void E() {
        try {
            try {
                M();
                o0();
                u0(null);
                if (this.W0 != null) {
                    N0();
                }
            } catch (Throwable th) {
                u0(null);
                throw th;
            }
        } catch (Throwable th2) {
            if (this.W0 != null) {
                N0();
            }
            throw th2;
        }
    }

    @Override // n3.f
    public final void F() {
        this.f11895f1 = 0;
        this.f11894e1 = SystemClock.elapsedRealtime();
        this.f11899j1 = SystemClock.elapsedRealtime() * 1000;
        this.f11900k1 = 0L;
        this.f11901l1 = 0;
        l lVar = this.N0;
        lVar.f11942d = true;
        lVar.b();
        if (lVar.f11940b != null) {
            l.e eVar = lVar.f11941c;
            Objects.requireNonNull(eVar);
            eVar.f11961i.sendEmptyMessage(1);
            lVar.f11940b.b(new c0(lVar, 5));
        }
        lVar.d(false);
    }

    @Override // n3.f
    public final void G() {
        this.f11893d1 = -9223372036854775807L;
        I0();
        final int i10 = this.f11901l1;
        if (i10 != 0) {
            final s.a aVar = this.O0;
            final long j10 = this.f11900k1;
            Handler handler = aVar.f11983a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: n5.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a aVar2 = aVar;
                        long j11 = j10;
                        int i11 = i10;
                        s sVar = aVar2.f11984b;
                        int i12 = g0.f10384a;
                        sVar.D(j11, i11);
                    }
                });
            }
            this.f11900k1 = 0L;
            this.f11901l1 = 0;
        }
        l lVar = this.N0;
        lVar.f11942d = false;
        l.b bVar = lVar.f11940b;
        if (bVar != null) {
            bVar.a();
            l.e eVar = lVar.f11941c;
            Objects.requireNonNull(eVar);
            eVar.f11961i.sendEmptyMessage(2);
        }
        lVar.a();
    }

    public final void I0() {
        if (this.f11895f1 > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            final long j10 = jElapsedRealtime - this.f11894e1;
            final s.a aVar = this.O0;
            final int i10 = this.f11895f1;
            Handler handler = aVar.f11983a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: n5.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a aVar2 = aVar;
                        int i11 = i10;
                        long j11 = j10;
                        s sVar = aVar2.f11984b;
                        int i12 = g0.f10384a;
                        sVar.B(i11, j11);
                    }
                });
            }
            this.f11895f1 = 0;
            this.f11894e1 = jElapsedRealtime;
        }
    }

    public final void J0() {
        this.f11891b1 = true;
        if (this.Z0) {
            return;
        }
        this.Z0 = true;
        s.a aVar = this.O0;
        Surface surface = this.V0;
        if (aVar.f11983a != null) {
            aVar.f11983a.post(new q(aVar, surface, SystemClock.elapsedRealtime()));
        }
        this.X0 = true;
    }

    @Override // e4.o
    public final q3.i K(e4.n nVar, s0 s0Var, s0 s0Var2) {
        q3.i iVarC = nVar.c(s0Var, s0Var2);
        int i10 = iVarC.f13592e;
        int i11 = s0Var2.f11692x;
        a aVar = this.S0;
        if (i11 > aVar.f11911a || s0Var2.f11693y > aVar.f11912b) {
            i10 |= 256;
        }
        if (G0(nVar, s0Var2) > this.S0.f11913c) {
            i10 |= 64;
        }
        int i12 = i10;
        return new q3.i(nVar.f6415a, s0Var, s0Var2, i12 != 0 ? 0 : iVarC.f13591d, i12);
    }

    public final void K0() {
        int i10 = this.f11902m1;
        if (i10 == -1 && this.f11903n1 == -1) {
            return;
        }
        t tVar = this.f11906q1;
        if (tVar != null && tVar.f11986h == i10 && tVar.f11987i == this.f11903n1 && tVar.f11988j == this.f11904o1 && tVar.f11989k == this.f11905p1) {
            return;
        }
        t tVar2 = new t(this.f11902m1, this.f11903n1, this.f11904o1, this.f11905p1);
        this.f11906q1 = tVar2;
        s.a aVar = this.O0;
        Handler handler = aVar.f11983a;
        if (handler != null) {
            handler.post(new p3.g(aVar, tVar2, 1));
        }
    }

    @Override // e4.o
    public final e4.m L(Throwable th, e4.n nVar) {
        return new f(th, nVar, this.V0);
    }

    public final void L0(long j10, long j11, s0 s0Var) {
        k kVar = this.f11910u1;
        if (kVar != null) {
            kVar.d(j10, j11, s0Var, this.S);
        }
    }

    public final void M0(long j10) throws n3.q {
        B0(j10);
        K0();
        this.H0.f13572e++;
        J0();
        i0(j10);
    }

    public final void N0() {
        Surface surface = this.V0;
        h hVar = this.W0;
        if (surface == hVar) {
            this.V0 = null;
        }
        hVar.release();
        this.W0 = null;
    }

    public final void O0(e4.l lVar, int i10) {
        K0();
        i0.b.d("releaseOutputBuffer");
        lVar.d(i10, true);
        i0.b.g();
        this.f11899j1 = SystemClock.elapsedRealtime() * 1000;
        this.H0.f13572e++;
        this.f11896g1 = 0;
        J0();
    }

    public final void P0(e4.l lVar, int i10, long j10) {
        K0();
        i0.b.d("releaseOutputBuffer");
        lVar.k(i10, j10);
        i0.b.g();
        this.f11899j1 = SystemClock.elapsedRealtime() * 1000;
        this.H0.f13572e++;
        this.f11896g1 = 0;
        J0();
    }

    public final void Q0() {
        this.f11893d1 = this.P0 > 0 ? SystemClock.elapsedRealtime() + this.P0 : -9223372036854775807L;
    }

    public final boolean R0(e4.n nVar) {
        return g0.f10384a >= 23 && !this.f11907r1 && !D0(nVar.f6415a) && (!nVar.f6420f || h.b(this.M0));
    }

    public final void S0(e4.l lVar, int i10) {
        i0.b.d("skipVideoBuffer");
        lVar.d(i10, false);
        i0.b.g();
        this.H0.f13573f++;
    }

    public final void T0(int i10, int i11) {
        q3.e eVar = this.H0;
        eVar.f13575h += i10;
        int i12 = i10 + i11;
        eVar.f13574g += i12;
        this.f11895f1 += i12;
        int i13 = this.f11896g1 + i12;
        this.f11896g1 = i13;
        eVar.f13576i = Math.max(i13, eVar.f13576i);
        int i14 = this.Q0;
        if (i14 <= 0 || this.f11895f1 < i14) {
            return;
        }
        I0();
    }

    @Override // e4.o
    public final boolean U() {
        return this.f11907r1 && g0.f10384a < 23;
    }

    public final void U0(long j10) {
        q3.e eVar = this.H0;
        eVar.f13578k += j10;
        eVar.f13579l++;
        this.f11900k1 += j10;
        this.f11901l1++;
    }

    @Override // e4.o
    public final float V(float f10, s0[] s0VarArr) {
        float fMax = -1.0f;
        for (s0 s0Var : s0VarArr) {
            float f11 = s0Var.f11694z;
            if (f11 != -1.0f) {
                fMax = Math.max(fMax, f11);
            }
        }
        if (fMax == -1.0f) {
            return -1.0f;
        }
        return fMax * f10;
    }

    @Override // e4.o
    public final List<e4.n> W(e4.p pVar, s0 s0Var, boolean z10) throws e4.r.b {
        return e4.r.g(F0(pVar, s0Var, z10, this.f11907r1), s0Var);
    }

    @Override // e4.o
    @TargetApi(17)
    public final e4.l.a Y(e4.n nVar, s0 s0Var, MediaCrypto mediaCrypto, float f10) {
        a aVar;
        Point point;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        boolean z10;
        Pair<Integer, Integer> pairD;
        int iE0;
        g gVar = this;
        h hVar = gVar.W0;
        if (hVar != null && hVar.f11918h != nVar.f6420f) {
            N0();
        }
        String str = nVar.f6417c;
        s0[] s0VarArr = gVar.f11388o;
        Objects.requireNonNull(s0VarArr);
        int iMax = s0Var.f11692x;
        int iMax2 = s0Var.f11693y;
        int iG0 = G0(nVar, s0Var);
        if (s0VarArr.length == 1) {
            if (iG0 != -1 && (iE0 = E0(nVar, s0Var)) != -1) {
                iG0 = Math.min((int) (iG0 * 1.5f), iE0);
            }
            aVar = new a(iMax, iMax2, iG0);
        } else {
            int length = s0VarArr.length;
            boolean z11 = false;
            for (int i10 = 0; i10 < length; i10++) {
                s0 s0Var2 = s0VarArr[i10];
                if (s0Var.E != null && s0Var2.E == null) {
                    s0.a aVar2 = new s0.a(s0Var2);
                    aVar2.f11717w = s0Var.E;
                    s0Var2 = new s0(aVar2);
                }
                if (nVar.c(s0Var, s0Var2).f13591d != 0) {
                    int i11 = s0Var2.f11692x;
                    z11 |= i11 == -1 || s0Var2.f11693y == -1;
                    iMax = Math.max(iMax, i11);
                    iMax2 = Math.max(iMax2, s0Var2.f11693y);
                    iG0 = Math.max(iG0, G0(nVar, s0Var2));
                }
            }
            if (z11) {
                m5.p.g("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + iMax + "x" + iMax2);
                int i12 = s0Var.f11693y;
                int i13 = s0Var.f11692x;
                boolean z12 = i12 > i13;
                int i14 = z12 ? i12 : i13;
                if (z12) {
                    i12 = i13;
                }
                float f11 = i12 / i14;
                int[] iArr = f11887v1;
                int i15 = 0;
                while (true) {
                    Point pointA = null;
                    if (i15 < 9) {
                        int i16 = iArr[i15];
                        int[] iArr2 = iArr;
                        int i17 = (int) (i16 * f11);
                        if (i16 > i14 && i17 > i12) {
                            int i18 = i12;
                            float f12 = f11;
                            if (g0.f10384a < 21) {
                                try {
                                    int i19 = (((i16 + 16) - 1) / 16) * 16;
                                    int i20 = (((i17 + 16) - 1) / 16) * 16;
                                    if (i19 * i20 <= e4.r.k()) {
                                        int i21 = z12 ? i20 : i19;
                                        if (!z12) {
                                            i19 = i20;
                                        }
                                        point = new Point(i21, i19);
                                        break;
                                    }
                                    i15++;
                                    iArr = iArr2;
                                    i12 = i18;
                                    f11 = f12;
                                } catch (e4.r.b unused) {
                                    point = pointA;
                                    break;
                                }
                            } else {
                                int i22 = z12 ? i17 : i16;
                                if (!z12) {
                                    i16 = i17;
                                }
                                MediaCodecInfo.CodecCapabilities codecCapabilities = nVar.f6418d;
                                if (codecCapabilities != null && (videoCapabilities = codecCapabilities.getVideoCapabilities()) != null) {
                                    pointA = e4.n.a(videoCapabilities, i22, i16);
                                }
                                Point point2 = pointA;
                                pointA = point2;
                                if (!nVar.g(point2.x, point2.y, s0Var.f11694z)) {
                                    i15++;
                                    iArr = iArr2;
                                    i12 = i18;
                                    f11 = f12;
                                }
                            }
                        }
                    }
                    point = pointA;
                    break;
                }
                if (point != null) {
                    iMax = Math.max(iMax, point.x);
                    iMax2 = Math.max(iMax2, point.y);
                    s0.a aVar3 = new s0.a(s0Var);
                    aVar3.f11710p = iMax;
                    aVar3.f11711q = iMax2;
                    iG0 = Math.max(iG0, E0(nVar, new s0(aVar3)));
                    m5.p.g("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + iMax + "x" + iMax2);
                }
            }
            aVar = new a(iMax, iMax2, iG0);
            gVar = this;
        }
        gVar.S0 = aVar;
        boolean z13 = gVar.R0;
        int i23 = gVar.f11907r1 ? gVar.f11908s1 : 0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", s0Var.f11692x);
        mediaFormat.setInteger("height", s0Var.f11693y);
        f1.b.m(mediaFormat, s0Var.f11689u);
        float f13 = s0Var.f11694z;
        if (f13 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f13);
        }
        f1.b.k(mediaFormat, "rotation-degrees", s0Var.A);
        n5.b bVar = s0Var.E;
        if (bVar != null) {
            f1.b.k(mediaFormat, "color-transfer", bVar.f11866j);
            f1.b.k(mediaFormat, "color-standard", bVar.f11864h);
            f1.b.k(mediaFormat, "color-range", bVar.f11865i);
            byte[] bArr = bVar.f11867k;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(s0Var.f11687s) && (pairD = e4.r.d(s0Var)) != null) {
            f1.b.k(mediaFormat, "profile", ((Integer) pairD.first).intValue());
        }
        mediaFormat.setInteger("max-width", aVar.f11911a);
        mediaFormat.setInteger("max-height", aVar.f11912b);
        f1.b.k(mediaFormat, "max-input-size", aVar.f11913c);
        if (g0.f10384a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f10 != -1.0f) {
                mediaFormat.setFloat("operating-rate", f10);
            }
        }
        if (z13) {
            z10 = true;
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        } else {
            z10 = true;
        }
        if (i23 != 0) {
            mediaFormat.setFeatureEnabled("tunneled-playback", z10);
            mediaFormat.setInteger("audio-session-id", i23);
        }
        if (gVar.V0 == null) {
            if (!R0(nVar)) {
                throw new IllegalStateException();
            }
            if (gVar.W0 == null) {
                gVar.W0 = h.c(gVar.M0, nVar.f6420f);
            }
            gVar.V0 = gVar.W0;
        }
        return new e4.l.a(nVar, mediaFormat, s0Var, gVar.V0, mediaCrypto);
    }

    @Override // e4.o
    @TargetApi(29)
    public final void Z(q3.g gVar) throws n3.q {
        if (this.U0) {
            ByteBuffer byteBuffer = gVar.f13584m;
            Objects.requireNonNull(byteBuffer);
            if (byteBuffer.remaining() >= 7) {
                byte b10 = byteBuffer.get();
                short s10 = byteBuffer.getShort();
                short s11 = byteBuffer.getShort();
                byte b11 = byteBuffer.get();
                byte b12 = byteBuffer.get();
                byteBuffer.position(0);
                if (b10 == -75 && s10 == 60 && s11 == 1 && b11 == 4 && b12 == 0) {
                    byte[] bArr = new byte[byteBuffer.remaining()];
                    byteBuffer.get(bArr);
                    byteBuffer.position(0);
                    e4.l lVar = this.Q;
                    Bundle bundle = new Bundle();
                    bundle.putByteArray("hdr10-plus-info", bArr);
                    lVar.i(bundle);
                }
            }
        }
    }

    @Override // e4.o
    public final void d0(Exception exc) {
        m5.p.d("MediaCodecVideoRenderer", "Video codec error", exc);
        s.a aVar = this.O0;
        Handler handler = aVar.f11983a;
        if (handler != null) {
            handler.post(new m(aVar, exc, 0));
        }
    }

    @Override // e4.o
    public final void e0(final String str, final long j10, final long j11) {
        final s.a aVar = this.O0;
        Handler handler = aVar.f11983a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: n5.r
                @Override // java.lang.Runnable
                public final void run() {
                    s.a aVar2 = aVar;
                    String str2 = str;
                    long j12 = j10;
                    long j13 = j11;
                    s sVar = aVar2.f11984b;
                    int i10 = g0.f10384a;
                    sVar.g(str2, j12, j13);
                }
            });
        }
        this.T0 = D0(str);
        e4.n nVar = this.X;
        Objects.requireNonNull(nVar);
        boolean z10 = false;
        if (g0.f10384a >= 29 && "video/x-vnd.on2.vp9".equals(nVar.f6416b)) {
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : nVar.d()) {
                if (codecProfileLevel.profile == 16384) {
                    z10 = true;
                    break;
                }
            }
        }
        this.U0 = z10;
        if (g0.f10384a < 23 || !this.f11907r1) {
            return;
        }
        e4.l lVar = this.Q;
        Objects.requireNonNull(lVar);
        this.f11909t1 = new b(lVar);
    }

    @Override // e4.o
    public final void f0(String str) {
        s.a aVar = this.O0;
        Handler handler = aVar.f11983a;
        if (handler != null) {
            handler.post(new n(aVar, str, 0));
        }
    }

    @Override // e4.o
    public final q3.i g0(y0.r rVar) throws n3.q {
        q3.i iVarG0 = super.g0(rVar);
        s.a aVar = this.O0;
        s0 s0Var = (s0) rVar.f18272c;
        Handler handler = aVar.f11983a;
        if (handler != null) {
            handler.post(new y(aVar, s0Var, iVarG0, 2));
        }
        return iVarG0;
    }

    @Override // n3.s1, n3.t1
    public final String getName() {
        return "MediaCodecVideoRenderer";
    }

    @Override // e4.o
    public final void h0(s0 s0Var, MediaFormat mediaFormat) {
        e4.l lVar = this.Q;
        if (lVar != null) {
            lVar.e(this.Y0);
        }
        if (this.f11907r1) {
            this.f11902m1 = s0Var.f11692x;
            this.f11903n1 = s0Var.f11693y;
        } else {
            Objects.requireNonNull(mediaFormat);
            boolean z10 = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
            this.f11902m1 = z10 ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
            this.f11903n1 = z10 ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        }
        float f10 = s0Var.B;
        this.f11905p1 = f10;
        if (g0.f10384a >= 21) {
            int i10 = s0Var.A;
            if (i10 == 90 || i10 == 270) {
                int i11 = this.f11902m1;
                this.f11902m1 = this.f11903n1;
                this.f11903n1 = i11;
                this.f11905p1 = 1.0f / f10;
            }
        } else {
            this.f11904o1 = s0Var.A;
        }
        l lVar2 = this.N0;
        lVar2.f11944f = s0Var.f11694z;
        d dVar = lVar2.f11939a;
        dVar.f11870a.c();
        dVar.f11871b.c();
        dVar.f11872c = false;
        dVar.f11873d = -9223372036854775807L;
        dVar.f11874e = 0;
        lVar2.c();
    }

    @Override // e4.o
    public final void i0(long j10) {
        super.i0(j10);
        if (this.f11907r1) {
            return;
        }
        this.f11897h1--;
    }

    @Override // e4.o, n3.s1
    public final boolean isReady() {
        h hVar;
        if (super.isReady() && (this.Z0 || (((hVar = this.W0) != null && this.V0 == hVar) || this.Q == null || this.f11907r1))) {
            this.f11893d1 = -9223372036854775807L;
            return true;
        }
        if (this.f11893d1 == -9223372036854775807L) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.f11893d1) {
            return true;
        }
        this.f11893d1 = -9223372036854775807L;
        return false;
    }

    @Override // e4.o
    public final void j0() {
        C0();
    }

    @Override // e4.o
    public final void k0(q3.g gVar) throws n3.q {
        boolean z10 = this.f11907r1;
        if (!z10) {
            this.f11897h1++;
        }
        if (g0.f10384a >= 23 || !z10) {
            return;
        }
        M0(gVar.f13583l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [android.view.Surface] */
    /* JADX WARN: Type inference failed for: r2v5, types: [e4.l] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [android.view.Surface] */
    /* JADX WARN: Type inference failed for: r7v9, types: [n5.h] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // n3.f, n3.p1.b
    public final void l(int i10, Object obj) throws n3.q {
        ?? C;
        s.a aVar;
        Handler handler;
        s.a aVar2;
        Handler handler2;
        Surface surface;
        if (i10 != 1) {
            if (i10 == 7) {
                this.f11910u1 = (k) obj;
                return;
            }
            if (i10 == 10) {
                int iIntValue = ((Integer) obj).intValue();
                if (this.f11908s1 != iIntValue) {
                    this.f11908s1 = iIntValue;
                    if (this.f11907r1) {
                        o0();
                        return;
                    }
                    return;
                }
                return;
            }
            if (i10 == 4) {
                int iIntValue2 = ((Integer) obj).intValue();
                this.Y0 = iIntValue2;
                e4.l lVar = this.Q;
                if (lVar != null) {
                    lVar.e(iIntValue2);
                    return;
                }
                return;
            }
            if (i10 != 5) {
                return;
            }
            l lVar2 = this.N0;
            int iIntValue3 = ((Integer) obj).intValue();
            if (lVar2.f11948j == iIntValue3) {
                return;
            }
            lVar2.f11948j = iIntValue3;
            lVar2.d(true);
            return;
        }
        if (obj instanceof Surface) {
            surface = (Surface) obj;
        } else {
            C = 0;
        }
        if (C == 0) {
            h hVar = this.W0;
            if (hVar != null) {
                C = surface;
                C = hVar;
            } else {
                e4.n nVar = this.X;
                if (nVar != null && R0(nVar)) {
                    C = surface;
                    C = h.c(this.M0, nVar.f6420f);
                    this.W0 = C;
                }
            }
        }
        C = surface;
        C = surface;
        C = surface;
        if (this.V0 == C) {
            if (C == 0 || C == this.W0) {
                return;
            }
            t tVar = this.f11906q1;
            if (tVar != null && (handler = (aVar = this.O0).f11983a) != null) {
                handler.post(new p3.g(aVar, tVar, 1));
            }
            if (this.X0) {
                s.a aVar3 = this.O0;
                Surface surface2 = this.V0;
                if (aVar3.f11983a != null) {
                    aVar3.f11983a.post(new q(aVar3, surface2, SystemClock.elapsedRealtime()));
                    return;
                }
                return;
            }
            return;
        }
        this.V0 = C;
        l lVar3 = this.N0;
        Objects.requireNonNull(lVar3);
        ?? r10 = C instanceof h ? 0 : C;
        if (lVar3.f11943e != r10) {
            lVar3.a();
            lVar3.f11943e = r10;
            lVar3.d(true);
        }
        this.X0 = false;
        int i11 = this.f11386m;
        ?? r11 = this.Q;
        if (r11 != 0) {
            if (g0.f10384a < 23 || C == 0 || this.T0) {
                o0();
                b0();
            } else {
                r11.h(C);
            }
        }
        if (C == 0 || C == this.W0) {
            this.f11906q1 = null;
            C0();
            return;
        }
        t tVar2 = this.f11906q1;
        if (tVar2 != null && (handler2 = (aVar2 = this.O0).f11983a) != null) {
            handler2.post(new p3.g(aVar2, tVar2, 1));
        }
        C0();
        if (i11 == 2) {
            Q0();
        }
    }

    @Override // e4.o
    public final boolean m0(long j10, long j11, e4.l lVar, ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, s0 s0Var) throws n3.q {
        boolean z12;
        boolean z13;
        boolean z14;
        long j13;
        long j14;
        long j15;
        Objects.requireNonNull(lVar);
        if (this.f11892c1 == -9223372036854775807L) {
            this.f11892c1 = j10;
        }
        if (j12 != this.f11898i1) {
            l lVar2 = this.N0;
            long j16 = lVar2.f11952n;
            if (j16 != -1) {
                lVar2.f11954p = j16;
                lVar2.f11955q = lVar2.f11953o;
            }
            lVar2.f11951m++;
            d dVar = lVar2.f11939a;
            long j17 = j12 * 1000;
            dVar.f11870a.b(j17);
            if (dVar.f11870a.a()) {
                dVar.f11872c = false;
            } else if (dVar.f11873d != -9223372036854775807L) {
                if (dVar.f11872c) {
                    d.a aVar = dVar.f11871b;
                    j15 = j17;
                    long j18 = aVar.f11878d;
                    if (j18 == 0 ? false : aVar.f11881g[(int) ((j18 - 1) % 15)]) {
                    }
                    dVar.f11872c = true;
                    j17 = j15;
                    dVar.f11871b.b(j17);
                } else {
                    j15 = j17;
                }
                dVar.f11871b.c();
                dVar.f11871b.b(dVar.f11873d);
                dVar.f11872c = true;
                j17 = j15;
                dVar.f11871b.b(j17);
            }
            if (dVar.f11872c && dVar.f11871b.a()) {
                d.a aVar2 = dVar.f11870a;
                dVar.f11870a = dVar.f11871b;
                dVar.f11871b = aVar2;
                dVar.f11872c = false;
            }
            dVar.f11873d = j17;
            dVar.f11874e = dVar.f11870a.a() ? 0 : dVar.f11874e + 1;
            lVar2.c();
            this.f11898i1 = j12;
        }
        long j19 = this.J0;
        long j20 = j12 - j19;
        if (z10 && !z11) {
            S0(lVar, i10);
            return true;
        }
        double d10 = this.O;
        boolean z15 = this.f11386m == 2;
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long j21 = (long) ((j12 - j10) / d10);
        if (z15) {
            j21 -= jElapsedRealtime - j11;
        }
        if (this.V0 == this.W0) {
            if (!H0(j21)) {
                return false;
            }
            S0(lVar, i10);
            U0(j21);
            return true;
        }
        long j22 = jElapsedRealtime - this.f11899j1;
        boolean z16 = this.f11891b1 ? !this.Z0 : z15 || this.f11890a1;
        if (this.f11893d1 != -9223372036854775807L || j10 < j19) {
            z12 = false;
        } else {
            if (!z16) {
                if (z15) {
                    if (H0(j21) && j22 > 100000) {
                    }
                }
                z12 = false;
            }
            z12 = true;
        }
        if (z12) {
            long jNanoTime = System.nanoTime();
            L0(j20, jNanoTime, s0Var);
            if (g0.f10384a >= 21) {
                P0(lVar, i10, jNanoTime);
            } else {
                O0(lVar, i10);
            }
            U0(j21);
            return true;
        }
        if (!z15 || j10 == this.f11892c1) {
            return false;
        }
        long jNanoTime2 = System.nanoTime();
        long j23 = (j21 * 1000) + jNanoTime2;
        l lVar3 = this.N0;
        if (lVar3.f11954p == -1 || !lVar3.f11939a.a()) {
            j20 = j20;
        } else {
            d dVar2 = lVar3.f11939a;
            if (dVar2.a()) {
                d.a aVar3 = dVar2.f11870a;
                long j24 = aVar3.f11879e;
                j14 = j24 == 0 ? 0L : aVar3.f11880f / j24;
            } else {
                j14 = -9223372036854775807L;
            }
            long j25 = lVar3.f11955q + ((long) (((lVar3.f11951m - lVar3.f11954p) * j14) / lVar3.f11947i));
            if (Math.abs(j23 - j25) <= 20000000) {
                j23 = j25;
            } else {
                lVar3.b();
            }
        }
        lVar3.f11952n = lVar3.f11951m;
        lVar3.f11953o = j23;
        l.e eVar = lVar3.f11941c;
        if (eVar != null && lVar3.f11949k != -9223372036854775807L) {
            long j26 = eVar.f11960h;
            if (j26 != -9223372036854775807L) {
                long j27 = lVar3.f11949k;
                long j28 = (((j23 - j26) / j27) * j27) + j26;
                if (j23 <= j28) {
                    j13 = j28 - j27;
                } else {
                    j13 = j28;
                    j28 = j27 + j28;
                }
                if (j28 - j23 >= j23 - j13) {
                    j28 = j13;
                }
                j23 = j28 - lVar3.f11950l;
            }
        }
        long j29 = (j23 - jNanoTime2) / 1000;
        boolean z17 = this.f11893d1 != -9223372036854775807L;
        if (((j29 > (-500000L) ? 1 : (j29 == (-500000L) ? 0 : -1)) < 0) && !z11) {
            m0 m0Var = this.f11387n;
            Objects.requireNonNull(m0Var);
            int iP = m0Var.p(j10 - this.f11389p);
            if (iP == 0) {
                z14 = false;
            } else {
                if (z17) {
                    q3.e eVar2 = this.H0;
                    eVar2.f13571d += iP;
                    eVar2.f13573f += this.f11897h1;
                } else {
                    this.H0.f13577j++;
                    T0(iP, this.f11897h1);
                }
                if (S()) {
                    b0();
                }
                z14 = true;
            }
            if (z14) {
                return false;
            }
        }
        if (H0(j29) && !z11) {
            if (z17) {
                S0(lVar, i10);
                z13 = true;
            } else {
                i0.b.d("dropVideoBuffer");
                lVar.d(i10, false);
                i0.b.g();
                z13 = true;
                T0(0, 1);
            }
            U0(j29);
            return z13;
        }
        if (g0.f10384a >= 21) {
            if (j29 >= 50000) {
                return false;
            }
            L0(j20, j23, s0Var);
            P0(lVar, i10, j23);
            U0(j29);
            return true;
        }
        if (j29 >= 30000) {
            return false;
        }
        if (j29 > 11000) {
            try {
                Thread.sleep((j29 - 10000) / 1000);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return false;
            }
        }
        L0(j20, j23, s0Var);
        O0(lVar, i10);
        U0(j29);
        return true;
    }

    @Override // e4.o
    public final void q0() {
        super.q0();
        this.f11897h1 = 0;
    }

    @Override // e4.o
    public final boolean w0(e4.n nVar) {
        return this.V0 != null || R0(nVar);
    }

    @Override // e4.o, n3.s1
    public final void x(float f10, float f11) throws n3.q {
        this.O = f10;
        this.P = f11;
        z0(this.R);
        l lVar = this.N0;
        lVar.f11947i = f10;
        lVar.b();
        lVar.d(false);
    }

    @Override // e4.o
    public final int y0(e4.p pVar, s0 s0Var) throws e4.r.b {
        boolean z10;
        int i10 = 0;
        if (!m5.s.n(s0Var.f11687s)) {
            return t1.c(0);
        }
        boolean z11 = s0Var.f11690v != null;
        List<e4.n> listF0 = F0(pVar, s0Var, z11, false);
        if (z11 && listF0.isEmpty()) {
            listF0 = F0(pVar, s0Var, false, false);
        }
        if (listF0.isEmpty()) {
            return t1.c(1);
        }
        int i11 = s0Var.L;
        if (!(i11 == 0 || i11 == 2)) {
            return t1.c(2);
        }
        e4.n nVar = listF0.get(0);
        boolean zE = nVar.e(s0Var);
        if (!zE) {
            int i12 = 1;
            while (true) {
                if (i12 >= listF0.size()) {
                    z10 = true;
                    break;
                }
                e4.n nVar2 = listF0.get(i12);
                if (nVar2.e(s0Var)) {
                    z10 = false;
                    zE = true;
                    nVar = nVar2;
                    break;
                }
                i12++;
            }
        } else {
            z10 = true;
            break;
        }
        int i13 = zE ? 4 : 3;
        int i14 = nVar.f(s0Var) ? 16 : 8;
        int i15 = nVar.f6421g ? 64 : 0;
        int i16 = z10 ? 128 : 0;
        if (zE) {
            List<e4.n> listF1 = F0(pVar, s0Var, z11, true);
            if (!listF1.isEmpty()) {
                e4.n nVar3 = (e4.n) ((ArrayList) e4.r.g(listF1, s0Var)).get(0);
                if (nVar3.e(s0Var) && nVar3.f(s0Var)) {
                    i10 = 32;
                }
            }
        }
        return i13 | i14 | i10 | i15 | i16;
    }
}
