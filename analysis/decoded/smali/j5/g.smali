.class public final synthetic Lj5/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic i:Lj5/g;

.field public static final synthetic j:Lj5/g;

.field public static final synthetic k:Lj5/g;

.field public static final synthetic l:Lj5/g;


# instance fields
.field public final synthetic h:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lj5/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj5/g;-><init>(I)V

    sput-object v0, Lj5/g;->i:Lj5/g;

    new-instance v0, Lj5/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj5/g;-><init>(I)V

    sput-object v0, Lj5/g;->j:Lj5/g;

    new-instance v0, Lj5/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lj5/g;-><init>(I)V

    sput-object v0, Lj5/g;->k:Lj5/g;

    new-instance v0, Lj5/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lj5/g;-><init>(I)V

    sput-object v0, Lj5/g;->l:Lj5/g;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lj5/g;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lj5/g;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p1, Lcom/google/android/exoplayer2/ui/e$c;

    check-cast p2, Lcom/google/android/exoplayer2/ui/e$c;

    .line 1
    iget v0, p2, Lcom/google/android/exoplayer2/ui/e$c;->b:I

    iget v1, p1, Lcom/google/android/exoplayer2/ui/e$c;->b:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/e$c;->c:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/exoplayer2/ui/e$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e$c;->d:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/exoplayer2/ui/e$c;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    .line 4
    :pswitch_1
    check-cast p1, Lj5/i$h;

    check-cast p2, Lj5/i$h;

    invoke-static {p1, p2}, Lj5/i$h;->j(Lj5/i$h;Lj5/i$h;)I

    move-result p1

    return p1

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    sget-object v0, Lj5/i;->i:Lu6/o0;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int v1, p1, p2

    :cond_4
    :goto_1
    return v1

    .line 8
    :goto_2
    check-cast p1, Ll5/h0$a;

    check-cast p2, Ll5/h0$a;

    sget-object v0, Ll5/h0;->h:Ls4/a;

    .line 9
    iget p1, p1, Ll5/h0$a;->c:F

    iget p2, p2, Ll5/h0$a;->c:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
