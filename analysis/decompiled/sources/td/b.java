package td;

import java.util.Random;
import p4.h;

/* JADX INFO: compiled from: PlatformRandom.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends td.a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final a f15596j = new a();

    /* JADX INFO: compiled from: PlatformRandom.kt */
    public static final class a extends ThreadLocal<Random> {
        @Override // java.lang.ThreadLocal
        public final Random initialValue() {
            return new Random();
        }
    }

    @Override // td.a
    public final Random c() {
        Random random = this.f15596j.get();
        h.i(random, "implStorage.get()");
        return random;
    }
}
