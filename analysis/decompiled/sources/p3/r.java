package p3;

import android.media.AudioTimestamp;
import android.media.AudioTrack;

/* JADX INFO: compiled from: AudioTimestampPoller.java */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f12798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f12800c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f12801d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f12802e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f12803f;

    /* JADX INFO: compiled from: AudioTimestampPoller.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AudioTrack f12804a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AudioTimestamp f12805b = new AudioTimestamp();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f12806c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f12807d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f12808e;

        public a(AudioTrack audioTrack) {
            this.f12804a = audioTrack;
        }
    }

    public r(AudioTrack audioTrack) {
        if (m5.g0.f10384a >= 19) {
            this.f12798a = new a(audioTrack);
            a();
        } else {
            this.f12798a = null;
            b(3);
        }
    }

    public final void a() {
        if (this.f12798a != null) {
            b(0);
        }
    }

    public final void b(int i10) {
        this.f12799b = i10;
        if (i10 == 0) {
            this.f12802e = 0L;
            this.f12803f = -1L;
            this.f12800c = System.nanoTime() / 1000;
            this.f12801d = 10000L;
            return;
        }
        if (i10 == 1) {
            this.f12801d = 10000L;
            return;
        }
        if (i10 == 2 || i10 == 3) {
            this.f12801d = 10000000L;
        } else {
            if (i10 != 4) {
                throw new IllegalStateException();
            }
            this.f12801d = 500000L;
        }
    }
}
