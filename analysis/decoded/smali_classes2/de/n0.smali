.class public final Lde/n0;
.super Ljava/lang/Object;
.source "-Util.kt"


# static fields
.field public static final a:Lde/c$a;

.field public static final b:[B

.field public static final c:[Ljava/lang/String;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lde/c$a;

    invoke-direct {v0}, Lde/c$a;-><init>()V

    sput-object v0, Lde/n0;->a:Lde/c$a;

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lde/n0;->b:[B

    const-string v0, ""

    const-string v1, "A"

    const-string v2, "B"

    const-string v3, "C"

    .line 3
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/n0;->c:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a([BI[BII)Z
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_1

    add-int v2, v1, p1

    aget-byte v2, p0, v2

    add-int v3, v1, p3

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Li8/b;)V
    .locals 4

    const-string v0, "result"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    instance-of v0, p0, Lcom/nike/adapt/adk/DeviceControllerResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "  "

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    check-cast p0, Lcom/nike/adapt/adk/DeviceControllerResult;

    .line 3
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo7/x;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, " "

    if-eqz v0, :cond_1

    .line 5
    :try_start_2
    check-cast p0, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;

    .line 6
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo7/x;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v0, p0, Lj8/f;

    if-eqz v0, :cond_2

    .line 8
    check-cast p0, Lj8/f;

    .line 9
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo7/x;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    instance-of v0, p0, Lk8/g;

    if-eqz v0, :cond_3

    .line 11
    check-cast p0, Lk8/g;

    .line 12
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-class v2, Lk8/g;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo7/x;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method

.method public static c(III)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const-string p0, "avc1.%02X%02X%02X"

    .line 2
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(IZII[II)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lde/n0;->c:[Ljava/lang/String;

    aget-object p0, v2, p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, v1, p2

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p3, 0x2

    aput-object p0, v1, p3

    if-eqz p1, :cond_0

    const/16 p0, 0x48

    goto :goto_0

    :cond_0
    const/16 p0, 0x4c

    .line 4
    :goto_0
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v1, p1

    const/4 p0, 0x4

    .line 5
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "hvc1.%s%d.%X.%c%d"

    .line 6
    invoke-static {p0, v1}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    array-length p0, p4

    :goto_1
    if-lez p0, :cond_1

    add-int/lit8 p1, p0, -0x1

    .line 8
    aget p1, p4, p1

    if-nez p1, :cond_1

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_2
    if-ge p1, p0, :cond_2

    new-array p3, p2, [Ljava/lang/Object;

    .line 9
    aget p5, p4, p1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, v2

    const-string p5, ".%02X"

    invoke-static {p5, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final e(JJJ)V
    .locals 4

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " offset="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " byteCount="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i([BI)Z
    .locals 5

    .line 1
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    sget-object v3, Lde/n0;->b:[B

    if-ge v0, v1, :cond_2

    add-int v4, p1, v0

    .line 3
    aget-byte v4, p0, v4

    aget-byte v3, v3, v0

    if-eq v4, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static final j(Lmc/c;)Lba/e;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lba/e;

    .line 2
    iget v1, p0, Lmc/c;->h:I

    .line 3
    iget p0, p0, Lmc/c;->i:I

    .line 4
    invoke-static {p0}, Lq/g;->a(I)I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 v2, 0x4

    if-ne p0, v2, :cond_0

    .line 5
    sget-object p0, Lba/e$b;->p:Lba/e$b;

    goto :goto_0

    :cond_0
    new-instance p0, Lj2/a;

    invoke-direct {p0}, Lj2/a;-><init>()V

    throw p0

    .line 6
    :cond_1
    sget-object p0, Lba/e$b;->o:Lba/e$b;

    goto :goto_0

    .line 7
    :cond_2
    sget-object p0, Lba/e$b;->n:Lba/e$b;

    goto :goto_0

    .line 8
    :cond_3
    sget-object p0, Lba/e$b;->m:Lba/e$b;

    goto :goto_0

    .line 9
    :cond_4
    sget-object p0, Lba/e$b;->l:Lba/e$b;

    .line 10
    :goto_0
    invoke-direct {v0, v1, p0}, Lba/e;-><init>(ILba/e$b;)V

    return-object v0
.end method

.method public static final k(Lde/g;I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x499602d2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lde/g;->j()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static final l(I)I
    .locals 2

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static final n(B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 1
    sget-object v1, Landroidx/emoji2/text/b;->h:[C

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    const/4 v3, 0x0

    aput-char v2, v0, v3

    and-int/lit8 p0, p0, 0xf

    .line 2
    aget-char p0, v1, p0

    const/4 v1, 0x1

    aput-char p0, v0, v1

    .line 3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method


# virtual methods
.method public f(Lo/a;)Lo/b;
    .locals 0

    .line 1
    check-cast p1, Landroidx/cardview/widget/CardView$a;

    .line 2
    iget-object p1, p1, Landroidx/cardview/widget/CardView$a;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    check-cast p1, Lo/b;

    return-object p1
.end method

.method public g(Lo/a;)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lde/n0;->f(Lo/a;)Lo/b;

    move-result-object p1

    .line 2
    iget p1, p1, Lo/b;->e:F

    return p1
.end method

.method public h(Lo/a;)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lde/n0;->f(Lo/a;)Lo/b;

    move-result-object p1

    .line 2
    iget p1, p1, Lo/b;->a:F

    return p1
.end method

.method public m(Lo/a;F)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lde/n0;->f(Lo/a;)Lo/b;

    move-result-object v0

    .line 2
    move-object v1, p1

    check-cast v1, Landroidx/cardview/widget/CardView$a;

    .line 3
    iget-object v2, v1, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v2

    .line 4
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView$a;->a()Z

    move-result v3

    .line 5
    iget v4, v0, Lo/b;->e:F

    cmpl-float v4, p2, v4

    if-nez v4, :cond_0

    iget-boolean v4, v0, Lo/b;->f:Z

    if-ne v4, v2, :cond_0

    iget-boolean v4, v0, Lo/b;->g:Z

    if-ne v4, v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iput p2, v0, Lo/b;->e:F

    .line 7
    iput-boolean v2, v0, Lo/b;->f:Z

    .line 8
    iput-boolean v3, v0, Lo/b;->g:Z

    const/4 p2, 0x0

    .line 9
    invoke-virtual {v0, p2}, Lo/b;->c(Landroid/graphics/Rect;)V

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 11
    :goto_0
    iget-object p2, v1, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {p2}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 12
    invoke-virtual {v1, p1, p1, p1, p1}, Landroidx/cardview/widget/CardView$a;->b(IIII)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0, p1}, Lde/n0;->g(Lo/a;)F

    move-result p2

    .line 14
    invoke-virtual {p0, p1}, Lde/n0;->h(Lo/a;)F

    move-result p1

    .line 15
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView$a;->a()Z

    move-result v0

    invoke-static {p2, p1, v0}, Lo/c;->a(FFZ)F

    move-result v0

    float-to-double v2, v0

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 17
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView$a;->a()Z

    move-result v2

    invoke-static {p2, p1, v2}, Lo/c;->b(FFZ)F

    move-result p1

    float-to-double p1, p1

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 19
    invoke-virtual {v1, v0, p1, v0, p1}, Landroidx/cardview/widget/CardView$a;->b(IIII)V

    :goto_1
    return-void
.end method
