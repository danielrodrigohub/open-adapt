package i2;

import com.newrelic.agent.android.distributedtracing.TracePayload;
import java.io.IOException;

/* JADX INFO: compiled from: DocumentDataParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class i implements l0<d2.b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f8683a = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final j2.c.a f8684b = j2.c.a.a("t", "f", "s", "j", TracePayload.TRACE_ID_KEY, "lh", "ls", "fc", "sc", "sw", "of");

    @Override // i2.l0
    public final d2.b a(j2.c cVar, float f10) throws IOException {
        cVar.Y();
        int i10 = 3;
        String strN0 = null;
        String strN1 = null;
        int iL0 = 0;
        int iA = 0;
        int iA2 = 0;
        float fK0 = 0.0f;
        float fK1 = 0.0f;
        float fK2 = 0.0f;
        float fK3 = 0.0f;
        boolean zJ0 = true;
        while (cVar.i0()) {
            switch (cVar.q0(f8684b)) {
                case 0:
                    strN0 = cVar.n0();
                    break;
                case 1:
                    strN1 = cVar.n0();
                    break;
                case 2:
                    fK0 = (float) cVar.k0();
                    break;
                case 3:
                    int iL1 = cVar.l0();
                    i10 = (iL1 <= 2 && iL1 >= 0) ? q.g.b(3)[iL1] : 3;
                    break;
                case 4:
                    iL0 = cVar.l0();
                    break;
                case 5:
                    fK1 = (float) cVar.k0();
                    break;
                case 6:
                    fK2 = (float) cVar.k0();
                    break;
                case 7:
                    iA = s.a(cVar);
                    break;
                case 8:
                    iA2 = s.a(cVar);
                    break;
                case 9:
                    fK3 = (float) cVar.k0();
                    break;
                case 10:
                    zJ0 = cVar.j0();
                    break;
                default:
                    cVar.r0();
                    cVar.s0();
                    break;
            }
        }
        cVar.g0();
        return new d2.b(strN0, strN1, fK0, i10, iL0, fK1, fK2, iA, iA2, fK3, zJ0);
    }
}
