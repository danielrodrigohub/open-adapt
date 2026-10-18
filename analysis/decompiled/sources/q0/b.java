package q0;

import android.graphics.Rect;
import java.util.Comparator;

/* JADX INFO: compiled from: FocusStrategy.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: compiled from: FocusStrategy.java */
    public interface a<T> {
    }

    /* JADX INFO: renamed from: q0.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FocusStrategy.java */
    public static class C0238b<T> implements Comparator<T> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Rect f13511h = new Rect();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Rect f13512i = new Rect();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean f13513j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final a<T> f13514k;

        public C0238b(boolean z10, a<T> aVar) {
            this.f13513j = z10;
            this.f13514k = aVar;
        }

        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            Rect rect = this.f13511h;
            Rect rect2 = this.f13512i;
            ((q0.a.C0237a) this.f13514k).a(t10, rect);
            ((q0.a.C0237a) this.f13514k).a(t11, rect2);
            int i10 = rect.top;
            int i11 = rect2.top;
            if (i10 < i11) {
                return -1;
            }
            if (i10 > i11) {
                return 1;
            }
            int i12 = rect.left;
            int i13 = rect2.left;
            if (i12 < i13) {
                return this.f13513j ? 1 : -1;
            }
            if (i12 > i13) {
                return this.f13513j ? -1 : 1;
            }
            int i14 = rect.bottom;
            int i15 = rect2.bottom;
            if (i14 < i15) {
                return -1;
            }
            if (i14 > i15) {
                return 1;
            }
            int i16 = rect.right;
            int i17 = rect2.right;
            if (i16 < i17) {
                return this.f13513j ? 1 : -1;
            }
            if (i16 > i17) {
                return this.f13513j ? -1 : 1;
            }
            return 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0043  */
    /* JADX WARN: Code duplicated, block: B:25:0x0045  */
    public static boolean a(int i10, Rect rect, Rect rect2, Rect rect3) {
        boolean z10;
        int i11;
        int i12;
        boolean zB = b(i10, rect, rect2);
        if (b(i10, rect, rect3) || !zB) {
            return false;
        }
        if (i10 != 17) {
            if (i10 != 33) {
                if (i10 != 66) {
                    if (i10 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                    if (rect.bottom <= rect3.top) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } else if (rect.right <= rect3.left) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else if (rect.top >= rect3.bottom) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else if (rect.left >= rect3.right) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10 || i10 == 17 || i10 == 66) {
            return true;
        }
        int iD = d(i10, rect, rect2);
        if (i10 == 17) {
            i11 = rect.left;
            i12 = rect3.left;
        } else if (i10 == 33) {
            i11 = rect.top;
            i12 = rect3.top;
        } else if (i10 == 66) {
            i11 = rect3.right;
            i12 = rect.right;
        } else {
            if (i10 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            i11 = rect3.bottom;
            i12 = rect.bottom;
        }
        return iD < Math.max(1, i11 - i12);
    }

    public static boolean b(int i10, Rect rect, Rect rect2) {
        if (i10 != 17) {
            if (i10 != 33) {
                if (i10 != 66) {
                    if (i10 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    public static boolean c(Rect rect, Rect rect2, int i10) {
        if (i10 == 17) {
            int i11 = rect.right;
            int i12 = rect2.right;
            return (i11 > i12 || rect.left >= i12) && rect.left > rect2.left;
        }
        if (i10 == 33) {
            int i13 = rect.bottom;
            int i14 = rect2.bottom;
            return (i13 > i14 || rect.top >= i14) && rect.top > rect2.top;
        }
        if (i10 == 66) {
            int i15 = rect.left;
            int i16 = rect2.left;
            return (i15 < i16 || rect.right <= i16) && rect.right < rect2.right;
        }
        if (i10 != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        int i17 = rect.top;
        int i18 = rect2.top;
        return (i17 < i18 || rect.bottom <= i18) && rect.bottom < rect2.bottom;
    }

    public static int d(int i10, Rect rect, Rect rect2) {
        int i11;
        int i12;
        if (i10 == 17) {
            i11 = rect.left;
            i12 = rect2.right;
        } else if (i10 == 33) {
            i11 = rect.top;
            i12 = rect2.bottom;
        } else if (i10 == 66) {
            i11 = rect2.left;
            i12 = rect.right;
        } else {
            if (i10 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            i11 = rect2.top;
            i12 = rect.bottom;
        }
        return Math.max(0, i11 - i12);
    }

    public static int e(int i10, Rect rect, Rect rect2) {
        if (i10 != 17) {
            if (i10 != 33) {
                if (i10 != 66) {
                    if (i10 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return Math.abs(((rect.width() / 2) + rect.left) - ((rect2.width() / 2) + rect2.left));
        }
        return Math.abs(((rect.height() / 2) + rect.top) - ((rect2.height() / 2) + rect2.top));
    }
}
