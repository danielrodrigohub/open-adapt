package b7;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'l' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: WireFormat.java */
/* JADX INFO: loaded from: classes.dex */
public class r1 {
    public static final r1 A;
    public static final /* synthetic */ r1[] B;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final r1 f3481j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final r1 f3482k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final r1 f3483l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final r1 f3484m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final r1 f3485n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final r1 f3486o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final r1 f3487p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final r1 f3488q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final a f3489r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final b f3490s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final c f3491t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final d f3492u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final r1 f3493v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final r1 f3494w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final r1 f3495x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final r1 f3496y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final r1 f3497z;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final s1 f3498h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3499i;

    /* JADX INFO: compiled from: WireFormat.java */
    public final enum b extends r1 {
        public b(s1 s1Var) {
            super("GROUP", 9, s1Var, 3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v2, types: [b7.r1$a] */
    /* JADX WARN: Type inference failed for: r4v1, types: [b7.r1$c] */
    /* JADX WARN: Type inference failed for: r8v3, types: [b7.r1$d] */
    static {
        r1 r1Var = new r1("DOUBLE", 0, s1.DOUBLE, 1);
        f3481j = r1Var;
        r1 r1Var2 = new r1("FLOAT", 1, s1.FLOAT, 5);
        f3482k = r1Var2;
        s1 s1Var = s1.LONG;
        r1 r1Var3 = new r1("INT64", 2, s1Var, 0);
        f3483l = r1Var3;
        r1 r1Var4 = new r1("UINT64", 3, s1Var, 0);
        f3484m = r1Var4;
        s1 s1Var2 = s1.INT;
        r1 r1Var5 = new r1("INT32", 4, s1Var2, 0);
        f3485n = r1Var5;
        r1 r1Var6 = new r1("FIXED64", 5, s1Var, 1);
        f3486o = r1Var6;
        r1 r1Var7 = new r1("FIXED32", 6, s1Var2, 5);
        f3487p = r1Var7;
        r1 r1Var8 = new r1("BOOL", 7, s1.BOOLEAN, 0);
        f3488q = r1Var8;
        s1 s1Var3 = s1.STRING;
        ?? r10 = new r1() { // from class: b7.r1.a
            {
                s1 s1Var4 = s1.STRING;
            }
        };
        f3489r = r10;
        s1 s1Var4 = s1.MESSAGE;
        b bVar = new b(s1Var4);
        f3490s = bVar;
        ?? r11 = new r1(s1Var4) { // from class: b7.r1.c
        };
        f3491t = r11;
        ?? r12 = new r1(s1.BYTE_STRING) { // from class: b7.r1.d
        };
        f3492u = r12;
        r1 r1Var9 = new r1("UINT32", 12, s1Var2, 0);
        f3493v = r1Var9;
        r1 r1Var10 = new r1("ENUM", 13, s1.ENUM, 0);
        f3494w = r1Var10;
        r1 r1Var11 = new r1("SFIXED32", 14, s1Var2, 5);
        f3495x = r1Var11;
        r1 r1Var12 = new r1("SFIXED64", 15, s1Var, 1);
        f3496y = r1Var12;
        r1 r1Var13 = new r1("SINT32", 16, s1Var2, 0);
        f3497z = r1Var13;
        r1 r1Var14 = new r1("SINT64", 17, s1Var, 0);
        A = r1Var14;
        B = new r1[]{r1Var, r1Var2, r1Var3, r1Var4, r1Var5, r1Var6, r1Var7, r1Var8, r10, bVar, r11, r12, r1Var9, r1Var10, r1Var11, r1Var12, r1Var13, r1Var14};
    }

    public r1(String str, int i10, s1 s1Var, int i11) {
        super(str, i10);
        this.f3498h = s1Var;
        this.f3499i = i11;
    }

    public static r1 valueOf(String str) {
        return (r1) Enum.valueOf(r1.class, str);
    }

    public static r1[] values() {
        return (r1[]) B.clone();
    }
}
