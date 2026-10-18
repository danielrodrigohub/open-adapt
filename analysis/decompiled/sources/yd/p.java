package yd;

/* JADX INFO: compiled from: Strings.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p extends rd.o implements qd.p<CharSequence, Integer, fd.e<? extends Integer, ? extends Integer>> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ char[] f19200h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ boolean f19201i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(char[] cArr, boolean z10) {
        super(2);
        this.f19200h = cArr;
        this.f19201i = z10;
    }

    @Override // qd.p
    public final fd.e<? extends Integer, ? extends Integer> invoke(CharSequence charSequence, Integer num) {
        CharSequence charSequence2 = charSequence;
        int iIntValue = num.intValue();
        p4.h.j(charSequence2, "$this$$receiver");
        int iQ0 = s.q0(charSequence2, this.f19200h, iIntValue, this.f19201i);
        if (iQ0 < 0) {
            return null;
        }
        return new fd.e<>(Integer.valueOf(iQ0), 1);
    }
}
