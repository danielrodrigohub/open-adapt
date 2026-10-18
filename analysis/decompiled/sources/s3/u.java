package s3;

/* JADX INFO: compiled from: SeekMap.java */
/* JADX INFO: loaded from: classes.dex */
public interface u {

    /* JADX INFO: compiled from: SeekMap.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final v f15077a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final v f15078b;

        public a(v vVar, v vVar2) {
            this.f15077a = vVar;
            this.f15078b = vVar2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f15077a.equals(aVar.f15077a) && this.f15078b.equals(aVar.f15078b);
        }

        public final int hashCode() {
            return this.f15078b.hashCode() + (this.f15077a.hashCode() * 31);
        }

        public final String toString() {
            String string;
            StringBuilder sbC = a0.b.c("[");
            sbC.append(this.f15077a);
            if (this.f15077a.equals(this.f15078b)) {
                string = "";
            } else {
                StringBuilder sbC2 = a0.b.c(", ");
                sbC2.append(this.f15078b);
                string = sbC2.toString();
            }
            return a1.f.d(sbC, string, "]");
        }
    }

    /* JADX INFO: compiled from: SeekMap.java */
    public static class b implements u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f15079a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final a f15080b;

        public b(long j10) {
            this(j10, 0L);
        }

        @Override // s3.u
        public final boolean f() {
            return false;
        }

        @Override // s3.u
        public final a h(long j10) {
            return this.f15080b;
        }

        @Override // s3.u
        public final long i() {
            return this.f15079a;
        }

        public b(long j10, long j11) {
            this.f15079a = j10;
            v vVar = j11 == 0 ? v.f15081c : new v(0L, j11);
            this.f15080b = new a(vVar, vVar);
        }
    }

    boolean f();

    a h(long j10);

    long i();
}
