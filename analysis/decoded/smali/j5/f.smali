.class public final synthetic Lj5/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic i:Lj5/f;

.field public static final synthetic j:Lj5/f;

.field public static final synthetic k:Lj5/f;


# instance fields
.field public final synthetic h:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lj5/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj5/f;-><init>(I)V

    sput-object v0, Lj5/f;->i:Lj5/f;

    new-instance v0, Lj5/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj5/f;-><init>(I)V

    sput-object v0, Lj5/f;->j:Lj5/f;

    new-instance v0, Lj5/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lj5/f;-><init>(I)V

    sput-object v0, Lj5/f;->k:Lj5/f;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lj5/f;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lj5/f;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lj5/i$h;

    check-cast p2, Lj5/i$h;

    invoke-static {p1, p2}, Lj5/i$h;->j(Lj5/i$h;Lj5/i$h;)I

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    sget-object p1, Lj5/i;->i:Lu6/o0;

    const/4 p1, 0x0

    return p1

    :goto_0
    check-cast p1, Lcom/google/android/exoplayer2/ui/e$c;

    check-cast p2, Lcom/google/android/exoplayer2/ui/e$c;

    .line 1
    iget v0, p2, Lcom/google/android/exoplayer2/ui/e$c;->a:I

    iget v1, p1, Lcom/google/android/exoplayer2/ui/e$c;->a:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/ui/e$c;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/ui/e$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object p2, p2, Lcom/google/android/exoplayer2/ui/e$c;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/e$c;->d:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
