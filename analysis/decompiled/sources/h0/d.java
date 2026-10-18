package h0;

/* JADX INFO: compiled from: TextDirectionHeuristicsCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0163d f8099a = new C0163d(null, false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0163d f8100b = new C0163d(null, true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0163d f8101c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C0163d f8102d;

    /* JADX INFO: compiled from: TextDirectionHeuristicsCompat.java */
    public static class a implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f8103a = new a();

        /* JADX WARN: Code duplicated, block: B:12:0x0021  */
        @Override // h0.d.b
        public final int a(CharSequence charSequence, int i10) {
            int i11 = 0;
            int i12 = i10 + 0;
            i11 = 2;
            for (int i13 = 0; i13 < i12 && i11 == 2; i13++) {
                byte directionality = Character.getDirectionality(charSequence.charAt(i13));
                C0163d c0163d = d.f8099a;
                if (directionality == 0) {
                    i11 = 1;
                    continue;
                } else if (directionality != 1 && directionality != 2) {
                    switch (directionality) {
                        case 14:
                        case 15:
                            i11 = 1;
                            continue;
                        case 16:
                        case 17:
                            break;
                        default:
                            i11 = 2;
                            continue;
                    }
                }
            }
            return i11;
        }
    }

    /* JADX INFO: compiled from: TextDirectionHeuristicsCompat.java */
    public interface b {
        int a(CharSequence charSequence, int i10);
    }

    /* JADX INFO: compiled from: TextDirectionHeuristicsCompat.java */
    public static abstract class c implements h0.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final b f8104a;

        public c(b bVar) {
            this.f8104a = bVar;
        }

        public abstract boolean a();

        public final boolean b(CharSequence charSequence, int i10) {
            if (charSequence == null || i10 < 0 || charSequence.length() - i10 < 0) {
                throw new IllegalArgumentException();
            }
            b bVar = this.f8104a;
            if (bVar == null) {
                return a();
            }
            int iA = bVar.a(charSequence, i10);
            if (iA == 0) {
                return true;
            }
            if (iA != 1) {
                return a();
            }
            return false;
        }
    }

    /* JADX INFO: renamed from: h0.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: TextDirectionHeuristicsCompat.java */
    public static class C0163d extends c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f8105b;

        public C0163d(b bVar, boolean z10) {
            super(bVar);
            this.f8105b = z10;
        }

        @Override // h0.d.c
        public final boolean a() {
            return this.f8105b;
        }
    }

    static {
        a aVar = a.f8103a;
        f8101c = new C0163d(aVar, false);
        f8102d = new C0163d(aVar, true);
    }
}
