package td;

import java.util.Random;

/* JADX INFO: compiled from: PlatformRandom.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends c {
    @Override // td.c
    public final int a() {
        return c().nextInt();
    }

    @Override // td.c
    public final int b(int i10) {
        return c().nextInt(i10);
    }

    public abstract Random c();
}
