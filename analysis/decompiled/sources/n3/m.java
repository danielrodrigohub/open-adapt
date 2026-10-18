package n3;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.provider.Settings;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: DefaultRenderersFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class m implements v1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f11534a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e4.j f11535b = new e4.j();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a4.g f11536c = a4.g.f290b;

    public m(Context context) {
        this.f11534a = context;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0085  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:9:0x0049  */
    @Override // n3.v1
    public final s1[] a(Handler handler, n5.s sVar, p3.p pVar, z4.n nVar, f4.e eVar) {
        boolean z10;
        p3.e eVar2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new n5.g(this.f11534a, this.f11535b, this.f11536c, handler, sVar));
        Context context = this.f11534a;
        p3.w.e eVar3 = new p3.w.e();
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
        int i10 = m5.g0.f10384a;
        if (i10 >= 17) {
            String str = m5.g0.f10386c;
            if ("Amazon".equals(str) || "Xiaomi".equals(str)) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        if (z10 && Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) == 1) {
            eVar2 = p3.e.f12707d;
        } else if (i10 >= 29) {
            if (!m5.g0.K(context)) {
                if (!(i10 >= 23 && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive"))) {
                    if (intentRegisterReceiver != null) {
                        eVar2 = p3.e.f12706c;
                    } else {
                        eVar2 = p3.e.f12706c;
                    }
                }
            }
            eVar2 = new p3.e(p3.e.a.a(), 8);
        } else if (intentRegisterReceiver != null || intentRegisterReceiver.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) {
            eVar2 = p3.e.f12706c;
        } else {
            eVar2 = new p3.e(intentRegisterReceiver.getIntArrayExtra("android.media.extra.ENCODINGS"), intentRegisterReceiver.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8));
        }
        Objects.requireNonNull(eVar2);
        eVar3.f12877a = eVar2;
        eVar3.f12879c = false;
        eVar3.f12880d = false;
        eVar3.f12881e = 0;
        if (eVar3.f12878b == null) {
            eVar3.f12878b = new p3.w.g(new p3.f[0]);
        }
        arrayList.add(new p3.a0(this.f11534a, this.f11535b, this.f11536c, handler, pVar, new p3.w(eVar3)));
        arrayList.add(new z4.o(nVar, handler.getLooper()));
        arrayList.add(new f4.f(eVar, handler.getLooper()));
        arrayList.add(new o5.b());
        return (s1[]) arrayList.toArray(new s1[0]);
    }
}
