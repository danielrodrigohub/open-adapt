.class public final synthetic Ln3/z0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln3/h$a;
.implements Ls3/f$a$a;
.implements Ls3/l;
.implements Lk4/g$a;


# static fields
.field public static final synthetic c:Ln3/z0;

.field public static final synthetic d:Ln3/z0;

.field public static final synthetic e:Ln3/z0;

.field public static final synthetic f:Ln3/z0;

.field public static final synthetic g:Ln3/z0;

.field public static final synthetic h:Ln3/z0;

.field public static final synthetic i:Ln3/z0;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ln3/z0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln3/z0;-><init>(I)V

    sput-object v0, Ln3/z0;->c:Ln3/z0;

    new-instance v0, Ln3/z0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln3/z0;-><init>(I)V

    sput-object v0, Ln3/z0;->d:Ln3/z0;

    new-instance v0, Ln3/z0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ln3/z0;-><init>(I)V

    sput-object v0, Ln3/z0;->e:Ln3/z0;

    new-instance v0, Ln3/z0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ln3/z0;-><init>(I)V

    sput-object v0, Ln3/z0;->f:Ln3/z0;

    new-instance v0, Ln3/z0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ln3/z0;-><init>(I)V

    sput-object v0, Ln3/z0;->g:Ln3/z0;

    new-instance v0, Ln3/z0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ln3/z0;-><init>(I)V

    sput-object v0, Ln3/z0;->h:Ln3/z0;

    new-instance v0, Ln3/z0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ln3/z0;-><init>(I)V

    sput-object v0, Ln3/z0;->i:Ln3/z0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ln3/z0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIIII)Z
    .locals 0

    sget-object p1, Lk4/g;->i:Ln3/z0;

    const/4 p1, 0x0

    return p1
.end method

.method public final b()Ljava/lang/reflect/Constructor;
    .locals 5

    sget-object v0, Ls3/f;->b:[I

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "com.google.android.exoplayer2.ext.flac.FlacLibrary"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "isAvailable"

    .line 3
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    .line 6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ls3/h;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    :cond_0
    return-object v4
.end method

.method public final c()[Ls3/h;
    .locals 3

    iget v0, p0, Ln3/z0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v2, [Ls3/h;

    .line 1
    new-instance v2, Ly3/d;

    .line 2
    invoke-direct {v2, v1}, Ly3/d;-><init>(I)V

    aput-object v2, v0, v1

    return-object v0

    :goto_0
    new-array v0, v2, [Ls3/h;

    .line 3
    new-instance v2, Lc4/c;

    invoke-direct {v2}, Lc4/c;-><init>()V

    aput-object v2, v0, v1

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/os/Bundle;)Ln3/h;
    .locals 5

    iget v0, p0, Ln3/z0;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v0, Ln3/b2;->h:Ln3/b2$a;

    .line 1
    sget-object v0, Ln3/b2$d;->B:Ln3/p;

    .line 2
    invoke-static {v3}, Ln3/b2;->t(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroidx/activity/k;->i(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 3
    invoke-static {v0, v4}, Ln3/b2;->b(Ln3/h$a;Landroid/os/IBinder;)Lu6/v;

    move-result-object v0

    .line 4
    sget-object v4, Ln3/b2$b;->o:Ln3/n;

    .line 5
    invoke-static {v1}, Ln3/b2;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/activity/k;->i(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 6
    invoke-static {v4, v1}, Ln3/b2;->b(Ln3/h$a;Landroid/os/IBinder;)Lu6/v;

    move-result-object v1

    .line 7
    invoke-static {v2}, Ln3/b2;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 8
    new-instance v2, Ln3/b2$c;

    if-nez p1, :cond_1

    .line 9
    move-object p1, v0

    check-cast p1, Lu6/p0;

    .line 10
    iget p1, p1, Lu6/p0;->k:I

    .line 11
    new-array v4, p1, [I

    :goto_0
    if-ge v3, p1, :cond_0

    .line 12
    aput v3, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object p1, v4

    .line 13
    :cond_1
    invoke-direct {v2, v0, v1, p1}, Ln3/b2$c;-><init>(Lu6/v;Lu6/v;[I)V

    return-object v2

    .line 14
    :pswitch_1
    new-instance v0, Ln3/y0$i$a;

    invoke-direct {v0}, Ln3/y0$i$a;-><init>()V

    .line 15
    invoke-static {v3}, Ln3/y0$i;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 16
    iput-object v3, v0, Ln3/y0$i$a;->a:Landroid/net/Uri;

    .line 17
    invoke-static {v1}, Ln3/y0$i;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    iput-object v1, v0, Ln3/y0$i$a;->b:Ljava/lang/String;

    .line 19
    invoke-static {v2}, Ln3/y0$i;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 20
    iput-object p1, v0, Ln3/y0$i$a;->c:Landroid/os/Bundle;

    .line 21
    new-instance p1, Ln3/y0$i;

    invoke-direct {p1, v0}, Ln3/y0$i;-><init>(Ln3/y0$i$a;)V

    return-object p1

    .line 22
    :goto_1
    sget-object v0, Lp4/u0;->k:Lp4/u0;

    const/16 v0, 0x24

    .line 23
    invoke-static {v3, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_2

    .line 25
    new-instance p1, Lp4/u0;

    new-array v0, v3, [Lp4/t0;

    invoke-direct {p1, v0}, Lp4/u0;-><init>([Lp4/t0;)V

    goto :goto_2

    .line 26
    :cond_2
    new-instance v0, Lp4/u0;

    sget-object v1, Lp4/t0;->m:Ly0/h;

    .line 27
    invoke-static {v1, p1}, Lm5/b;->a(Ln3/h$a;Ljava/util/List;)Lu6/v;

    move-result-object p1

    new-array v1, v3, [Lp4/t0;

    .line 28
    invoke-virtual {p1, v1}, Lu6/t;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lp4/t0;

    invoke-direct {v0, p1}, Lp4/u0;-><init>([Lp4/t0;)V

    move-object p1, v0

    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
