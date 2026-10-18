package e7;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.lang.reflect.Field;
import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: FieldNamingPolicy.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class b implements e7.c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f6514h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final C0117b f6515i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final c f6516j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final d f6517k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final e f6518l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final f f6519m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final g f6520n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final /* synthetic */ b[] f6521o;

    /* JADX INFO: compiled from: FieldNamingPolicy.java */
    public final enum a extends b {
        public a() {
            super("IDENTITY", 0, null);
        }

        @Override // e7.c
        public final String translateName(Field field) {
            return field.getName();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [e7.b$g] */
    /* JADX WARN: Type inference failed for: r1v0, types: [e7.b$b] */
    /* JADX WARN: Type inference failed for: r3v0, types: [e7.b$c] */
    /* JADX WARN: Type inference failed for: r5v0, types: [e7.b$d] */
    /* JADX WARN: Type inference failed for: r7v0, types: [e7.b$e] */
    /* JADX WARN: Type inference failed for: r9v0, types: [e7.b$f] */
    static {
        a aVar = new a();
        f6514h = aVar;
        ?? r10 = new b() { // from class: e7.b.b
            @Override // e7.c
            public final String translateName(Field field) {
                return b.g(field.getName());
            }
        };
        f6515i = r10;
        ?? r11 = new b() { // from class: e7.b.c
            @Override // e7.c
            public final String translateName(Field field) {
                return b.g(b.b(field.getName(), SafeJsonPrimitive.NULL_CHAR));
            }
        };
        f6516j = r11;
        ?? r12 = new b() { // from class: e7.b.d
            @Override // e7.c
            public final String translateName(Field field) {
                return b.b(field.getName(), '_').toUpperCase(Locale.ENGLISH);
            }
        };
        f6517k = r12;
        ?? r13 = new b() { // from class: e7.b.e
            @Override // e7.c
            public final String translateName(Field field) {
                return b.b(field.getName(), '_').toLowerCase(Locale.ENGLISH);
            }
        };
        f6518l = r13;
        ?? r14 = new b() { // from class: e7.b.f
            @Override // e7.c
            public final String translateName(Field field) {
                return b.b(field.getName(), '-').toLowerCase(Locale.ENGLISH);
            }
        };
        f6519m = r14;
        ?? r15 = new b() { // from class: e7.b.g
            @Override // e7.c
            public final String translateName(Field field) {
                return b.b(field.getName(), '.').toLowerCase(Locale.ENGLISH);
            }
        };
        f6520n = r15;
        f6521o = new b[]{aVar, r10, r11, r12, r13, r14, r15};
    }

    public b(String str, int i10, a aVar) {
        super(str, i10);
    }

    public static String b(String str, char c10) {
        StringBuilder sb2 = new StringBuilder();
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (Character.isUpperCase(cCharAt) && sb2.length() != 0) {
                sb2.append(c10);
            }
            sb2.append(cCharAt);
        }
        return sb2.toString();
    }

    public static String g(String str) {
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (Character.isLetter(cCharAt)) {
                if (Character.isUpperCase(cCharAt)) {
                    return str;
                }
                char upperCase = Character.toUpperCase(cCharAt);
                if (i10 == 0) {
                    return upperCase + str.substring(1);
                }
                return str.substring(0, i10) + upperCase + str.substring(i10 + 1);
            }
        }
        return str;
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f6521o.clone();
    }
}
