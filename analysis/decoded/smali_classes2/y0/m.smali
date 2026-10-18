.class public final synthetic Ly0/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln3/h$a;
.implements Ls3/l;
.implements Le4/r$f;


# static fields
.field public static final synthetic c:Ly0/m;

.field public static final synthetic d:Ly0/m;

.field public static final synthetic e:Ly0/m;

.field public static final synthetic f:Ly0/m;

.field public static final synthetic g:Ly0/m;

.field public static final synthetic h:Ly0/m;

.field public static final synthetic i:Ly0/m;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ly0/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly0/m;-><init>(I)V

    sput-object v0, Ly0/m;->c:Ly0/m;

    new-instance v0, Ly0/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ly0/m;-><init>(I)V

    sput-object v0, Ly0/m;->d:Ly0/m;

    new-instance v0, Ly0/m;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ly0/m;-><init>(I)V

    sput-object v0, Ly0/m;->e:Ly0/m;

    new-instance v0, Ly0/m;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ly0/m;-><init>(I)V

    sput-object v0, Ly0/m;->f:Ly0/m;

    new-instance v0, Ly0/m;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ly0/m;-><init>(I)V

    sput-object v0, Ly0/m;->g:Ly0/m;

    new-instance v0, Ly0/m;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ly0/m;-><init>(I)V

    sput-object v0, Ly0/m;->h:Ly0/m;

    new-instance v0, Ly0/m;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ly0/m;-><init>(I)V

    sput-object v0, Ly0/m;->i:Ly0/m;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ly0/m;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Le4/n;

    sget-object v0, Le4/r;->a:Ljava/util/regex/Pattern;

    .line 1
    iget-object p1, p1, Le4/n;->a:Ljava/lang/String;

    const-string v0, "OMX.google"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "c2.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Lm5/g0;->a:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final c()[Ls3/h;
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls3/h;

    .line 1
    new-instance v1, La4/e;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3, v3, v2}, La4/e;-><init>(ILm5/d0;La4/l;Ljava/util/List;)V

    aput-object v1, v0, v4

    return-object v0
.end method

.method public final d(Landroid/os/Bundle;)Ln3/h;
    .locals 5

    iget v0, p0, Ly0/m;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    sget-object v0, Lj5/i$c;->X:Lj5/i$c;

    .line 1
    new-instance v0, Lj5/i$c$a;

    invoke-direct {v0, p1}, Lj5/i$c$a;-><init>(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lj5/i$c;

    invoke-direct {p1, v0}, Lj5/i$c;-><init>(Lj5/i$c$a;)V

    return-object p1

    .line 3
    :pswitch_2
    sget-object v0, Lz4/c;->i:Lz4/c;

    const/16 v0, 0x24

    .line 4
    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    sget-object p1, Lu6/v;->i:Lu6/v$b;

    .line 7
    sget-object p1, Lu6/p0;->l:Lu6/p0;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lz4/a;->z:Ly0/e;

    invoke-static {v0, p1}, Lm5/b;->a(Ln3/h$a;Ljava/util/List;)Lu6/v;

    move-result-object p1

    .line 9
    :goto_0
    new-instance v0, Lz4/c;

    invoke-direct {v0, p1}, Lz4/c;-><init>(Ljava/util/List;)V

    return-object v0

    .line 10
    :pswitch_3
    new-instance v0, Ln3/k1;

    invoke-direct {v0, p1}, Ln3/k1;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 11
    :goto_1
    new-instance v0, Ln5/b;

    .line 12
    invoke-static {v1}, Ln5/b;->d(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    .line 13
    invoke-static {v3}, Ln5/b;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    .line 14
    invoke-static {v4}, Ln5/b;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x3

    .line 15
    invoke-static {v4}, Ln5/b;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, v1, v3, v2, p1}, Ln5/b;-><init>(III[B)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
