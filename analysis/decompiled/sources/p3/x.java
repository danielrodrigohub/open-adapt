package p3;

/* JADX INFO: compiled from: DefaultAudioTrackBufferSizeProvider.java */
/* JADX INFO: loaded from: classes.dex */
public final class x implements w.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12906b = 250000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f12907c = 750000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f12908d = 4;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f12909e = 250000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f12910f = 50000000;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f12911g = 2;

    /* JADX INFO: compiled from: DefaultAudioTrackBufferSizeProvider.java */
    public static class a {
    }

    public x(a aVar) {
    }

    public static int a(int i10) {
        switch (i10) {
            case 5:
                return 80000;
            case 6:
            case 18:
                return 768000;
            case 7:
                return 192000;
            case 8:
                return 2250000;
            case 9:
                return 40000;
            case 10:
                return 100000;
            case 11:
                return 16000;
            case 12:
                return 7000;
            case 13:
            default:
                throw new IllegalArgumentException();
            case 14:
                return 3062500;
            case 15:
                return 8000;
            case 16:
                return 256000;
            case 17:
                return 336000;
        }
    }
}
