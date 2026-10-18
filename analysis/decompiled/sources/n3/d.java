package n3;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import java.util.Objects;

/* JADX INFO: compiled from: AudioFocusManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AudioManager f11345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f11346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public b f11347c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p3.d f11348d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11349e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11350f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f11351g = 1.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AudioFocusRequest f11352h;

    /* JADX INFO: compiled from: AudioFocusManager.java */
    public class a implements AudioManager.OnAudioFocusChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Handler f11353a;

        public a(Handler handler) {
            this.f11353a = handler;
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public final void onAudioFocusChange(final int i10) {
            this.f11353a.post(new Runnable() { // from class: n3.c
                @Override // java.lang.Runnable
                public final void run() {
                    d.a aVar = this.f11325h;
                    int i11 = i10;
                    d dVar = d.this;
                    Objects.requireNonNull(dVar);
                    if (i11 == -3 || i11 == -2) {
                        if (i11 != -2) {
                            p3.d dVar2 = dVar.f11348d;
                            if (!(dVar2 != null && dVar2.f12687h == 1)) {
                                dVar.d(3);
                                return;
                            }
                        }
                        dVar.b(0);
                        dVar.d(2);
                        return;
                    }
                    if (i11 == -1) {
                        dVar.b(-1);
                        dVar.a();
                    } else if (i11 != 1) {
                        da.c.b("Unknown focus change type: ", i11, "AudioFocusManager");
                    } else {
                        dVar.d(1);
                        dVar.b(1);
                    }
                }
            });
        }
    }

    /* JADX INFO: compiled from: AudioFocusManager.java */
    public interface b {
    }

    public d(Context context, Handler handler, b bVar) {
        AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
        Objects.requireNonNull(audioManager);
        this.f11345a = audioManager;
        this.f11347c = bVar;
        this.f11346b = new a(handler);
        this.f11349e = 0;
    }

    public final void a() {
        if (this.f11349e == 0) {
            return;
        }
        if (m5.g0.f10384a >= 26) {
            AudioFocusRequest audioFocusRequest = this.f11352h;
            if (audioFocusRequest != null) {
                this.f11345a.abandonAudioFocusRequest(audioFocusRequest);
            }
        } else {
            this.f11345a.abandonAudioFocus(this.f11346b);
        }
        d(0);
    }

    public final void b(int i10) {
        b bVar = this.f11347c;
        if (bVar != null) {
            k0.b bVar2 = (k0.b) bVar;
            boolean zP = k0.this.p();
            k0.this.E0(zP, i10, k0.l0(zP, i10));
        }
    }

    public final void c() {
        if (m5.g0.a(this.f11348d, null)) {
            return;
        }
        this.f11348d = null;
        this.f11350f = 0;
    }

    public final void d(int i10) {
        if (this.f11349e == i10) {
            return;
        }
        this.f11349e = i10;
        float f10 = i10 == 3 ? 0.2f : 1.0f;
        if (this.f11351g == f10) {
            return;
        }
        this.f11351g = f10;
        b bVar = this.f11347c;
        if (bVar != null) {
            k0 k0Var = k0.this;
            k0Var.w0(1, 2, Float.valueOf(k0Var.f11464b0 * k0Var.A.f11351g));
        }
    }

    public final int e(boolean z10, int i10) {
        int iRequestAudioFocus;
        int i11 = 1;
        if (i10 == 1 || this.f11350f != 1) {
            a();
            return z10 ? 1 : -1;
        }
        if (!z10) {
            return -1;
        }
        if (this.f11349e != 1) {
            if (m5.g0.f10384a >= 26) {
                AudioFocusRequest audioFocusRequest = this.f11352h;
                if (audioFocusRequest == null) {
                    AudioFocusRequest.Builder builder = audioFocusRequest == null ? new AudioFocusRequest.Builder(this.f11350f) : new AudioFocusRequest.Builder(this.f11352h);
                    p3.d dVar = this.f11348d;
                    boolean z11 = dVar != null && dVar.f12687h == 1;
                    Objects.requireNonNull(dVar);
                    this.f11352h = builder.setAudioAttributes(dVar.b().f12693a).setWillPauseWhenDucked(z11).setOnAudioFocusChangeListener(this.f11346b).build();
                }
                iRequestAudioFocus = this.f11345a.requestAudioFocus(this.f11352h);
            } else {
                AudioManager audioManager = this.f11345a;
                a aVar = this.f11346b;
                p3.d dVar2 = this.f11348d;
                Objects.requireNonNull(dVar2);
                iRequestAudioFocus = audioManager.requestAudioFocus(aVar, m5.g0.B(dVar2.f12689j), this.f11350f);
            }
            if (iRequestAudioFocus == 1) {
                d(1);
            } else {
                d(0);
                i11 = -1;
            }
        }
        return i11;
    }
}
