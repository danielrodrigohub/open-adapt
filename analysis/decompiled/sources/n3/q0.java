package n3;

/* JADX INFO: compiled from: ExoTimeoutException.java */
/* JADX INFO: loaded from: classes.dex */
public final class q0 extends RuntimeException {
    public q0(int i10) {
        super(i10 != 1 ? i10 != 2 ? i10 != 3 ? "Undefined timeout." : "Detaching surface timed out." : "Setting foreground mode timed out." : "Player release timed out.");
    }
}
