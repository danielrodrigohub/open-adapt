.class public final Lx9/f;
.super Lx9/b;
.source "FirmwareConditionalCheck.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lv9/k;",
        ":",
        "Lv9/t2;",
        ">",
        "Lx9/b<",
        "Lv9/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lw9/a;

.field public final b:Lfb/c;

.field public final c:Lfb/c;

.field public final d:Lea/m;

.field public final e:Lfb/c;

.field public final f:Lv9/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Z

.field public final i:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/p;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lfb/c;",
            "Lfb/c;",
            "Lea/m;",
            "Lfb/c;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "adaptKitIdentifierShoe"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "leftFirmwareVersion"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightFirmwareVersion"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptKitPairedDevices"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requiredFirmwareVersion"

    invoke-static {p5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptKitDeviceRequest"

    invoke-static {p6, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lx9/b;-><init>()V

    .line 2
    iput-object p1, p0, Lx9/f;->a:Lw9/a;

    .line 3
    iput-object p2, p0, Lx9/f;->b:Lfb/c;

    .line 4
    iput-object p3, p0, Lx9/f;->c:Lfb/c;

    .line 5
    iput-object p4, p0, Lx9/f;->d:Lea/m;

    .line 6
    iput-object p5, p0, Lx9/f;->e:Lfb/c;

    .line 7
    iput-object p6, p0, Lx9/f;->f:Lv9/k;

    .line 8
    check-cast p6, Lv9/t2;

    invoke-interface {p6}, Lv9/t2;->a()Lqd/l;

    move-result-object p1

    iput-object p1, p0, Lx9/f;->i:Lqd/l;

    return-void
.end method


# virtual methods
.method public final a()Lw9/a;
    .locals 1

    iget-object v0, p0, Lx9/f;->a:Lw9/a;

    return-object v0
.end method

.method public final b()Lv9/m;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lx9/f;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx9/f;->d:Lea/m;

    .line 2
    iget-object v0, v0, Lea/m;->k:Lea/b;

    .line 3
    iget-object v0, v0, Lea/b;->j:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :goto_0
    iget-boolean v2, p0, Lx9/f;->h:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lx9/f;->d:Lea/m;

    .line 5
    iget-object v1, v1, Lea/m;->l:Lea/b;

    .line 6
    iget-object v1, v1, Lea/b;->j:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string v2, ":"

    .line 7
    invoke-static {v0, v2, v1}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_1
    iget-object v1, p0, Lx9/f;->b:Lfb/c;

    .line 10
    iget-object v2, p0, Lx9/f;->c:Lfb/c;

    .line 11
    invoke-static {v1, v2}, Lhd/b;->c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Lfb/c;

    .line 12
    new-instance v2, Lv9/p;

    .line 13
    iget-object v3, p0, Lx9/f;->a:Lw9/a;

    .line 14
    iget-object v1, v1, Lfb/c;->h:Ljava/lang/String;

    .line 15
    iget-object v4, p0, Lx9/f;->e:Lfb/c;

    .line 16
    iget-object v4, v4, Lfb/c;->h:Ljava/lang/String;

    .line 17
    invoke-direct {v2, v3, v0, v1, v4}, Lv9/p;-><init>(Lw9/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "FirmwareConditionalCheck"

    return-object v0
.end method

.method public final d()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lx9/f;->a:Lw9/a;

    .line 2
    iget-object v0, v0, Lw9/a;->i:Lw9/u1;

    const/4 v1, 0x2

    new-array v2, v1, [Lw9/u1;

    .line 3
    sget-object v3, Lw9/u1;->l:Lw9/u1;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v5, Lw9/u1;->j:Lw9/u1;

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-static {v0, v2}, Landroidx/appcompat/widget/p;->g(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lx9/f;->b:Lfb/c;

    iget-object v2, p0, Lx9/f;->e:Lfb/c;

    invoke-virtual {v0, v2}, Lfb/c;->b(Lfb/c;)I

    move-result v0

    if-gez v0, :cond_0

    .line 5
    iget-object v0, p0, Lx9/f;->f:Lv9/k;

    check-cast v0, Lv9/t2;

    invoke-interface {v0}, Lv9/t2;->a()Lqd/l;

    move-result-object v0

    .line 6
    new-instance v2, Lv9/p;

    .line 7
    iget-object v5, p0, Lx9/f;->a:Lw9/a;

    .line 8
    iget-object v7, p0, Lx9/f;->d:Lea/m;

    .line 9
    iget-object v7, v7, Lea/m;->k:Lea/b;

    .line 10
    iget-object v7, v7, Lea/b;->j:Ljava/lang/String;

    .line 11
    iget-object v8, p0, Lx9/f;->b:Lfb/c;

    .line 12
    iget-object v8, v8, Lfb/c;->h:Ljava/lang/String;

    .line 13
    iget-object v9, p0, Lx9/f;->e:Lfb/c;

    .line 14
    iget-object v9, v9, Lfb/c;->h:Ljava/lang/String;

    .line 15
    invoke-direct {v2, v5, v7, v8, v9}, Lv9/p;-><init>(Lw9/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-interface {v0, v2}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iput-boolean v6, p0, Lx9/f;->g:Z

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v4

    .line 18
    :goto_0
    iget-object v2, p0, Lx9/f;->a:Lw9/a;

    .line 19
    iget-object v2, v2, Lw9/a;->i:Lw9/u1;

    new-array v1, v1, [Lw9/u1;

    aput-object v3, v1, v4

    .line 20
    sget-object v3, Lw9/u1;->k:Lw9/u1;

    aput-object v3, v1, v6

    invoke-static {v2, v1}, Landroidx/appcompat/widget/p;->g(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    iget-object v1, p0, Lx9/f;->c:Lfb/c;

    iget-object v2, p0, Lx9/f;->e:Lfb/c;

    invoke-virtual {v1, v2}, Lfb/c;->b(Lfb/c;)I

    move-result v1

    if-gez v1, :cond_1

    .line 22
    iget-object v0, p0, Lx9/f;->f:Lv9/k;

    check-cast v0, Lv9/t2;

    invoke-interface {v0}, Lv9/t2;->a()Lqd/l;

    move-result-object v0

    .line 23
    new-instance v1, Lv9/p;

    .line 24
    iget-object v2, p0, Lx9/f;->a:Lw9/a;

    .line 25
    iget-object v3, p0, Lx9/f;->d:Lea/m;

    .line 26
    iget-object v3, v3, Lea/m;->l:Lea/b;

    .line 27
    iget-object v3, v3, Lea/b;->j:Ljava/lang/String;

    .line 28
    iget-object v4, p0, Lx9/f;->c:Lfb/c;

    .line 29
    iget-object v4, v4, Lfb/c;->h:Ljava/lang/String;

    .line 30
    iget-object v5, p0, Lx9/f;->e:Lfb/c;

    .line 31
    iget-object v5, v5, Lfb/c;->h:Ljava/lang/String;

    .line 32
    invoke-direct {v1, v2, v3, v4, v5}, Lv9/p;-><init>(Lw9/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-interface {v0, v1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iput-boolean v6, p0, Lx9/f;->h:Z

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    return v6
.end method

.method public final e()Lqd/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/l<",
            "Lv9/p;",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx9/f;->i:Lqd/l;

    return-object v0
.end method
