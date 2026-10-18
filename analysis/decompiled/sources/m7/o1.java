package m7;

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
public class o1 {
    public static final o1 A;
    public static final /* synthetic */ o1[] B;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final o1 f10717j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final o1 f10718k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final o1 f10719l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final o1 f10720m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final o1 f10721n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final o1 f10722o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final o1 f10723p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final o1 f10724q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final a f10725r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final b f10726s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final c f10727t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final d f10728u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final o1 f10729v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final o1 f10730w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final o1 f10731x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final o1 f10732y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final o1 f10733z;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p1 f10734h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f10735i;

    /* JADX INFO: compiled from: WireFormat.java */
    public static enum b extends o1 {
        public b(p1 p1Var) {
            super("GROUP", 9, p1Var, 3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v2, types: [m7.o1$a] */
    /* JADX WARN: Type inference failed for: r4v1, types: [m7.o1$c] */
    /* JADX WARN: Type inference failed for: r8v3, types: [m7.o1$d] */
    static {
        o1 o1Var = new o1("DOUBLE", 0, p1.DOUBLE, 1);
        f10717j = o1Var;
        o1 o1Var2 = new o1("FLOAT", 1, p1.FLOAT, 5);
        f10718k = o1Var2;
        p1 p1Var = p1.LONG;
        o1 o1Var3 = new o1("INT64", 2, p1Var, 0);
        f10719l = o1Var3;
        o1 o1Var4 = new o1("UINT64", 3, p1Var, 0);
        f10720m = o1Var4;
        p1 p1Var2 = p1.INT;
        o1 o1Var5 = new o1("INT32", 4, p1Var2, 0);
        f10721n = o1Var5;
        o1 o1Var6 = new o1("FIXED64", 5, p1Var, 1);
        f10722o = o1Var6;
        o1 o1Var7 = new o1("FIXED32", 6, p1Var2, 5);
        f10723p = o1Var7;
        o1 o1Var8 = new o1("BOOL", 7, p1.BOOLEAN, 0);
        f10724q = o1Var8;
        p1 p1Var3 = p1.STRING;
        ?? r10 = new o1() { // from class: m7.o1.a
            {
                p1 p1Var4 = p1.STRING;
            }
        };
        f10725r = r10;
        p1 p1Var4 = p1.MESSAGE;
        b bVar = new b(p1Var4);
        f10726s = bVar;
        ?? r11 = new o1(p1Var4) { // from class: m7.o1.c
        };
        f10727t = r11;
        ?? r12 = new o1(p1.BYTE_STRING) { // from class: m7.o1.d
        };
        f10728u = r12;
        o1 o1Var9 = new o1("UINT32", 12, p1Var2, 0);
        f10729v = o1Var9;
        o1 o1Var10 = new o1("ENUM", 13, p1.ENUM, 0);
        f10730w = o1Var10;
        o1 o1Var11 = new o1("SFIXED32", 14, p1Var2, 5);
        f10731x = o1Var11;
        o1 o1Var12 = new o1("SFIXED64", 15, p1Var, 1);
        f10732y = o1Var12;
        o1 o1Var13 = new o1("SINT32", 16, p1Var2, 0);
        f10733z = o1Var13;
        o1 o1Var14 = new o1("SINT64", 17, p1Var, 0);
        A = o1Var14;
        B = new o1[]{o1Var, o1Var2, o1Var3, o1Var4, o1Var5, o1Var6, o1Var7, o1Var8, r10, bVar, r11, r12, o1Var9, o1Var10, o1Var11, o1Var12, o1Var13, o1Var14};
    }

    public o1(String str, int i10, p1 p1Var, int i11) {
        super(str, i10);
        this.f10734h = p1Var;
        this.f10735i = i11;
    }

    public static o1 valueOf(String str) {
        return (o1) Enum.valueOf(o1.class, str);
    }

    public static o1[] values() {
        return (o1[]) B.clone();
    }
}
