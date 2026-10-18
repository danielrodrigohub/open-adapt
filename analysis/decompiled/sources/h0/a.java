package h0;

import android.text.SpannableStringBuilder;
import java.util.Locale;

/* JADX INFO: compiled from: BidiFormatter.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final d.C0163d f8082d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f8083e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f8084f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f8085g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f8086h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f8087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f8089c;

    /* JADX INFO: renamed from: h0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BidiFormatter.java */
    public static class C0162a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final byte[] f8090e = new byte[1792];

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CharSequence f8091a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f8092b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f8093c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public char f8094d;

        static {
            for (int i10 = 0; i10 < 1792; i10++) {
                f8090e[i10] = Character.getDirectionality(i10);
            }
        }

        public C0162a(CharSequence charSequence) {
            this.f8091a = charSequence;
            this.f8092b = charSequence.length();
        }

        public final byte a() {
            char cCharAt = this.f8091a.charAt(this.f8093c - 1);
            this.f8094d = cCharAt;
            if (Character.isLowSurrogate(cCharAt)) {
                int iCodePointBefore = Character.codePointBefore(this.f8091a, this.f8093c);
                this.f8093c -= Character.charCount(iCodePointBefore);
                return Character.getDirectionality(iCodePointBefore);
            }
            this.f8093c--;
            char c10 = this.f8094d;
            return c10 < 1792 ? f8090e[c10] : Character.getDirectionality(c10);
        }
    }

    static {
        d.C0163d c0163d = d.f8101c;
        f8082d = c0163d;
        f8083e = Character.toString((char) 8206);
        f8084f = Character.toString((char) 8207);
        f8085g = new a(false, 2, c0163d);
        f8086h = new a(true, 2, c0163d);
    }

    public a(boolean z10, int i10, c cVar) {
        this.f8087a = z10;
        this.f8088b = i10;
        this.f8089c = cVar;
    }

    public static int a(CharSequence charSequence) {
        byte directionality;
        C0162a c0162a = new C0162a(charSequence);
        c0162a.f8093c = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int i13 = c0162a.f8093c;
            if (i13 < c0162a.f8092b && i10 == 0) {
                char cCharAt = c0162a.f8091a.charAt(i13);
                c0162a.f8094d = cCharAt;
                if (Character.isHighSurrogate(cCharAt)) {
                    int iCodePointAt = Character.codePointAt(c0162a.f8091a, c0162a.f8093c);
                    c0162a.f8093c = Character.charCount(iCodePointAt) + c0162a.f8093c;
                    directionality = Character.getDirectionality(iCodePointAt);
                } else {
                    c0162a.f8093c++;
                    char c10 = c0162a.f8094d;
                    directionality = c10 < 1792 ? C0162a.f8090e[c10] : Character.getDirectionality(c10);
                }
                if (directionality != 0) {
                    if (directionality == 1 || directionality == 2) {
                        if (i12 == 0) {
                            return 1;
                        }
                    } else if (directionality != 9) {
                        switch (directionality) {
                            case 14:
                            case 15:
                                i12++;
                                i11 = -1;
                                continue;
                            case 16:
                            case 17:
                                i12++;
                                i11 = 1;
                                continue;
                            case 18:
                                i12--;
                                i11 = 0;
                                continue;
                        }
                    }
                } else if (i12 == 0) {
                    return -1;
                }
                i10 = i12;
            }
        }
        if (i10 == 0) {
            return 0;
        }
        if (i11 != 0) {
            return i11;
        }
        while (c0162a.f8093c > 0) {
            switch (c0162a.a()) {
                case 14:
                case 15:
                    if (i10 == i12) {
                        return -1;
                    }
                    i12--;
                    break;
                case 16:
                case 17:
                    if (i10 == i12) {
                        return 1;
                    }
                    i12--;
                    break;
                case 18:
                    i12++;
                    break;
                default:
                    break;
            }
        }
        return 0;
    }

    public static int b(CharSequence charSequence) {
        C0162a c0162a = new C0162a(charSequence);
        c0162a.f8093c = c0162a.f8092b;
        int i10 = 0;
        while (true) {
            int i11 = i10;
            while (c0162a.f8093c > 0) {
                byte bA = c0162a.a();
                if (bA == 0) {
                    if (i11 == 0) {
                        return -1;
                    }
                    if (i10 == 0) {
                        i10 = i11;
                    }
                } else if (bA == 1 || bA == 2) {
                    if (i11 == 0) {
                        return 1;
                    }
                    if (i10 == 0) {
                        i10 = i11;
                    }
                } else if (bA != 9) {
                    switch (bA) {
                        case 14:
                        case 15:
                            if (i10 == i11) {
                                return -1;
                            }
                            i11--;
                            break;
                        case 16:
                        case 17:
                            if (i10 == i11) {
                                return 1;
                            }
                            i11--;
                            break;
                        case 18:
                            i11++;
                            break;
                        default:
                            if (i10 == 0) {
                                i10 = i11;
                            }
                            break;
                    }
                } else {
                    continue;
                }
            }
            return 0;
        }
    }

    public static a c() {
        Locale locale = Locale.getDefault();
        int i10 = e.f8106a;
        return e.a.a(locale) == 1 ? f8086h : f8085g;
    }

    public final CharSequence d(CharSequence charSequence, c cVar) {
        String str;
        if (charSequence == null) {
            return null;
        }
        boolean zB = ((d.c) cVar).b(charSequence, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String str2 = "";
        if ((this.f8088b & 2) != 0) {
            boolean zB2 = (zB ? d.f8100b : d.f8099a).b(charSequence, charSequence.length());
            if (this.f8087a || !(zB2 || a(charSequence) == 1)) {
                str = (!this.f8087a || (zB2 && a(charSequence) != -1)) ? "" : f8084f;
            } else {
                str = f8083e;
            }
            spannableStringBuilder.append((CharSequence) str);
        }
        if (zB != this.f8087a) {
            spannableStringBuilder.append(zB ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        boolean zB3 = (zB ? d.f8100b : d.f8099a).b(charSequence, charSequence.length());
        if (!this.f8087a && (zB3 || b(charSequence) == 1)) {
            str2 = f8083e;
        } else if (this.f8087a && (!zB3 || b(charSequence) == -1)) {
            str2 = f8084f;
        }
        spannableStringBuilder.append((CharSequence) str2);
        return spannableStringBuilder;
    }
}
