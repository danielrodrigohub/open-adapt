package q3;

/* JADX INFO: compiled from: Buffer.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13555h;

    public final void k(int i10) {
        this.f13555h = i10 | this.f13555h;
    }

    public final boolean l(int i10) {
        return (this.f13555h & i10) == i10;
    }

    public final boolean m() {
        return l(268435456);
    }

    public final boolean n() {
        return l(Integer.MIN_VALUE);
    }
}
