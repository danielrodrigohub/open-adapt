.class public final Lv9/i0$b;
.super Ljava/lang/Object;
.source "AdaptKitPairing.kt"

# interfaces
.implements Lv9/p0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv9/i0;-><init>(Lv9/k0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv9/p0<",
        "Lka/b;",
        "Lka/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv9/i0;


# direct methods
.method public constructor <init>(Lv9/i0;)V
    .locals 0

    iput-object p1, p0, Lv9/i0$b;->a:Lv9/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcelable;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lka/b;

    const-string v2, "result"

    .line 2
    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Lv9/i0$b;->a:Lv9/i0;

    .line 4
    iget-object v2, v2, Lv9/i0;->p:Lha/u;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Lha/u;

    .line 6
    sget-object v4, Lha/w;->h:Lha/w;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 7
    sget-object v4, Lha/y;->h:Lha/y;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 8
    sget-object v4, Lha/x;->h:Lha/x;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 9
    invoke-static {v2, v3}, Landroidx/appcompat/widget/p;->g(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 10
    iget-object v2, v1, Lka/b;->h:Lka/c;

    .line 11
    iget v3, v2, Lka/c;->l:I

    const/16 v4, -0x2a

    if-le v3, v4, :cond_6

    .line 12
    iget-object v3, v0, Lv9/i0$b;->a:Lv9/i0;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeviceMetRssiThreshold: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v3, v2}, Lv9/i0;->h(Ljava/lang/String;)V

    .line 14
    iget-object v2, v0, Lv9/i0$b;->a:Lv9/i0;

    .line 15
    iget-object v3, v2, Lv9/i0;->q:Lea/b;

    if-eqz v3, :cond_0

    .line 16
    iget-object v4, v2, Lv9/i0;->r:Lea/b;

    if-nez v4, :cond_6

    :cond_0
    const-string v4, "DEFAULT_KEY"

    if-nez v3, :cond_3

    .line 17
    iget-object v3, v1, Lka/b;->h:Lka/c;

    .line 18
    iget-boolean v7, v3, Lka/c;->n:Z

    if-eqz v7, :cond_3

    .line 19
    new-instance v7, Lha/n;

    .line 20
    iget-object v3, v3, Lka/c;->h:Ljava/lang/String;

    .line 21
    invoke-direct {v7, v3}, Lha/n;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2, v7}, Lv9/i0;->d(Lha/u;)V

    .line 23
    iget-object v2, v0, Lv9/i0$b;->a:Lv9/i0;

    sget-object v3, Lya/a;->a:Lya/a;

    .line 24
    iget-object v7, v2, Lv9/i0;->n:Ljava/lang/String;

    .line 25
    new-instance v15, Lea/b;

    .line 26
    iget-object v1, v1, Lka/b;->h:Lka/c;

    .line 27
    iget-object v9, v1, Lka/c;->h:Ljava/lang/String;

    .line 28
    iget-object v10, v1, Lka/c;->j:Ljava/lang/String;

    .line 29
    iget-object v11, v1, Lka/c;->k:Ljava/lang/String;

    .line 30
    iget-object v12, v1, Lka/c;->i:Ljava/lang/String;

    .line 31
    sget-object v1, Lhc/b;->j:[B

    invoke-static {v1, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lg7/b;->e([B)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x64

    const/4 v1, 0x0

    move-object v8, v15

    move-object v4, v15

    move v15, v1

    .line 32
    invoke-direct/range {v8 .. v15}, Lea/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 33
    invoke-virtual {v3, v7, v4}, Lya/a;->b(Ljava/lang/String;Lea/b;)Lya/b;

    move-result-object v1

    .line 34
    iput-object v1, v2, Lv9/i0;->t:Lya/b;

    .line 35
    iget-object v1, v0, Lv9/i0$b;->a:Lv9/i0;

    .line 36
    iget-object v2, v1, Lv9/i0;->t:Lya/b;

    if-eqz v2, :cond_1

    .line 37
    iget-object v1, v1, Lv9/i0;->o:Lv9/i0$a;

    .line 38
    invoke-interface {v2, v1}, Lya/b;->g(Lv9/p0;)Z

    move-result v1

    if-ne v1, v6, :cond_1

    move v5, v6

    :cond_1
    if-nez v5, :cond_6

    .line 39
    iget-object v1, v0, Lv9/i0$b;->a:Lv9/i0;

    .line 40
    iget-object v2, v1, Lv9/i0;->t:Lya/b;

    if-eqz v2, :cond_2

    .line 41
    iget-object v1, v1, Lv9/i0;->o:Lv9/i0$a;

    .line 42
    invoke-interface {v2, v1}, Lya/b;->B(Lv9/p0;)V

    .line 43
    :cond_2
    iget-object v1, v0, Lv9/i0$b;->a:Lv9/i0;

    .line 44
    iget-object v1, v1, Lv9/i0;->t:Lya/b;

    if-eqz v1, :cond_6

    .line 45
    sget-object v2, Lv9/a;->i:Lv9/a$a;

    .line 46
    sget-object v2, Lv9/a;->l:Lv9/a;

    .line 47
    invoke-interface {v1, v2}, Lya/b;->s(Lv9/a;)V

    goto :goto_0

    .line 48
    :cond_3
    iget-object v3, v2, Lv9/i0;->r:Lea/b;

    if-nez v3, :cond_6

    .line 49
    iget-object v3, v1, Lka/b;->h:Lka/c;

    .line 50
    iget-boolean v7, v3, Lka/c;->m:Z

    if-eqz v7, :cond_6

    .line 51
    new-instance v7, Lha/o;

    .line 52
    iget-object v3, v3, Lka/c;->h:Ljava/lang/String;

    .line 53
    invoke-direct {v7, v3}, Lha/o;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2, v7}, Lv9/i0;->d(Lha/u;)V

    .line 55
    iget-object v2, v0, Lv9/i0$b;->a:Lv9/i0;

    sget-object v3, Lya/a;->a:Lya/a;

    .line 56
    iget-object v7, v2, Lv9/i0;->n:Ljava/lang/String;

    .line 57
    new-instance v15, Lea/b;

    .line 58
    iget-object v1, v1, Lka/b;->h:Lka/c;

    .line 59
    iget-object v9, v1, Lka/c;->h:Ljava/lang/String;

    .line 60
    iget-object v10, v1, Lka/c;->j:Ljava/lang/String;

    .line 61
    iget-object v11, v1, Lka/c;->k:Ljava/lang/String;

    .line 62
    iget-object v12, v1, Lka/c;->i:Ljava/lang/String;

    .line 63
    sget-object v1, Lhc/b;->j:[B

    invoke-static {v1, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lg7/b;->e([B)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x64

    const/4 v1, 0x0

    move-object v8, v15

    move-object v4, v15

    move v15, v1

    .line 64
    invoke-direct/range {v8 .. v15}, Lea/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 65
    invoke-virtual {v3, v7, v4}, Lya/a;->b(Ljava/lang/String;Lea/b;)Lya/b;

    move-result-object v1

    .line 66
    iput-object v1, v2, Lv9/i0;->u:Lya/b;

    .line 67
    iget-object v1, v0, Lv9/i0$b;->a:Lv9/i0;

    .line 68
    iget-object v2, v1, Lv9/i0;->u:Lya/b;

    if-eqz v2, :cond_4

    .line 69
    iget-object v1, v1, Lv9/i0;->o:Lv9/i0$a;

    .line 70
    invoke-interface {v2, v1}, Lya/b;->g(Lv9/p0;)Z

    move-result v1

    if-ne v1, v6, :cond_4

    move v5, v6

    :cond_4
    if-nez v5, :cond_6

    .line 71
    iget-object v1, v0, Lv9/i0$b;->a:Lv9/i0;

    .line 72
    iget-object v2, v1, Lv9/i0;->u:Lya/b;

    if-eqz v2, :cond_5

    .line 73
    iget-object v1, v1, Lv9/i0;->o:Lv9/i0$a;

    .line 74
    invoke-interface {v2, v1}, Lya/b;->B(Lv9/p0;)V

    .line 75
    :cond_5
    iget-object v1, v0, Lv9/i0$b;->a:Lv9/i0;

    .line 76
    iget-object v1, v1, Lv9/i0;->u:Lya/b;

    if-eqz v1, :cond_6

    .line 77
    sget-object v2, Lv9/a;->i:Lv9/a$a;

    .line 78
    sget-object v2, Lv9/a;->l:Lv9/a;

    .line 79
    invoke-interface {v1, v2}, Lya/b;->s(Lv9/a;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final b(Lv9/m;)V
    .locals 4

    .line 1
    check-cast p1, Lka/a;

    const-string v0, "error"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lv9/i0$b;->a:Lv9/i0;

    sget-object v1, Lha/v;->h:Lha/v;

    invoke-static {v0, v1}, Lv9/i0;->a(Lv9/i0;Lha/u;)V

    .line 4
    iget-object v0, p0, Lv9/i0$b;->a:Lv9/i0;

    .line 5
    iget-object v0, v0, Lv9/i0;->a:Lv9/k0;

    .line 6
    new-instance v1, Lha/s;

    .line 7
    iget-object v2, p0, Lv9/i0$b;->a:Lv9/i0;

    .line 8
    iget-object v2, v2, Lv9/i0;->b:Lv9/a;

    .line 9
    invoke-virtual {p1}, Lka/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-direct {v1, v2, v3, p1}, Lha/s;-><init>(Lv9/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {v0, v1}, Lv9/k0;->d(Lha/a;)V

    return-void
.end method
