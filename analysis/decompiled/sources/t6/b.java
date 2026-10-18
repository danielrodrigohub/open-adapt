package t6;

/* JADX INFO: compiled from: CharMatcher.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b implements i<Character> {

    /* JADX INFO: compiled from: CharMatcher.java */
    public static abstract class a extends b {
        @Override // t6.i
        @Deprecated
        public final boolean apply(Character ch) {
            return b(ch.charValue());
        }
    }

    /* JADX INFO: renamed from: t6.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CharMatcher.java */
    public static final class C0263b extends a {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final char f15533h;

        public C0263b(char c10) {
            this.f15533h = c10;
        }

        @Override // t6.b
        public final boolean b(char c10) {
            return c10 == this.f15533h;
        }

        public final String toString() {
            char c10 = this.f15533h;
            char[] cArr = {'\\', 'u', 0, 0, 0, 0};
            for (int i10 = 0; i10 < 4; i10++) {
                cArr[5 - i10] = "0123456789ABCDEF".charAt(c10 & 15);
                c10 = (char) (c10 >> 4);
            }
            String strCopyValueOf = String.copyValueOf(cArr);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strCopyValueOf).length() + 18);
            sb2.append("CharMatcher.is('");
            sb2.append(strCopyValueOf);
            sb2.append("')");
            return sb2.toString();
        }
    }

    /* JADX INFO: compiled from: CharMatcher.java */
    public static abstract class c extends a {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f15534h = "CharMatcher.none()";

        public final String toString() {
            return this.f15534h;
        }
    }

    /* JADX INFO: compiled from: CharMatcher.java */
    public static final class d extends c {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final d f15535i = new d();

        @Override // t6.b
        public final int a(CharSequence charSequence, int i10) {
            h.e(i10, charSequence.length());
            return -1;
        }

        @Override // t6.b
        public final boolean b(char c10) {
            return false;
        }
    }

    public int a(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        h.e(i10, length);
        while (i10 < length) {
            if (b(charSequence.charAt(i10))) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public abstract boolean b(char c10);
}
