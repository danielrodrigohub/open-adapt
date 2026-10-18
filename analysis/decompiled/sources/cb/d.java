package cb;

import java.util.Iterator;
import java.util.Map;
import qd.l;
import rd.o;
import v9.p0;
import y9.e;

/* JADX INFO: compiled from: AdaptKitExecutor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends o implements qd.a<fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ p0 f4281h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ qd.a f4282i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ ka.d f4283j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ p0 f4284k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ l f4285l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(p0 p0Var, qd.a aVar, ka.d dVar, p0 p0Var2, l lVar) {
        super(0);
        this.f4281h = p0Var;
        this.f4282i = aVar;
        this.f4283j = dVar;
        this.f4284k = p0Var2;
        this.f4285l = lVar;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // qd.a
    public final fd.o invoke() {
        try {
            p0 p0Var = this.f4281h;
            if (((Boolean) this.f4282i.invoke()).booleanValue()) {
                c cVar = c.f4270b;
                if (((fb.a) c.f4272d.getValue()).isEnabled()) {
                    cVar.f("ScanForDevices Started");
                    Map<ka.d, p0<ka.b, ka.a>> map = c.f4274f;
                    if (map.isEmpty()) {
                        synchronized (c.f4275g) {
                            c.f4275g.clear();
                        }
                        map.put(this.f4283j, this.f4284k);
                        this.f4285l.invoke(c.f4276h);
                    } else {
                        map.put(this.f4283j, this.f4284k);
                    }
                } else {
                    ka.a aVar = new ka.a("Bluetooth is disabled", new y9.c(null, 1, null));
                    c.d("Scan not started BluetoothAdapter Off");
                    p0Var.b(aVar);
                }
            } else {
                v9.a.C0295a c0295a = v9.a.f16441i;
                ka.a aVar2 = new ka.a("Location Permission not granted by user", new e(v9.a.f16442j));
                c cVar2 = c.f4270b;
                c.d("Scan not started LocationPermissionOff");
                p0Var.b(aVar2);
            }
        } catch (Throwable th) {
            ka.a aVar3 = new ka.a("Unexpected error, check cause", th);
            c cVar3 = c.f4270b;
            c.d("Scan Started Unexpected error, check cause: null message: null");
            Iterator<Map.Entry<ka.d, p0<ka.b, ka.a>>> it = c.f4274f.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getValue().b(aVar3);
            }
        }
        return fd.o.f7408a;
    }
}
