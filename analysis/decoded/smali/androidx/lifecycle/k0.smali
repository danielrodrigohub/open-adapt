.class public Landroidx/lifecycle/k0;
.super Ljava/lang/Object;
.source "ViewModelProvider.kt"

# interfaces
.implements Le3/h;
.implements Lg7/q;
.implements Lfe/g;


# static fields
.field public static final h:Landroidx/lifecycle/k0;

.field public static final i:[I

.field public static final j:[J

.field public static final k:[Ljava/lang/Object;

.field public static final l:Landroidx/lifecycle/k0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/k0;

    invoke-direct {v0}, Landroidx/lifecycle/k0;-><init>()V

    sput-object v0, Landroidx/lifecycle/k0;->h:Landroidx/lifecycle/k0;

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 2
    sput-object v1, Landroidx/lifecycle/k0;->i:[I

    new-array v1, v0, [J

    .line 3
    sput-object v1, Landroidx/lifecycle/k0;->j:[J

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    sput-object v0, Landroidx/lifecycle/k0;->k:[Ljava/lang/Object;

    .line 5
    new-instance v0, Landroidx/lifecycle/k0;

    invoke-direct {v0}, Landroidx/lifecycle/k0;-><init>()V

    sput-object v0, Landroidx/lifecycle/k0;->l:Landroidx/lifecycle/k0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e([III)I
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_2

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    aget v2, p0, v1

    if-ge v2, p2, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    if-le v2, p2, :cond_1

    add-int/lit8 v1, v1, -0x1

    move p1, v1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p0, v0

    return p0
.end method

.method public static f([JIJ)I
    .locals 4

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_2

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    aget-wide v2, p0, v1

    cmp-long v2, v2, p2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    move p1, v1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p0, v0

    return p0
.end method

.method public static g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static i(I)I
    .locals 3

    const/4 v0, 0x4

    mul-int/2addr p0, v0

    move v1, v0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    add-int/lit8 v2, v2, -0xc

    if-gt p0, v2, :cond_0

    move p0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    div-int/2addr p0, v0

    return p0
.end method

.method public static j(I)I
    .locals 2

    mul-int/lit8 p0, p0, 0x8

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static l(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lv7/m;Lqd/a;I)V
    .locals 5

    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_0

    const-string p4, ""

    :cond_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    const/4 p5, 0x0

    :cond_1
    and-int/lit8 p7, p7, 0x40

    if-eqz p7, :cond_2

    .line 1
    sget-object p6, Ls9/b0;->h:Ls9/b0;

    :cond_2
    const-string p7, "activity"

    .line 2
    invoke-static {p0, p7}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "url"

    invoke-static {p4, p7}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "onClick"

    invoke-static {p6, p7}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p7, "<a href=\'"

    const-string v0, "\'>"

    const-string v1, "</a>"

    .line 3
    invoke-static {p7, p4, v0, p3, v1}, La0/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 p7, 0x1

    .line 4
    invoke-static {p2, p3, p4, p7}, Lyd/o;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    const-string p3, "fromHtml(privacyBody)"

    invoke-static {p2, p3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const-class p4, Landroid/text/style/URLSpan;

    const/4 p7, 0x0

    invoke-virtual {p3, p7, p2, p4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/URLSpan;

    const-string p4, "urls"

    .line 8
    invoke-static {p2, p4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p4, p2

    :goto_0
    if-ge p7, p4, :cond_4

    aget-object v0, p2, p7

    const-string v1, "span"

    .line 9
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 11
    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 12
    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    .line 13
    new-instance v4, Ls9/a0;

    invoke-direct {v4, p5, p0, p6}, Ls9/a0;-><init>(Lv7/m;Landroid/app/Activity;Lqd/a;)V

    .line 14
    invoke-virtual {p3, v4, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 15
    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/lifecycle/k0;->k(Ljava/util/logging/Level;)I

    move-result p1

    const-string v0, "EventBus"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public b(Le3/i;)V
    .locals 0

    invoke-interface {p1}, Le3/i;->g()V

    return-void
.end method

.method public c(Le3/i;)V
    .locals 0

    return-void
.end method

.method public construct()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

.method public d(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/lifecycle/k0;->k(Ljava/util/logging/Level;)I

    move-result p1

    const-string v0, "\n"

    .line 3
    invoke-static {p2, v0}, Landroidx/fragment/app/r0;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "EventBus"

    invoke-static {p1, p3, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public h(Lm6/k;FF)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public k(Ljava/util/logging/Level;)I
    .locals 1

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result p1

    const/16 v0, 0x320

    if-ge p1, v0, :cond_1

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1

    :cond_1
    const/16 v0, 0x384

    if-ge p1, v0, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_3

    const/4 p1, 0x5

    return p1

    :cond_3
    const/4 p1, 0x6

    return p1
.end method
